-- Inicando uma conexão com o servidor
    mysql -h localhost -u root -p


-- Entendendo o comando “mysql -h localhost -u root -p

    mysql      -- evocamos o servidor
    -h         -- dizemos que o próximo dado é referente ao host (servidor)
    localhost  -- informamos o host (servidor)
    -u         -- dizemos que o próximo dado é referente ao usuário
    root       -- informamos o usuário
    -p         -- dizemos que o próximo dado é referente a senha

-- criando um banco de dados
    create database agenda;

-- acessar o banco de dados
    use agenda;

-- Comando para limpar a tela
    \! cls

-- criando uma tabela
    create table tarefas(
    id int not null auto_increment,
    tarefa varchar(50),
    primary key(id)
    );

-- ver as tabelas criadas
    show tables;

-- ver a estrutura das tabelas
    desc tarefas;

-- fechar o sql
    exit;


