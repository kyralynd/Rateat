create table usuario(
    id integer primary key autoincrement,
    nome varchar(35) not null unique,
    email varchar(50) not null,
    senha varchar(20) not null
);

insert into usuario (nome, email, senha) 
values ('João', 'joao@email.com', 'senha123');

drop table if exists usuario;


create table restaurante(
    nome varchar(35) not null unique,
    cep integer(9) not null,
    bairro varchar(20) not null,
    rua varchar(20) not null,
    categoria varchar(15) not null,
    descricao varchar(45)
);

create table avaliacao(
    id integer primary key autoincrement,
    nota integer not null,
    comentario varchar(40) not null,
    data datetime default current_timestamp,
    nome_usuario varchar(35) not null,
    nome_restaurante varchar(35) not null,
    foreign key(nome_usuario) references usuario(nome),
    foreign key(nome_restaurante) references restaurante(nome)
);


insert into restaurante (nome, cep, bairro, rua, categoria, descricao) 
values ('Sabor do Chef', 12345678, 'Centro', 'Rua Principal, 10', 'Brasileira', 'Melhor comida caseira');


insert into avaliacao (nota, comentario, nome_usuario, nome_restaurante) 
values (5, 'Comida maravilhosa e ótimo atendimento!', 'João Silva', 'Sabor do Chef');