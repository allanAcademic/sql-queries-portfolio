-- Criando estrutura do banco de dados
CREATE DATABASE projeto_vendas;
USE projeto_vendas;
CREATE TABLE clientes(
    id INT NOT NULL,
    nome VARCHAR(100),
    cidade VARCHAR(100),
    PRIMARY KEY(id)
);
CREATE TABLE vendas(
    id INT NOT NULL,
    cliente_id INT,
    produto VARCHAR(100),
    categoria VARCHAR(100),
    quantidade INT,
    valor DECIMAL(10,2),
    data_venda DATE, 
    PRIMARY KEY(id),
    FOREIGN KEY(cliente_id) REFERENCES clientes(id) ON DELETE CASCADE
);

-- Inserindo dados (fictícios)
INSERT INTO clientes (id, nome, cidade) VALUES
(1, 'Ana Silva', 'São Paulo'),
(2, 'Carlos Souza', 'Rio de Janeiro'),
(3, 'Mariana Lima', 'Belo Horizonte'),
(4, 'João Pereira', 'Curitiba'),
(5, 'Fernanda Costa', 'São Paulo');
INSERT INTO vendas (id, cliente_id, produto, categoria, quantidade, valor, data_venda) VALUES
(1, 1, 'Notebook Dell', 'Eletrônicos', 1, 3500.00, '2024-01-15'),
(2, 1, 'Mouse Gamer', 'Eletrônicos', 2, 150.00, '2024-01-20'),
(3, 2, 'Cadeira Ergonômica', 'Móveis', 1, 850.00, '2024-02-10'),
(4, 2, 'Mesa Digital', 'Móveis', 1, 1200.00, '2024-02-15'),
(5, 3, 'Monitor 24pol', 'Eletrônicos', 1, 1100.00, '2024-03-01'),
(6, 3, 'Teclado Mecânico', 'Eletrônicos', 1, 280.00, '2024-03-05'),
(7, 4, 'Fone Bluetooth', 'Eletrônicos', 2, 200.00, '2024-03-10'),
(8, 4, 'Smartwatch', 'Eletrônicos', 1, 450.00, '2024-03-15'),
(9, 5, 'Livro: SQL para Análise', 'Livros', 1, 89.00, '2024-04-01'),
(10, 5, 'Curso Online de Dados', 'Educação', 1, 197.00, '2024-04-05'),
(11, 1, 'SSD 1TB', 'Eletrônicos', 1, 450.00, '2024-04-10'),
(12, 2, 'Livro: Python para Dados', 'Livros', 2, 160.00, '2024-04-12'),
(13, 3, 'Fone Bluetooth', 'Eletrônicos', 1, 100.00, '2024-04-15'),
(14, 4, 'Cadeira Gamer', 'Móveis', 1, 950.00, '2024-04-18'),
(15, 5, 'Monitor 27pol', 'Eletrônicos', 1, 1450.00, '2024-04-20');

-- Verificação da estrutura: visualização completa das tabelas
SELECT * FROM clientes;
SELECT * FROM vendas;
