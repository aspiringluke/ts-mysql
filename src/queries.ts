import type { Knex } from "knex";

export async function selectAll(db: Knex<any, unknown[]>, tabela: string, coluna: string)
{
    const result = db(tabela).select(coluna);
    
    return result;
}