# 📝 Atividade Avaliada - 15/09/2025

## 💿 Instalação e uso

1. Clone este repositório em sua máquina:
```bash
git clone https://github.com/aspiringluke/ts-mysql.git
```
2. Abra o MySQL e importe o arquivo [export](./sql/export.sql) para criar o banco de dados. Atente-se para o nome do banco. Ele precisa ser **atividade15092025**.
3. Instale as dependências através do NPM. Você precisa ter o Node instalado em sua máquina:
```bash
cd ts-mysql
npm install
```
4. Crie um arquivo **.env** no diretório raiz e insira as variáveis:
```js
DB_HOST = localhost
DB_DATABASE = atividade15092025
```
5. Execute o programa com o script npm start. O script pode ser verificado no [package.json](./package.json)
```bash
npm start
```

## 🏛 Breve explicação da estrutura

### 👩‍💻 Tecnologias utilizadas:
- TypeScript
    - NodeJS e NPM
- MySQL
- Git
- GitHub

### 🛢 O Banco
Esta atividade contém um código de autenticação e acesso simples a um banco de dados MySQL.
O código para a criação do banco está presente na pasta [sql](./sql). O arquivo [export](./sql/export.sql)
deve ser importado através do MySQL para restaurar o banco em sua máquina, enquanto o arquivo
[criarBanco](./sql/criarBanco.sql) contém o mesmo código, porém mais legível, e deve ser executado
manualmente.

Foram criados três usuários (chefe como Administrador, gerente como Operador, e suzana
como Vendedora) no próprio SGBD, e é através deles que a autenticação é realizada. Devido a isto,
a tabela usuarios foi totalmente removida, visto que não era mais necessária. Foram criadas duas
views para os vendedores, a fim de aplicar a técnica de RLS.

### 📺 O Programa
Já no programa escrito em TypeScript, o arquivo principal é [atividade15092025](./src/atividade15092025.ts),
que contém o código principal. Ele loga com cada um no banco e faz um simples select nas duas tabelas.
Não foram implementadas outras queries (insert, update, etc) e não foi implementado um tratamento de erros
adequado (o programa crasha se o acesso for negado, por exemplo) devido ao tempo.

As funções das queries são declaradas no arquivo [queries](./src/queries.ts) e a conexão com o banco é feita
no arquivo [config](./src/config/config.ts).