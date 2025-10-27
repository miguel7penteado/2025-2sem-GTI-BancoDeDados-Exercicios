
-- 3) TABELA 'pessoas' COMPATÍVEL COM O MODELO SQLAlchemy
--    - cpf: chave primária (String(14))
--    - nome, endereco, foto: TEXT
--    - data_nascimento: DATE

CREATE TABLE IF NOT EXISTS pessoas 
(
  cpf             VARCHAR(14)  NOT NULL,
  nome            TEXT         NOT NULL,
  endereco        TEXT         NOT NULL,
  data_nascimento DATE         NOT NULL,
  foto            TEXT         NULL,
  PRIMARY KEY (cpf)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- 4) (OPCIONAL) ÍNDICES PARA BUSCA
-- Seu endpoint usa LIKE/ILIKE em nome e cpf; cpf já é PK.
-- Para acelerar buscas por nome com LIKE, crie um índice por prefixo.
-- OBS: índices em TEXT precisam de comprimento; 128 costuma ser um bom compromisso.

CREATE INDEX idx_pessoas_nome_prefix ON pessoas (nome(128));