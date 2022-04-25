#Com base no que aprendemos em aula, crie um banco de dados #chamado sistema_escola e crie a tabela abaixo:

CREATE DATABASE SISTEMA_ESCOLA;


#Tabela Alunos:

CREATE TABLE Alunos(
ID INT primary KEY auto_increment,
Nome VARCHAR(100) NOT NULL,
Email VARCHAR(255) NOT NULL,
Endereco VARCHAR(255) NOT NULL,
Mensalidade numeric(7,2) NOT NULL;
MaiorIdade tinyint(1) NOT NULL
);


#Dados inseridos Alunos
INSERT INTO Alunos(Nome,Email,Endereco,Mensalidade,MaiorIdade) VALUES('Maria','marias@linx.com.br','Rua João Thomaz 19',350.00,1);
INSERT INTO Alunos(Nome,Email,Endereco,Mensalidade,MaiorIdade) VALUES('Antonio','antonio@linx.com.br','Rua João 20',450.00,0);
INSERT INTO Alunos(Nome,Email,Endereco,Mensalidade,MaiorIdade) VALUES('Marcos','maecos@linx.com.br','Rua Thomaz 19, AP 5',150.62,0);
INSERT INTO Alunos(Nome,Email,Endereco,Mensalidade,MaiorIdade) VALUES('Giovani','gokut@linx.com.br','Rua Maria Estela',289.10,1);
INSERT INTO Alunos(Nome,Email,Endereco,Mensalidade,MaiorIdade) VALUES('Ana','analis@linx.com.br','Rua Nicanor oliveira',370.40,1);
INSERT INTO Alunos(Nome,Email,Endereco,Mensalidade,MaiorIdade) VALUES('Marta','masilva@linx.com.br','Rua Primeiro de maior 19',999.99,0);
INSERT INTO Alunos(Nome,Email,Endereco,Mensalidade,MaiorIdade) VALUES('Roberto','roeng@linx.com.br','Rua Antonio Alvez 25',750.84,1);
INSERT INTO Alunos(Nome,Email,Endereco,Mensalidade,MaiorIdade) VALUES('Jaqueline','j.nogueira@linx.com.br','Rua João Thomaz 41',750.00,0);
INSERT INTO Alunos(Nome,Email,Endereco,Mensalidade,MaiorIdade) VALUES('Lucas','l.snatoss@linx.com.br','Rua MariaThomaz 91',250.00,0);
INSERT INTO Alunos(Nome,Email,Endereco,Mensalidade,MaiorIdade) VALUES('Camila','ca.mi-la@linx.com.br','Rua João martins 7',50.70,1);
INSERT INTO Alunos(Nome,Email,Endereco,Mensalidade,MaiorIdade) VALUES('Thiago','th.go@linx.com.br','Rua Padre Jeremia 71',350.00,0);
INSERT INTO Alunos(Nome,Email,Endereco,Mensalidade,MaiorIdade) VALUES('Fernanda','fer@linx.com.br','Rua Adelino Silva 191',550.00,0);
INSERT INTO Alunos(Nome,Email,Endereco,Mensalidade,MaiorIdade) VALUES('Luiz','lu.silva@linx.com.br','Rua Luiz Inacio Lula da Silva 171',99999.99,1);
INSERT INTO Alunos(Nome,Email,Endereco,Mensalidade,MaiorIdade) VALUES('Erik','erik.m@linx.com.br','Rua Marcos Antonio',350.74,1);
INSERT INTO Alunos(Nome,Email,Endereco,Mensalidade,MaiorIdade) VALUES('Laiz','l.boot@linx.com.br','Rua Thomaz Oliveira 19',350.00,0);
INSERT INTO Alunos(Nome,Email,Endereco,Mensalidade,MaiorIdade) VALUES('Marcelo','m.ciello@linx.com.br','Rua Florentina de Jesus 54',254.63,0);


#levando em consideração que 0 é maior de idade e 1 menor de idade
select * from alunos
where maioridade = 0;




#Crie queries utilizando select que retorne os seguintes dados:

#Alunos maior de idade;
#levando em consideração que 0 é maior de idade e 1 menor de idade
select * from alunos
where maioridade = 0;

#Alunos menor de idade;
#levando em consideração que 0 é maior de idade e 1 menor de idade
select * from alunos
where maioridade = 1;

#Alunos com mensalidade maior que 300 reais;
select * from alunos
where mensalidade > 300.00;

#Alunos com mensalidade menor que 300 reais;
select * from alunos
where mensalidade < 300.00;

#Alunos com limite de listagem em 5;
select * from alunos
limit 5;

#Alunos com alias para cada coluna, trazendo com os nomes em inglês.
select id as identity, nome as name, endereco as address, mensalidade as monthly_payment, maioridade As of_greater from alunos;
