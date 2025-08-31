# Projeto Banco de Dados - Produtos e Pedidos

Este projeto faz parte da Atividade 3 da disciplina de Desenvolvimento Web e Bancos de Dados (UFMS Digital).  
O objetivo é modelar, implementar e manipular dados em um banco relacional, além de aplicar versionamento com Git e GitHub.

## Estrutura do Banco de Dados

O sistema é composto por duas tabelas relacionadas:

- **produtos**
  - `id_produto` (INT, PK, auto incremento)
  - `nome` (VARCHAR)
  - `preco` (DECIMAL)

- **pedidos**
  - `id_pedido` (INT, PK, auto incremento)
  - `id_produto` (INT, FK referenciando produtos)
  - `quantidade` (INT)
  - `data_pedido` (DATE)

## Operações Implementadas

O script SQL (`banco.sql`) contém:

- **Criação das tabelas**
  - Definição de chaves primárias e estrangeiras

- **Inserção de dados (INSERT)**
  - Três registros na tabela `produtos`
  - Três registros na tabela `pedidos`

- **Atualização de dados (UPDATE)**
  - Alteração de preço de produto
  - Alteração de quantidade em pedido

- **Remoção de dados (DELETE)**
  - Exclusão de pedido
  - Exclusão de produto

- **Consultas (SELECT)**
  - Listagem de todos os produtos
  - Listagem de pedidos com nome do produto (JOIN)
  - Listagem de pedidos com cálculo do valor total (JOIN com operação aritmética)

## Como executar

1. Crie um banco de dados no MySQL
2. Copie e cole os comandos do arquivo `banco.sql` no console SQL.
3. Utilize os comandos `SELECT` para visualizar os resultados das consultas.