# Turma 2025 Dsiciplina de Banco De Dados - Exercícios de Laboratório

## Primeira coisa a se fazer é informar o endereço do proxy do laboratório 11 ao GIT

Digite o seguinte comando no prompt de comando:

##### Comando 1
```cmd
git config --global --unset http.proxy ^^
git config --global http.proxy http://192.168.0.1:8080
```
##### Comando 2
```cmd
git config --global --unset https.proxy ^^
git config --global https.proxy http://192.168.0.1:8080
```

## Como baixar meu repositório na minha máquina:

Abra o terminal na pasta onde você quer fazer o download dos arquivos ( a pasta repositório).

Agora você está pronto para baixar ( fazer Download de ) um repositório (pasta de arquivos) para poder editar os arquivos na sua máquina:

```cmd
git clone   http:s//meu_repositório.git
```

Pronto, agora você pode editar o comando na pasta que você fez o download.

Após terminar, devolva as alterações para o site:

## Como selecionar todos os arquivos para empacotamento e UPLOAD ?:

```cmd
git Add -A .
```

## Como etiquetar meu pacote de envio para UPLOAD ?:

```cmd
git commit -m " Uma mesagem sobre atualização deste pacote de arquivos"
```

## Como fazer o UPLOAD ?:

```cmd
git push
```


[Aula_01](./Aula_01/)

[Aula_02](./Aula_01/)

[Aula_03](./Aula_03/)
