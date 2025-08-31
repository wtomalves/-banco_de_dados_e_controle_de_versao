-- Criando as tabelasProdutos e Pedidos

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

-- Insere regstros na tabela Pedidos
INSERT INTO pedidos (id_produto, quantidade, data_pedido) VALUES (1, 2, '2025-08-30');
INSERT INTO pedidos (id_produto, quantidade, data_pedido) VALUES (2, 5, '2025-08-29');
INSERT INTO pedidos (id_produto, quantidade, data_pedido) VALUES (3, 1, '2025-08-28');


-- Utilizando o comando Update para atualizar os itens da tabela Produtos e Pedidos
UPDATE produtos SET preco = 6.00 WHERE id_produto = 1;
UPDATE pedidos SET quantidade = 3 WHERE id_pedido = 1;


