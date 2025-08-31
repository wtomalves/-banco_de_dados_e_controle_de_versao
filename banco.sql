-- Criando as tabelas Produtos e Pedidos

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_produto INT,
    quantidade INT NOT NULL,
    data_pedido DATE NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- Insere registros na tabela Produtos
INSERT INTO produtos (nome, preco) VALUES ('Café Expresso', 5.00);
INSERT INTO produtos (nome, preco) VALUES ('Pão de Queijo', 3.50);
INSERT INTO produtos (nome, preco) VALUES ('Bolo Caseiro', 12.00);

-- Insere registros na tabela Pedidos
INSERT INTO pedidos (id_produto, quantidade, data_pedido) VALUES (1, 2, '2025-08-30');
INSERT INTO pedidos (id_produto, quantidade, data_pedido) VALUES (2, 5, '2025-08-29');
INSERT INTO pedidos (id_produto, quantidade, data_pedido) VALUES (3, 1, '2025-08-28');


-- Utilizando o comando Update para atualizar os itens da tabela Produtos e Pedidos
UPDATE produtos SET preco = 6.00 WHERE id_produto = 1;
UPDATE pedidos SET quantidade = 3 WHERE id_pedido = 1;


-- Removendo um pedido com o uso do comando DELETE
DELETE FROM pedidos WHERE id_pedido = 3;
DELETE FROM produtos WHERE id_produto = 2;

-- Exemplo do uso do coamndo SELECT e JOIN, para mostrar nome do produto junto com dos pedidos e calcula valor total do pedido
SELECT * FROM produtos;

SELECT p.id_pedido, pr.nome, p.quantidade, p.data_pedido
FROM pedidos p
JOIN produtos pr ON p.id_produto = pr.id_produto;

SELECT p.id_pedido, pr.nome, (p.quantidade * pr.preco) AS valor_total
FROM pedidos p
JOIN produtos pr ON p.id_produto = pr.id_produto;
