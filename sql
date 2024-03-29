CREATE DATABASE ecommerce_vendas;

use ecommerce_vendas;

CREATE TABLE cliente (
  id INT auto_increment PRIMARY KEY,
  nome varchar (255),
  endereco varchar (255),
  email varchar (255),
  celular varchar (20),
  data_nasc date
  );


CREATE TABLE produto (
  id INT auto_increment PRIMARY KEY,
  nome varchar (255),
  preco INT, 
  descricao varchar (255), 
  qntd_estoque INT
  );
  
  CREATE TABLE pedido (
    num_pedidos INT auto_increment PRIMARY KEY,
    id INT, 
    data_compra date, 
    valor decimal(10, 2),
    data_entrega date,
    );
    
    CREATE TABLE itens (
      id INT auto_increment PRIMARY KEY,
      pedidos INT,
      produtos INT,
      qntd INT,
      valor_uni decimal(10, 2),
      valor_total decimal (10, 2)
      );