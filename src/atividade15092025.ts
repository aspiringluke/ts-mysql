import { logar } from "./config/config.js";
import { selectAll } from "./queries.js";

async function testar(): Promise<void>
{
    console.log("Logando como administrador. . .");
    let db = logar();
    let vendas = await selectAll(db, "vendas", "*");
    let contasreceber = await selectAll(db, "contasreceber", "*");
    
    console.log("Vendas: ", vendas);
    console.log("Contas a receber: ", contasreceber);



    console.log("Logando como operador. . .");
    db = logar();
    vendas = await selectAll(db, "vendas", "*");
    contasreceber = await selectAll(db, "contasreceber", "*");

    console.log("Vendas: ", vendas);
    console.log("Contas a receber: ", contasreceber);
    


    console.log("Logando como vendedor. . .");
    db = logar();
    let vendasfiltradas = await selectAll(db, "vendasfiltradas", "*");
    let contasfiltradas = await selectAll(db, "contasfiltradas", "*");

    console.log("Vendas filtradas: ", vendasfiltradas);
    console.log("Contas a receber filtradas: ", contasfiltradas);

    process.exit(0);
}

console.clear();
testar();