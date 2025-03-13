CREATE DATABASE serasa;

CREATE TABLE  empregado(
cod int(5) primary key,
nome varchar(50) NOT NULL,
depto int NOT NULL,
salario decimal(6,2)
);

INSERT INTO empregado(cod, nome, depto, salario)
VALUES
(43500, "Ana da Silva", 9411, 5200.00),
(43501, "Vitoria Beatriz", 9411, 3400.00),
(43502, "Pedro José", 9412, 2600.00),
(43503, "Amary Manoel", 9412, 8400.00),
(43504,"Carlos Silva ", 9412, 5600.00),
(43505,"Vitorio Cardoso", 9413, 2300.00),
(43506,"Carlos Ives Souza", 9413, 3380.00),
(43507,"Victor Silva",9413, 4500.00),
(43508,"Saulo Monteiro", 9413, 6800.00);

-- Altere o departamento de todos para 9414
UPDATE empregado 
SET depto = 9414
WHERE depto IN (9411,9411,9412,9412,9412,9413,9413,9413,9413);

--Altere o departamento dos três primeiros registros para 9415
UPDATE empregado
SET depto = 9415
WHERE nome = ("Ana da Silva");

UPDATE empregado
SET depto = 9415
WHERE nome = ("Vitoria Beatriz");

UPDATE empregado
SET depto = 9415
WHERE nome = ("Pedro José");

-- Altere o departamento de cada uma para o valor original novamente
UPDATE empregado
SET depto = 9411
WHERE nome IN ("Ana da Silva", "Vitoria Beatriz");

UPDATE empregado
SET depto = 9412
WHERE nome IN ("Pedro Jóse", "Amary Manoel", "Carlos Silva");

UPDATE empregado
SET depto = 9413
WHERE nome IN ("Vitorio Cardoso", "Carlos Ives Souza", "Victor Silva", "Saulo Monteiro");

--realize um select para todos os dados do banco de dados
SELECT * FROM empregado;

--Realize um select da coluna nome onde o salário for igual a R$6800,00
SELECT nome FROM empregado
WHERE salario = 6800.00;

--Realize um select da coluna codigo onde o salário for igual a R$5200,00
SELECT cod FROM empregado
WHERE salario = 5200.00;

--rEALIZE UM SELECT DA COLUNA DPTO ONDE SALARIO FOR MAIOR QUE r$3000,00 E MENOR QUE r$5.500
SELECT * FROM empregado
WHERE salario  > 3000.00 AND salario < 5500.00;

--Realize um select da coluna codigo e depto onde o salário estiver entre R$2600,00 e R$3380,00
SELECT cod, depto FROM empregado
WHERE salario BETWEEN 2600.00 AND 3380.00;

-- Realize um select da coluna nome onde depto for 9411 and 9412
SELECT nome FROM empregado
WHERE depto BETWEEN 9411 AND 9412;

--Realize um select de depto, salario e nome onde o codigo for 43500 or 43502
SELECT depto, salario, nome FROM empregado
WHERE cod BETWEEN 43500 AND 43502;

--Realize um select sum de todos os salários da tabela
SELECT SUM(salario) AS soma_salario FROM empregado;