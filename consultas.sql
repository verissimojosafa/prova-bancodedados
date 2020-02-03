/**
 * Primeira questão
 * 
 * Resposta: A 
 */

/**
 * Segunda questão
 * 
 * Resposta: A
 */

/**
 * Terceira questão
 * 
 * Resposta: D
 */

/**
 * Quarta questão
 * 
 */
select * from venda where cliente_id  is null;

/**
 * Quinta questão
 * 
 */
select * from produto order by preco desc;

/**
 * Sexta questão
 * 
 */
select * from venda v
inner join cliente c on c.id = v.cliente_id ;

/**
 * Sétima questão
 * 
 * right outer join não funciona no SQLite.
 */
select * from venda v
left join cliente c on c.id = v.cliente_id;

/**
 * Oitava questão
 * 
 */
select * from venda_item_produto vip
inner join venda v on v.id = vip.venda_id
inner join produto p on p.id = vip.produto_id
inner join cliente c on c.id = v.cliente_id;

/**
 * Nona questão
 * 
 */
select categoria, count(*) as produtos from produto p group by categoria;

/**
 * Décima questão
 *
 */
select sum(quantidade) total_produtos, sum(quantidade * preco) as preco_total_produtos from produto;

/**
 * Bônus: 10
 */
select * from cliente where nome like "J%";


/**
 * Bônus: 11
 */
select categoria, avg(preco) media_preco from produto group by categoria;

/**
 * Bônus: 12
 */
select sum(preco * quantidade) 'total de vendas (R$)', sum(quantidade) 'produtos vendidos'  from venda_item_produto;
