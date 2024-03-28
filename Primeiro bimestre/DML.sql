Use Tabela;
INSERT INTO clientes (nome, endereco, email, celular, data_nascimento) VALUES
('Roberto andrade', 'Rua A, 123', 'robertoandrade@email.com', '119867343', '1990-05-15'),
('Maria Santos', 'Avenida B, 456', 'maria@email.com', '119860848', '1985-08-20'),
('Carlos Oliveira', 'Rua C, 789', 'carlos@email.com', '119764453', '1982-12-10'),
('Ana Souza', 'Rua D, 321', 'ana@email.com', '11804623', '1978-03-25'),
('Pedro Almeida', 'Avenida E, 654', 'pedro@email.com', '119838016', '1995-07-30'),
('Mariana Lima', 'Rua F, 987', 'mariana@email.com', '11087618', '1998-09-12'),
('Lucas Pereira', 'Avenida G, 147', 'lucas@email.com', '1105927', '1989-11-05'),
('Fernanda Costa', 'Rua H, 258', 'fernanda@email.com', '11207462', '1980-02-18'),
('Gabriel Santos', 'Avenida I, 369', 'gabriel@email.com', '110967825', '1975-06-22'),
('Rafaela Oliveira', 'Rua J, 951', 'rafaela@email.com', '110965483', '1993-04-08');

INSERT INTO produtos (nome, preco, descricao, quantidade_estoque) VALUES
('Camiseta', 29.99, 'Camiseta de algodão branca', 100),
('Calça Jeans', 59.99, 'Calça jeans azul', 50),
('Tênis', 99.99, 'Tênis esportivo preto', 80),
('Bolsa', 39.99, 'Bolsa feminina de couro marrom', 30),
('Boné', 19.99, 'Boné de baseball preto', 120),
('Óculos de Sol', 49.99, 'Óculos de sol aviador', 60),
('Relógio', 79.99, 'Relógio de pulso analógico', 40),
('Mochila', 69.99, 'Mochila escolar preta', 70),
('Chapéu', 29.99, 'Chapéu de palha', 90),
('Sapato Social', 89.99, 'Sapato social masculino', 20);

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