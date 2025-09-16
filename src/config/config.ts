import knex from "knex";
import dotenv from "dotenv";
import promptSync from "prompt-sync";

dotenv.config();

export function logar()
{
    const prompt = promptSync();

    let login = prompt("Login: ");
    let senha = prompt("Senha: ");
    
    return conectar(login, senha);
}

export function conectar(login: string, senha: string)
{
    try {
        const conexao = knex({
            client: "mysql2",
            connection: {
                host: process.env.DB_HOST ?? "",
                port: parseInt(process.env.DB_PORT ?? ""),
                user: process.env.DB_USER ?? login,
                password: process.env.DB_PASSWORD ?? senha,
                database: process.env.DB_DATABASE
            },
        });

        console.log("Conexão efetuada com sucesso!");

        return conexao;
    } catch(err) {
        throw new Error(`A conexão com o banco falhou: ${err}`);
    }
}