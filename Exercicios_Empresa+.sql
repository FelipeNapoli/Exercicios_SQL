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
