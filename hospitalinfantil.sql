-- Crinado banco de dados
CREATE DATABASE hospitalinfantil;
 
 -- Criando tabelas
CREATE TABLE crianca(
Nome VARCHAR(200) NOT NULL,
Peso DECIMAL(4,2) NOT NULL,
Altura FLOAT,
DataNascimento DATE NOT NULL,
ID INT PRIMARY KEY
);

CREATE TABLE mae(
Nome VARCHAR(200) NOT NULL,
Endereco VARCHAR(200) NOT NULL,
Telefone BIGINT(8) NOT NULL,
DataNascimento DATE NOT NULL,
ID INT PRIMARY KEY
);

CREATE TABLE medico(
Nome VARCHAR(200) NOT NULL,
Especialidade VARCHAR(200) NOT NULL,
CRM INT(6) UNIQUE NOT NULL,
ID INT PRIMARY KEY
);

CREATE TABLE nascimento(
Medico VARCHAR(50) NOT NULL,
idCrianca int(11) NOT NULL,
idMae int(11) NOT NULL,
ID INT PRIMARY KEY
);

-- Inserindo dados na tabela medico
INSERT INTO medico(ID, Nome, Especialidade, CRM)
VALUE
(11245, "Juliana Alves Albuquerque", "Obstretícia", 123584),
(11246, "Pedro da Silva Santos", "Nutroligia Pediátrica", 658985),
(11546, "Vinicius Lima de Oliveira", "Neonatologia", 458755),
(11468, "Bruna Paes Chavez", "Obstretícia", 246585);


-- Deletando registro
DELETE FROM medico WHERE Especialidade = "Neonatologia"

-- Deletando todos os dados 
DELETE FROM medico;
 
 -- Deletando as tabelas
DROP TABLE crianca;
DROP TABLE mae;
DROP TABLE medico;
DROP TABLE nascimento;
 
 --Deletando o banco de dados
DROP DATABASE hospitalinfantil;