create database Reateat;
use Reateat;
create table usuario(
id int primary key auto_increment,
nome varchar(35) not null unique,
email varchar(50) not null,
senha varchar(20) not null
);

create table  restaurante(
nome varchar(35) not null unique,
cep int(9) not null,
bairro varchar(20) not null,
rua varchar(20) not null,
categoria varchar(15) not null,
descricao varchar(45) 
);

create table avaliacao(
id int primary key auto_increment,
nota int not null,
comentario varchar(40) not null,
data datetime default current_timestamp,
nome_usuario varchar(35) not null,
nome_restaurante varchar(35) not null,
foreign key(nome_usuario) references usuario(nome),
foreign key(nome_restaurante) references restaurante(nome)
);