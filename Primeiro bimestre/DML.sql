oUse Tabela;
INSERT INTO clientes (nome, endereco, email, celular, data_nascimento) VALUES
('Roberto andrade', 'Rua a, 123', 'robertoandrade@email.com', '119867343', '1990-05-15'),
('Julia Bolos', 'Avenida B, 456', 'Julia@email.com', '119860848', '1985-08-20'),
('Adolfo hotdog', 'Rua C, 789', 'Adolfo@email.com', '119764453', '1982-12-10'),
('Ana banana', 'Rua D, 321', 'ana@email.com', '11804623', '1978-03-25'),
('Saulo chinelinho', 'Avenida E, 654', 'saulo@email.com', '119838016', '1995-07-30'),
('Mariana amiga da ana', 'Rua F, 987', 'mariana@email.com', '11087618', '1998-09-12'),
('Pedro bololo', 'Avenida G, 147', 'pedro@email.com', '1105927', '1989-11-05'),
('Roberta ferdinanda', 'Rua H, 258', 'roberta@email.com', '11207462', '1980-02-18'),
('Vitor rizzoto', 'Avenida I, 369', 'vitor@email.com', '110967825', '1975-06-22'),
('Rafael', 'Rua J, 951', 'rafael@email.com', '110965483', '1993-04-08');

INSERT INTO produtos (nome, preco, descricao, quantidade_estoque) VALUES
('Camiseta de anime', 29.99, 'Camiseta com estampa de anime', 100),
('Calça cargo', 59.99, 'Calça cargo preta', 50),
('air max plus', 99.99, 'Tenis nike preto', 80),
('mochila fora aventureira', 39.99, 'mochila com tematica da dora', 30),
('Boné da nike', 19.99, 'Boné da nike preto', 120),
('Luva ', 49.99, 'Luva preta', 60),
('Rollex', 79.99, 'relogio de pessoa rica', 40),
('bolsinha', 69.99, 'bolsa para acessorios feminino', 70),
('Terno', 29.99, 'Terno preto', 90),
('Anel', 89.99, 'Anel masculino', 20);

INSERT INTO pedidos (id_cliente, data_compra, valor_total, data_estimada_entrega) VALUES
(1, '2024-03-01', 99.99, '2024-03-08'),
(2, '2024-03-02', 149.97, '2024-03-09'),
(3, '2024-03-03', 79.98, '2024-03-10'),
(4, '2024-03-04', 59.97, '2024-03-11'),
(5, '2024-03-05', 139.96, '2024-03-12');

INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, valor_unitario, valor_total) VALUES
(1, 1, 1, 29.99, 29.99),
(1, 3, 1, 99.99, 99.99),
(2, 2, 2, 59.99, 119.98),
(3, 4, 1, 39.99, 39.99),
(4, 6, 3, 49.99, 149.97);

UPDATE clientes SET celular = '99998888' WHERE id_cliente = 1;
UPDATE produtos SET quantidade_estoque = 95 WHERE id_produto = 1;
UPDATE pedidos SET valor_total = 89.99 WHERE id_pedido = 3;
UPDATE pedidos SET data_estimada_entrega = '2024-03-15' WHERE id_pedido = 5;

DELETE FROM clientes WHERE id_cliente = 7;
DELETE FROM pedidos WHERE id_pedidos = 8;
