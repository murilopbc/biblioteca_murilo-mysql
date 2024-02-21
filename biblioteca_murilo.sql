/*
CREATE DATABASE biblioteca_murilo



CREATE TABLE associacao (

id_associacao int auto_increment primary key,
associacao ENUM('Regular','Premium')

);

CREATE table usuario (
id_usuario INT auto_increment primary key,
nome_usuario varchar(100) not null,
email_usuario VARCHAR(100) not null,
data_registro date,
fk_associacao INT,
foreign key (fk_associacao) references associacao(id_associacao)
);


CREATE TABLE categoria (

id_categoria int auto_increment primary key,
categoria varchar(30) not null

);

CREATE TABLE livro (

ISBN INT auto_increment primary key,
titulo varchar(150) not null,
descricao text,
fk_categoria INT,
foreign key (fk_categoria) references categoria(id_categoria)

);

CREATE TABLE emprestimo (

id_emprestimo INT auto_increment primary key,
data_retirada DATE,
data_devolucao Date,
fk_usuario INT,
foreign key (fk_usuario) references usuario(id_usuario),
fk_livro INT,
foreign key (fk_livro) references livro(ISBN)

);

CREATE TABLE autor (

id_autor int auto_increment primary key,
nome_autor varchar(100) not null,
biografia text

);

create table autor_livro (

id_autor_livro int auto_increment primary key,
fk_autor int,
foreign key (fk_autor) references autor(id_autor),
fk_livro int,
foreign key (fk_livro) references livro(ISBN)

);

create table categoria_livro (

id_categoria_livro int auto_increment primary key,
fk_categoria int,
foreign key (fk_categoria) references categoria(id_categoria),
fk_autor int,
foreign key (fk_autor) references autor(id_autor)
)



select * FROM usuario;
INSERT INTO usuario (nome_usuario, email_usuario, data_registro) VALUES
('Murilo', 'murilo@gmail.com', '2024-01-15'),
('Caio', 'caio@gmail.com', '2024-02-16'),
('Stella', 'stella@gmail.com', '2024-01-17'),
('Mirela', 'mirela@gmail.com', '2024-02-18'),
('Maria', 'maria@gmail.com', '2024-01-19'),
('Amber', 'amber@gmail.com', '2024-02-20'),
('João', 'joao@gmail.com', '2024-01-25'),
('Thainá', 'thaina@gmail.com', '2024-01-05'),
('Victória', 'victoria@gmail.com', '2024-02-14'),
('Bruna', 'bruna@gmail.com', '2024-02-10');
select * FROM usuario;

select * from livro;
INSERT INTO livro (titulo, descricao) VALUES
('Aventuras no Espaço', 'Uma emocionante jornada intergaláctica.'),
('Segredos do Passado', 'Um mistério que envolve vidas entrelaçadas.'),
('O Último Suspiro', 'Um thriller de suspense com reviravoltas impactantes.'),
('O Jardim Secreto', 'Descubra um mundo mágico escondido além dos portões.'),
('Caminho da Sabedoria', 'Reflexões sobre a busca pela verdade e conhecimento.'),
('No Coração da Cidade', 'Histórias entrelaçadas em uma metrópole vibrante.'),
('A Arte da Guerra', 'Estratégias atemporais para enfrentar desafios.'),
('Flores do Deserto', 'A extraordinária jornada de uma mulher resiliente.'),
('O Mistério da Herança', 'Segredos familiares revelados em uma trama envolvente.'),
('Voo da Liberdade', 'Uma história de superação e conquista dos próprios limites.');

select * from emprestimo;
INSERT INTO emprestimo (data_retirada, data_devolucao, fk_usuario, fk_livro) VALUES
('2024-02-26', '2024-03-18', 2, 4),
('2024-02-27', '2024-03-20', 3, 8),
('2024-02-28', '2024-03-22', 1, 6),
('2024-02-29', '2024-03-25', 4, 9),
('2024-03-01', '2024-03-28', 2, 10),
('2024-03-02', '2024-03-30', 3, 5),
('2024-03-03', '2024-04-02', 1, 3),
('2024-03-04', '2024-04-05', 4, 7),
('2024-03-05', '2024-04-08', 2, 1),
('2024-03-06', '2024-04-10', 3, 2);

select * from autor;
INSERT INTO autor (nome_autor, biografia) VALUES
('John Doe', 'John Doe é um autor renomado, conhecido por suas obras de ficção científica.'),
('Jane Smith', 'Jane Smith é uma escritora best-seller de romances de mistério e suspense.'),
('Carlos Silva', 'Carlos Silva é um autor brasileiro premiado, especializado em literatura contemporânea.'),
('Maria Gonzalez', 'Maria Gonzalez é uma poetisa espanhola famosa por suas obras líricas.'),
('David Johnson', 'David Johnson é um autor de não-ficção, explorando temas históricos e científicos.'),
('Emily White', 'Emily White é uma autora jovem aclamada por seus romances contemporâneos.'),
('Mohammed Rahman', 'Mohammed Rahman é um autor de origem indiana, escrevendo sobre questões sociais.'),
('Anna Chen', 'Anna Chen é uma romancista chinesa, conhecida por suas histórias emocionantes.'),
('Alexandra Ivanova', 'Alexandra Ivanova é uma escritora russa cujas obras destacam a cultura e tradições.'),
('Samuel Brown', 'Samuel Brown é um autor de ficção histórica, transportando os leitores para diferentes épocas.');


select * from associacao;
INSERT INTO associacao (associacao) VALUES
('Regular'),
('Premium'),
('Regular'),
('Premium'),
('Regular'),
('Premium'),
('Regular'),
('Premium'),
('Regular'),
('Premium');

select * from categoria;
INSERT INTO categoria (categoria) VALUES
('Ficção Científica'),
('Romance'),
('Fantasia'),
('Suspense'),
('Mistério'),
('Não-Ficção'),
('História'),
('Biografia'),
('Poesia'),
('Autoajuda');


select * from autor_livro;
INSERT INTO autor_livro (fk_autor, fk_livro) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

select * from categoria_livro;
INSERT INTO categoria_livro (fk_categoria, fk_autor) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);


select * from livro  

update categoria set categoria= "Terror" where id_categoria = 8 

delete from categoria where id_categoria (5,6)

alter table livro drop constraint livro_ibfk_1;

alter table livro drop column fk_categoria

*/



