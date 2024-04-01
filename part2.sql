INSERT INTO clientes (nome, endereco, email, celular, data_nasc) VALUES
('Julia Maciel', 'Rua X, 123', 'juliamaciel@gmail.com', '(11) 96328-1863', '2008-04-29'),
('Nome Sobrenome', 'Rua Y, 456', 'nomesobrenome@gmail.com', '(11) 95671-2345', '1986-02-09'),
('Nome Sobrenome', 'Rua Y, 456', 'nomesobrenome@gmail.com', '(11) 95671-2345', '1986-06-09'),
('Renan Cavalcante', 'Rua F, 906', 'ranancavalcante@gmail.com', '(11) 91743-2361', '2007-07-07'),
('Robert Tulio', 'Rua A, 746', 'roberttulio@gmail.com', '(11) 98967-4888', '1967-10-21'),
('Cassandra Pereira', 'Rua D, 897', 'cassandrapereira@gmail.com', '(11) 96328-1863', '2008-04-29'),
('Doris Vieira', 'Rua H, 956', 'dorisvieira@gmail.com', '(11) 95671-2345', '1986-02-09'),
('Ferdinando Touro', 'Rua R, 556', 'ferdinando.touro@gmail.com', '(11) 95671-2345', '1986-06-09'),
('Leonor Jones', 'Rua F, 906', 'leonor.jones@gmail.com', '(11) 91743-2361', '2007-07-07'),
('Melissa Almeida', 'Rua V, 026', 'melissaalmeida@gmail.com', '(11) 98967-4888', '1967-10-21');

INSERT INTO produtos (nome, preco, descricao, qntd_estoque) VALUES
('Bracelte', 329.99, 'Bracelete rigido ', 53),
('Anel', 249.99, 'Anel solitária', 91),
('Colar', 339.90, 'Colar clássico', 64),
('Pingentes', 150.90, 'Pingente prata', 13),
('Brinco', 200.99, 'Brinco gota brilhante', 40),
('Bolsa', 550.00, 'Bolsa Feminina', 87),
('Tiara', 149.99, 'Tiara classic ', 42),
('Presilha', 59.90, 'Presilha de cabelo', 71),
('Pop it', 10.00, 'Pop it pra criança', 663),
('Porta Joias', 700.00, 'Porta joias para organização', 90);

INSERT INTO pedidos (ID_cliente, data_compra, valor_total, data_entrega) VALUES
(25, '2024-09-22', 329.99, '2024-10-22'),
(15, '2024-04-25', 249.99, '2024-05-25'),
(05, '2024-08-12', 339.90, '2024-09-12'),
(55, '2024-03-03', 150.90, '2024-04-03'),
(35, '2024-12-14', 200.99, '2025-01-14'),
(45, '2024-11-20', 550.00, '2024-12-20'),
(95, '2024-07-04', 149.99, '2024-08-04'),
(85, '2024-03-17', 59.90, '2024-04-17'),
(75, '2024-07-20', 10.00, '2024-08-20'),
(65, '2024-04-07', 700.00, '2024-05-07');

INSERT INTO Itens_pedido (ID_pedido, ID_produto, qntd, valor_uni, valor_total) VALUES
(1111, 12, 53, 329.99, 329.99),
(2222, 34, 91, 249.99, 249.99),
(3333, 56, 64, 339.90, 339.90),
(4444, 78, 13, 150.90, 150.90),
(5555, 90, 40, 200.99, 200.99),
(6666, 11, 87, 550.00, 550.00),
(7777, 12, 42, 149.90, 149.90),
(8888, 13, 71, 59.90, 59.90),
(9999, 14, 663, 10.00, 10.00),
(1000, 15, 90, 700.00, 700.00);

-- Atualizar registros na tabela Clientes (exemplo: atualizar o email do cliente com ID_cliente = 10)
UPDATE clientes
SET email = 'julia.maciel@gmail.com'
WHERE ID_cliente = 25;

-- Atualizar registros na tabela Produtos (exemplo: atualizar o preço do produto com ID_produto = 5)
UPDATE produtos
SET preco = 329.99
WHERE ID_produto = 53;

-- Atualizar registros na tabela Pedidos (exemplo: atualizar a data estimada de entrega do pedido com ID_pedido = 2)
UPDATE pedidos
SET data_entrega = '2024-10-22'
WHERE ID_pedido = 1111;

-- Excluir registros na tabela Itens_pedido (exemplo: excluir todos os itens do pedido com ID_pedido = 1)
DELETE FROM Itens_pedido
WHERE ID_pedido = 2222;

-- Excluir registros na tabela Pedidos (exemplo: excluir o pedido com ID_pedido = 5)
DELETE FROM pedidos
WHERE ID_pedido = 3333;