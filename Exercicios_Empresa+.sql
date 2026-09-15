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
