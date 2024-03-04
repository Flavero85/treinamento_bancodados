-- Inicando uma conexão com o servidor
    mysql -h localhost -u root -p

-- Crie um banco de dados chamado UNIVERSIDADE
    create database UNIVERSIDADE 
-- Selecione a base de dados ESCOLA para ser utilizada
    use UNIVERSIDADE
-- Crie a tabela ALUNOS com os campos Código, nome e estado.
    create table ALUNOS(
    codigo int,
    nome varchar(100),
    estado varchar(2)
    )
-- Crie a tabela ALUNOS2 com os campos Código, nome e estado.
    create table ALUNOS2(
    codigo int,
    nome varchar(100),
    estado varchar(2)
    )

-- Insira 3 alunos.
    insert into alunos(codigo, nome, estado) values(1,'Bruce Wayne', 'SP')
    insert into alunos(codigo, nome, estado) values(2,'Clark Kent', 'RJ')
    insert into alunos(codigo, nome, estado) values(3,'Adamastor Pitágoras', 'MG')

-- Selecione todos os registros da tabela de alunos
    select * from alunos
-- Exclua campo ESTADO da tabela alunos
    ALTER TABLE alunos DROP COLUMN estado
-- Selecione todos os registros da tabela de alunos
    select * from alunos
-- Crie o campo UF na tabela de ALUNOS
    ALTER TABLE alunos ADD uf varchar(2)
-- Selecione todos os registros da tabela de alunos
    select * from alunos
-- Altere o registro do Bruce para que o UF dele seja SC
    update ALUNOS set uf = 'SC' where codigo = 1
-- Selecione todos os registros da tabela de alunos
    select * from alunos
-- Altere o registro do Clark para que o UF dele seja SP
    update ALUNOS set uf = 'SP' where codigo = 2
-- Selecione todos os registros da tabela de alunos
    select * from alunos
-- Altere o registro do Adamastor para que o UF dele seja BH
    update ALUNOS set uf = 'BH' where codigo = 3
-- Selecione todos os registros da tabela de alunos
    select * from alunos
-- Apague apenas o registro do Clark Kent
    delete from alunos where codigo = 3
-- Selecione todos os registros da tabela de alunos
    select * from alunos
-- 20) Selecione todos os alunos do Paraná
    select * from alunos where uf = 'pr'
-- Selecione todos os alunos com o código maior que 50
    select * from alunos where codigo > 50
-- Selecione apenas o aluno com o código 91
    select * from alunos where codigo = 91
-- Selecione todos os alunos que tenham o código diferente de 10
    select * from alunos where codigo <> 10
-- Selecione o nome e o estado dos alunos com os códigos 10,20,30,40,50,60,70,80,90 e 100
    select nome, uf from alunos where codigo = 10 or codigo = 20 or codigo = 30 or 
    codigo = 40 or codigo = 50 or codigo = 60 or codigo = 70 or codigo = 80 or 
    codigo = 90 or codigo = 100
-- Selecione todos os alunos da região sudeste ordenando a listagem por estado
    select * from alunos where uf = 'sp' or uf = 'mg' or uf = 'rj' or uf = 'es' 
    order by uf
-- Selecione os 10 primeiros alunos
    select * from alunos where codigo <= 10
-- Exclua o registro com o código 100
    delete from alunos where codigo = 100
-- Exclua a tabela alunos2
    drop table alunos2