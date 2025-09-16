import knex from "knex";
import dotenv from "dotenv";

dotenv.config();

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
        console.log("A conexão com o banco falhou: ", err);
    }
}