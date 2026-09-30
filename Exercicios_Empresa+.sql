-- Ex01 Criação das bases de dados

create database dbVeterinaria;
create database dbOficina;
create database dbEscolaIdiomas;
create database dbMateriais;

-- Ex02 Novo Projeto

create database dbAcademia;

-- Ex03 Criando Tabelas no Projeto Oficina

USE dbOficina;
create table tbVeiculo(
	id_veiculo int primary key AUTO_INCREMENT,
    placa varchar(10) not null unique,
    modelo varchar(100) not null,
    ano year,
    valor_estimado decimal(10, 2),
    ativo bool default True
);
show databases;
describe tbVeiculo;

-- Ex05 Mudanças na Base de Dados

alter table tbVeiculo
add marca varchar(50) not null;

alter table tbVeiculo
add cor varchar(30);

alter table tbVeiculo
modify modelo varchar(150) not null;

alter table tbVeiculo
rename column valor_estimado to valor_mercado;

describe tbVeiculo;

-- Ex06 Removendo base de dados veterinária

DROP DATABASE IF EXISTS dbveterinaria;

SHOW DATABASES;

-- Ex07 Criação e Remoção de bases de dados de Homologação

CREATE DATABASE dbOficinaHomologacao;
CREATE DATABASE dbEscolaHomologacao;

SHOW DATABASES;

USE dbOficinaHomologacao;
USE dbEscolaHomologacao;

DROP DATABASE IF EXISTS dbOficinaHomologacao;
DROP DATABASE IF EXISTS dbEscolaHomologacao;

-- Ex08 Apresentação do banco de dados da empresa

SHOW DATABASES;

USE dbOficina;

SHOW TABLES;

DESC tbVeiculo;

USE dbEscolaIdiomas;

SHOW TABLES;

USE dbOficina;

-- Ex09 Projeto da Escola de Idiomas

USE dbEscolaidiomas;

CREATE TABLE tbCurso(
	id_curso int primary key,
    nome varchar(100) not null unique,
    carga_horaria int not null,
    valor double not null,
    ativo bool default True
);

CREATE TABLE tbProfessor(
	id_professor int primary key, 
	nome varchar(120) not null,
    email varchar(150) not null unique,
    data_admissao date not null,
    ativo bool default True
);

-- Ex10 Relacionamentos

CREATE TABLE tbTurma(
	id_turma int primary key,
    nome varchar(50) not null,
    data_inicio date not null,
    horario time not null,
    id_curso int,
    foreign key (id_curso) references tbCurso(id_curso)
);
USE dbescolaidiomas;

alter table tbTurma modify id_curso int not null;

desc tbTurma;

-- Ex11 Nova tabela professor

use dbescolaidiomas;
alter table tbTurma add id_professor int not null;

alter table tbTurma add foreign key(id_professor) references tbProfessor(id_professor);

desc tbTurma;

-- Ex12 Tabela aluno

CREATE TABLE tbAluno(
	id_aluno int primary key,
	nome varchar(150) not null,	
	cpf char(11) not null unique,
    data_nasc date,
    email varchar(150) unique,
    data_cadastro datetime,
    ativo bool default True
);

-- Ex13 Tabela Associativa

CREATE TABLE matricula(
	id_aluno int unique,
    foreign key(id_aluno) references tbAluno(id_aluno),
    id_turma int,
    foreign key(id_turma) references tbTurma(id_turma),
	PRIMARY KEY (id_aluno, id_turma),
    data_matricula date not null,
    situacao varchar(20) not null
);

