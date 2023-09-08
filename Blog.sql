-- Criardatabase
CREATE DATABASE Blog;
-- Selecionando banco de dados para inserir comandos.
USE Blog;

--  Criando Tabelas
CREATE TABLE Artigos(
  Id INT auto_increment primary key,
  Titulo varchar(255) not null,
  Conteudo text,
  DataPublicacao date
);
CREATE TABLE Comentarios(
  Id INT auto_increment primary key,
  ID_Artigo INT,
  Autor varchar(255) not null,
  Texto text,
  DataComentario date,
  Foreign Key (ID_Artigo) REFERENCES Artigos(Id)
);

-- Inserir registros na tabela 
INSERT INTO Artigos(Titulo, Conteudo, DataPublicacao)
VALUES
    ('As belezas naturais do Brasil', 'Vamos explorar as paisagens incríveis do Brasil', '2010-08-22'),
    ('A importância da reciclagem', 'Entenda por que a reciclagem é crucial para o meio ambiente', '2018-06-03'),
    ('Os benefícios da meditação', 'Descubra como a meditação pode melhorar sua saúde mental', '2015-03-14'),
    ('O futuro da inteligência artificial', 'Explore as tendências da IA e seu impacto na sociedade', '2024-11-29'),
    ('Receita de um bolo delicioso', 'Aprenda a fazer um bolo incrível em casa', '2012-02-07');

INSERT INTO Comentarios(ID_Artigo, Autor, Texto, DataComentario)
VALUES
    (2, 'Maria Silva', 'Gostei do artigo, muito esclarecedor', '2023-05-25'),
    (2, 'João Pereira', 'Acho que a reciclagem é importante', '2023-06-10'),
    (3, 'Luciana Souza', 'Adoro meditação', '2026-07-18'),
    (4, 'Pedro Santos', 'A IA crescceu bastante nos ultimos tempos', '2022-05-15'),
    (5, 'Carla Fernandes', 'Que delicia de receita!!', '2023-09-01');

-- Mostrando os dados inseridos 
SELECT * FROM Blog.Comentarios;
SELECT * FROM Blog.Artigos;

