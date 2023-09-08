-- Criardatabase
CREATE DATABASE RH;

-- Selecionando banco de dados para inserir comandos.
USE RH;

-- Criando Tabelas
CREATE TABLE Departamentos(
  Id INT auto_increment primary key,
  NomeDepartamento varchar(255) not null
);

CREATE TABLE Funcionarios(
  Id INT auto_increment primary key,
  Nome varchar(255) not null,
  Cargo varchar(255) not null,
  Salario decimal(10,2) not null,
  ID_Departamento INT,
  Foreign Key (ID_Departamento) REFERENCES Departamentos(Id)
);

-- Inserir registros na tabela 
INSERT INTO Departamentos (NomeDepartamento)
VALUES
    ('Recursos Humanos'),
    ('Financeiro'),
    ('Marketing'),
    ('Tecnologia'),
    ('Vendas');

INSERT INTO Funcionarios (Nome, Cargo, Salario, ID_Departamento)
VALUES
    ('João Silva', 'Gerente de RH', 7500.00, 1),
    ('Maria Santos', 'Analista de Finanças', 6000.00, 2),
    ('Pedro Alves', 'Gerente de Marketing', 8000.00, 3),
    ('Ana Oliveira', 'Desenvolvedor Sênior', 9000.00, 4),
    ('Luiz Fernandes', 'Representante de Vendas', 5500.00, 5);

-- Mostrando os dados inseridos 
SELECT * FROM RH.Departamentos;
SELECT * FROM RH.Funcionarios;