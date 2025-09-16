import { logar } from "./config/config.js";
import { selectAll } from "./queries.js";
import promptSync from "prompt-sync";

async function testar(): Promise<void>
{
    const prompt = promptSync();

    console.log("Logando como administrador. . .");
    let db = logar();
    let vendas = await selectAll(db, "vendas", "*");
    let contasreceber = await selectAll(db, "contasreceber", "*");
    
    console.log("Vendas: ");
    console.table(vendas);
    console.log("Contas a receber: ");
    console.table(contasreceber);

    prompt("Pressione ENTER para continuar. . .");
    console.clear();

    console.log("Logando como operador. . .");
    db = logar();
    vendas = await selectAll(db, "vendas", "*");
    contasreceber = await selectAll(db, "contasreceber", "*");

    console.log("Vendas: ");
    console.table(vendas);
    console.log("Contas a receber: ");
    console.table(contasreceber);
    
    prompt("Pressione ENTER para continuar. . .");
    console.clear();

    console.log("Logando como vendedor. . .");
    db = logar();
    let vendasfiltradas = await selectAll(db, "vendasfiltradas", "*");
    let contasfiltradas = await selectAll(db, "contasfiltradas", "*");

    console.log("Vendas filtradas: ");
    console.table(vendasfiltradas);
    console.log("Contas a receber filtradas: ");
    console.table(contasfiltradas);

    prompt("Pressione ENTER para continuar. . .");

    process.exit(0);
}

console.clear();
testar();