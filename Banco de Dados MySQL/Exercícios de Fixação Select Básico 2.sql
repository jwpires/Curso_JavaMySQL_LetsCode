#Enunciar
#Utilizando a tabela de alunos e de professores criada no exercício anterior, crie queries utilizando select que retorne os seguintes dados:
#Alunos maior de idade em ordem crescente de nome;
SELECT NOME, EMAIL, MENSALIDADE FROM ALUNOS
WHERE maioridade = 0
order by NOME ASC;

#Alunos menor de idade em ordem decrescente de nome;
SELECT NOME, EMAIL, MENSALIDADE FROM ALUNOS
WHERE maioridade = 0
order by  NOME DESC;

#Alunos que o nome começam com N; 
SELECT NOME, EMAIL, MENSALIDADE FROM ALUNOS
WHERE UPPER(NOME) LIKE '%N';

#Alunos que tem a letra T no nome;
SELECT NOME, EMAIL, MENSALIDADE FROM ALUNOS
WHERE UPPER(NOME) LIKE '%T%';

#Alunos que moram na Av Paulista;
SELECT NOME, EMAIL, MENSALIDADE FROM ALUNOS
WHERE UPPER(ENDERECO) LIKE 'AV PAULISTA';

#Professores que tem salário entre 1000 e 3000 em ordem crescente de nome;
select * from professor
where salario between 1000 and 3000;

#Professores que tem salário entre 100 e 1000 em ordem decrescente de idade;
select * from professor
where salario between 100 and 1000
order by idade ASC;

#Professores que tem salário entre 500 e 3000 e também tenham idade entre 20 e 30 anos.
select * from professor
where (salario between 100 and 1000) and (idade between 20 and 30);