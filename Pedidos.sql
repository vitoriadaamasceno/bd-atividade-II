-- Criardatabase
CREATE DATABASE Empresa;
-- Selecionando banco de dados para inserir comandos.
USE Empresa;

CREATE TABLE Clientes (
  Id INT auto_increment primary key,
  Nome varchar(255) not null,
  Email varchar(255) not null unique,
  Telefone varchar(22) not null
);
 
CREATE TABLE Pedidos (
     Id Int auto_increment primary key,
	 Id_Cliente INT,
     DataPedido date,
     ValorTotal decimal(10,2),
	 Foreign Key (Id_Cliente) REFERENCES Clientes(Id)
);

-- Inserir registros na tabela 
INSERT INTO Clientes(Nome, Email, Telefone)
VALUES
    ('Maria Vitoria', 'Marys@gmail.com', '7198522-9999'),
    ('Matheus Lima', 'theu@gmail.com', '719997-9999'),
    ('Matheus Gundes', 'Gundes@gmail.com', '7198869-5892'),
    ('Matheus Bacteria', 'bac@gmail.com', '719991-7777'),
    ('Macita', 'cicita@gmail.com', '7198587-5888');

-- Mostrando os dados inseridos 
SELECT * FROM Empresa.Clientes;

INSERT INTO Pedidos (Id_Cliente ,DataPedido, ValorTotal)
VALUES
    (1, '2023-10-25', 50.00),
    (2, '2023-10-25', 20.50),
    (3, '2023-10-25', 10.25),
    (4, '2023-10-25', 80.75),
    (5, '2023-10-25', 100.00);
    
-- Mostrando os dados inseridos 
SELECT * FROM Empresa.Pedidos;
SELECT * FROM Empresa.Clientes;