create database prova;
use prova;

CREATE TABLE Funcionarios(
    ID_Funcionarios varchar(255),
    Nome_Funcionario varchar(255), 
    Cargo varchar(255),
    Salario varchar(255)
);

CREATE TABLE Funcionarios_Projetos(
    ID_projeto varchar(255),
    ID_Funcionario varchar(255), 
    data_inico varchar(255),
    data_fim varchar(255)
);

insert into Funcionarios_Projetos
VALUES (1, 1, 2024-01-10, 2024-06-30);

insert into Funcionarios_Projetos
VALUES (2, 2, 2024-02-01, 2024-07-31);

insert into Funcionarios_Projetos
VALUES (3, 3, 2024-03-15, 2024-09-15);

insert into Funcionarios_Projetos
VALUES (4, 4, 2024-04-20, 2024-10-20);

insert into Funcionarios_Projetos
VALUES (5, 5, 2024-05-01, 2024-11-30);

insert into Funcionarios
VALUES (1, "Joao Silva", "Desenvolvedor", 5500.00);

insert into Funcionarios
VALUES (2, "Maria Oliveira", "Analista de Sistemas", 6000.00);

insert into Funcionarios
VALUES (3, "Carlos pereira"," gerente de projetos", 7500.00);

insert into Funcionarios
VALUES (4, "Ana Costa","Designer", 4800.00);

insert into Funcionarios
VALUES (5, "Lucas Almeida","Consultor de TI", 6700.00);

-- 03, questao 1

select Nome_Funcionario,
data_inicio, data_fim
from Funcionarios 
Join Funcionarios_Projetos 
ON ID_Funcionario =
ID_Funcionarios;


 


