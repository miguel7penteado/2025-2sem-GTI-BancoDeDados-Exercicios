# Projeto Final - Banco de dados:


## Passo 1- Cadastre-se no Lovable [https://lovable.dev/](https://lovable.dev/)

## Passo 2- Entre no seu GITHUB [https://github.com/](https://github.com/)

## Passo 3 - Conecte o lovable no github


## Passo 4 - Passe o prompt a seguir para o lovable

```
Criar um microSaaS com menus funcionais para efetuar um cadastro de pessoas com CRUD conectado ao backend Flask/MySQL.
O front-end será gerado em Next.js ou Vite + React + TypeScript, utilizando componentes modernos, layout responsivo e consumo da API REST fornecida.
O projeto agora limita-se apenas a uma interface gráfica web para interagir com o seguinte backend:

from flask import Flask, request, jsonify
from flask_cors import CORS
from sqlalchemy import create_engine, Column, String, Date, Text
from sqlalchemy.orm import sessionmaker, declarative_base
from datetime import date

# ------------------------------
# Flask + CORS
# ------------------------------
app = Flask(__name__)
CORS(app)  # em produção, restrinja as origens

# ------------------------------
# Banco de Dados MySQL (localhost)
# ------------------------------
# Parâmetros do projeto:
#   SGBD: MySQL 8
#   Host: localhost
#   Usuário: pessoas_user
#   DB/Schema: pessoasdb
#   Tabela: pessoas
DATABASE_URL = "mysql+pymysql://pessoas_user:MinhaSenhaForte@localhost:3306/pessoasdb"

engine = create_engine(
    DATABASE_URL,
    pool_pre_ping=True,        # evita "MySQL server has gone away"
    future=True
)
SessionLocal = sessionmaker(bind=engine, autoflush=False, autocommit=False, future=True)
Base = declarative_base()

# ------------------------------
# Modelo Pessoa
# ------------------------------
class Pessoa(Base):
    __tablename__ = "pessoas"
    cpf = Column(String(14), primary_key=True)
    nome = Column(Text, nullable=False)
    endereco = Column(Text, nullable=False)
    data_nascimento = Column(Date, nullable=False)
    foto = Column(Text)  # Base64 ou URL

# Cria a tabela se não existir (deve existir conforme seu script SQL)
Base.metadata.create_all(engine)

# ------------------------------
# Helpers
# ------------------------------
def to_dict(p: Pessoa):
    return {
        "cpf": p.cpf,
        "nome": p.nome,
        "endereco": p.endereco,
        "data_nascimento": p.data_nascimento.isoformat(),
        "foto": p.foto
    }

def parse_date_iso(value):
    if isinstance(value, date):
        return value
    return date.fromisoformat(value)  # espera "YYYY-MM-DD"

# ------------------------------
# CRUD
# ------------------------------

# Listar todas as pessoas ou pesquisar por termo (?q=)
@app.route('/pessoas', methods=['GET'])
def listar():
    termo = (request.args.get('q') or '').strip()
    with SessionLocal() as session:
        query = session.query(Pessoa)
        if termo:
            like = f"%{termo}%"
            # MySQL é case-insensitive com collation *_ci; ilike é traduzido para LIKE
            query = query.filter((Pessoa.nome.ilike(like)) | (Pessoa.cpf.ilike(like)))
        pessoas = query.order_by(Pessoa.nome.asc()).all()
        return jsonify([to_dict(p) for p in pessoas])

# Inserir nova pessoa
@app.route('/pessoas', methods=['POST'])
def inserir():
    dados = request.get_json(force=True)
    required = ['cpf', 'nome', 'endereco', 'data_nascimento']
    faltantes = [k for k in required if not dados.get(k)]
    if faltantes:
        return jsonify({"error": "Campos obrigatórios faltando", "fields": faltantes}), 422

    try:
        dn = parse_date_iso(dados['data_nascimento'])
    except Exception:
        return jsonify({"error": "data_nascimento inválida. Use YYYY-MM-DD"}), 422

    with SessionLocal() as session:
        if session.query(Pessoa).filter_by(cpf=dados['cpf']).first():
            return jsonify({"error": "CPF já cadastrado"}), 409
        pessoa = Pessoa(
            cpf=dados['cpf'],
            nome=dados['nome'],
            endereco=dados['endereco'],
            data_nascimento=dn,
            foto=dados.get('foto')
        )
        session.add(pessoa)
        session.commit()
        session.refresh(pessoa)
        return jsonify(to_dict(pessoa)), 201

# Alterar pessoa (PUT)
@app.route('/pessoas/<cpf>', methods=['PUT'])
def alterar(cpf):
    dados = request.get_json(force=True)
    with SessionLocal() as session:
        pessoa = session.query(Pessoa).filter_by(cpf=cpf).first()
        if not pessoa:
            return jsonify({"error": "CPF não encontrado"}), 404

        if 'nome' in dados and dados['nome'] is not None:
            pessoa.nome = dados['nome']
        if 'endereco' in dados and dados['endereco'] is not None:
            pessoa.endereco = dados['endereco']
        if 'data_nascimento' in dados and dados['data_nascimento'] is not None:
            try:
                pessoa.data_nascimento = parse_date_iso(dados['data_nascimento'])
            except Exception:
                return jsonify({"error": "data_nascimento inválida. Use YYYY-MM-DD"}), 422
        if 'foto' in dados:
            pessoa.foto = dados['foto']

        session.commit()
        session.refresh(pessoa)
        return jsonify(to_dict(pessoa)), 200

# Remover pessoa
@app.route('/pessoas/<cpf>', methods=['DELETE'])
def remover(cpf):
    with SessionLocal() as session:
        pessoa = session.query(Pessoa).filter_by(cpf=cpf).first()
        if not pessoa:
            return jsonify({"error": "CPF não encontrado"}), 404
        session.delete(pessoa)
        session.commit()
        return '', 204

# Buscar pessoa por CPF
@app.route('/pessoas/<cpf>', methods=['GET'])
def buscar(cpf):
    with SessionLocal() as session:
        pessoa = session.query(Pessoa).filter_by(cpf=cpf).first()
        if not pessoa:
            return jsonify({"error": "CPF não encontrado"}), 404
        return jsonify(to_dict(pessoa))

# ------------------------------
# Inicia o servidor
# ------------------------------
if __name__ == '__main__':
    app.run(debug=True, port=5000)
```

## Passo 5 - Instale o pacote Node na sua máquina: [https://nodejs.org/dist/v22.21.0/node-v22.21.0-x64.msi](https://nodejs.org/dist/v22.21.0/node-v22.21.0-x64.msi)

## Passo 6 - Inicie seu servidor Python (do projeto anterior)

## Passo 7 - Baixe seu projeto gerado pelo lovable na sua máquina.

## Passo 8 - Ajuste seu projeto node para se conectar no seu servidor (BackEnd)

## Passo 9 - Inicialize seu cliente lovable usando o comando "node" (as instruções ficam no seu github, no projeto gerado pelo lovable)

## Pronto, você já tem um projeto profissional para fazer deploy no netlify !




