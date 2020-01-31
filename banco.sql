create table produto (
	id integer not null PRIMARY key AUTOINCREMENT,
	nome varchar(255),
	categoria varchar(255),
	preco float(5,2),
	quantidade integer
);

create table cliente (
	id integer not null PRIMARY key AUTOINCREMENT,
	nome varchar(255)
);

create table venda (
	id integer not null PRIMARY KEY AUTOINCREMENT,
	nf varchar(255),
	data date,
	cliente_id integer,	
	FOREIGN KEY(cliente_id) REFERENCES cliente(id)
);

create table venda_item_produto (
	id integer not null PRIMARY key AUTOINCREMENT,
	venda_id integer,
	produto_id integer,
	preco float(5,2),
	quantidade integer,
	FOREIGN key(venda_id) REFERENCES venda(id),
	FOREIGN key(produto_id) REFERENCES produto(id)
);

insert into produto (nome, categoria, preco, quantidade) values
("Caneta", "N1", 1.50, 500),
("Borracha", "N1", 0.50, 500),
("Caderno", "N2", 20.0, 100),
("Mochila", "N2", 120.0, 40);

insert into cliente (nome) values
("João"),
("José"),
("Maria");

insert into venda (nf, data, cliente_id) values
("002334", "2018-10-20", 1),
("333214", "2018-11-01", 1),
("923231", "2018-11-01", 2),
("233324", "2019-11-01", 3),
("363345", "2018-11-01", 3),
("853146", "2018-11-02", null);

insert into venda_item_produto (venda_id, produto_id, preco, quantidade) values
(1, 1, 1.50, 3),
(1, 2, 0.50, 1),
(2, 1, 1.50, 1),
(3, 3, 18.0, 1),
(3, 1, 1.20, 3),
(4, 4, 110.0 ,1),
(5, 3, 20.0, 1),
(5, 4, 120.0, 1),
(5, 1, 1.50, 8),
(6, 4, 120.0, 1);


