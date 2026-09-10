create database foodreview;

use foodreview;

create table usuario {

    id_usuario int primary key auto_increment,
    nome varchar(100) not null,
    email varchar(100) not null,
    senha varchar(25) not null

}

create table restaurante {

    id_restaurante int primary key auto_increment,
    nome varchar(100) not null,
    endereco varchar(100) not null,
    categoria varchar(50) not null,
    preco decimal(10,2) not null,
    descricao varchar(255) not null

}

create table avaliacao {


    id_avaliacao int primary key auto_increment,
    nota int not null,
    comentario varchar(255) not null,
    data_avaliacao date not null,
    usuario_id int not null,
     foreign key (usuario_id) references usuario(id_usuario),
    restaurante_id int not null,
    foreign key (restaurante_id) references restaurante(id_restaurante)
}