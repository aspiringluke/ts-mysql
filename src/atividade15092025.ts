import { conectar } from "./config/data.js";
import promptSync from "prompt-sync";

const prompt = promptSync();

function logar()
{
    let login = prompt("Login: ");
    let senha = prompt("Senha: ");
    
    return conectar(login, senha);
}

const db = logar();