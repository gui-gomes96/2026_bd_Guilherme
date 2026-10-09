CREATE DATABASE mundo;
USE mundo;

CREATE TABLE Continente (
    cd_continente INT PRIMARY KEY AUTO_INCREMENT,
    nm_continente VARCHAR(20) NOT NULL
);

CREATE TABLE Pais (
    cd_pais INT PRIMARY KEY AUTO_INCREMENT,
    nm_pais VARCHAR(100) NOT NULL,
    vl_populacao BIGINT NOT NULL,
    id_continente INT,
    FOREIGN KEY (id_continente) REFERENCES Continente (cd_continente)
);

CREATE TABLE Regiao (
    cd_regiao INT PRIMARY KEY AUTO_INCREMENT,
    nm_regiao VARCHAR(100) NOT NULL
);

CREATE TABLE Estado (
    cd_estado INT PRIMARY KEY AUTO_INCREMENT,
    nm_estado VARCHAR(100) NOT NULL,
    sg_estado CHAR(2) NOT NULL,
    id_pais INT,
    id_regiao INT,
    id_capital INT,
    FOREIGN KEY (id_pais) REFERENCES Pais (cd_pais),
    FOREIGN KEY (id_regiao) REFERENCES Regiao (cd_regiao)
);

CREATE TABLE Cidade (
    cd_cidade INT PRIMARY KEY AUTO_INCREMENT,
    nm_cidade VARCHAR(100) NOT NULL,
    id_estado INT,
    FOREIGN KEY (id_estado) REFERENCES Estado (cd_estado)
);

ALTER TABLE Estado ADD FOREIGN KEY (id_capital) REFERENCES Cidade (cd_cidade);

INSERT INTO Continente (nm_continente) VALUES ('América do Sul');

INSERT INTO Pais (nm_pais, vl_populacao, id_continente) VALUES ('Brasil', 203062512, 1);

INSERT INTO Regiao (nm_regiao) VALUES ('Norte'), ('Nordeste'), ('Centro-Oeste'), ('Sudeste'), ('Sul');

INSERT INTO Estado (cd_estado, nm_estado, sg_estado, id_pais, id_regiao, id_capital) VALUES 
(1, 'Acre', 'AC', 1, 1, 1),
(2, 'Alagoas', 'AL', 1, 2, 4),
(3, 'Amapá', 'AP', 1, 1, 7),
(4, 'Amazonas', 'AM', 1, 1, 10),
(5, 'Bahia', 'BA', 1, 2, 13),
(6, 'Ceará', 'CE', 1, 2, 16),
(7, 'Distrito Federal', 'DF', 1, 3, 19),
(8, 'Espírito Santo', 'ES', 1, 4, 22),
(9, 'Goiás', 'GO', 1, 3, 25),
(10, 'Maranhão', 'MA', 1, 2, 28),
(11, 'Mato Grosso', 'MT', 1, 3, 31),
(12, 'Mato Grosso do Sul', 'MS', 1, 3, 34),
(13, 'Minas Gerais', 'MG', 1, 4, 37),
(14, 'Pará', 'PA', 1, 1, 40),
(15, 'Paraíba', 'PB', 1, 2, 43),
(16, 'Paraná', 'PR', 1, 5, 46),
(17, 'Pernambuco', 'PE', 1, 2, 49),
(18, 'Piauí', 'PI', 1, 2, 52),
(19, 'Rio de Janeiro', 'RJ', 1, 4, 55),
(20, 'Rio Grande do Norte', 'RN', 1, 2, 58),
(21, 'Rio Grande do Sul', 'RS', 1, 5, 61),
(22, 'Rondônia', 'RO', 1, 1, 64),
(23, 'Roraima', 'RR', 1, 1, 67),
(24, 'Santa Catarina', 'SC', 1, 5, 70),
(25, 'São Paulo', 'SP', 1, 4, 73),
(26, 'Sergipe', 'SE', 1, 2, 76),
(27, 'Tocantins', 'TO', 1, 1, 79);

INSERT INTO Cidade (cd_cidade, nm_cidade, id_estado) VALUES 
(1, 'Rio Branco', 1),
(2, 'Cruzeiro do Sul', 1),
(3, 'Sena Madureira', 1),
(4, 'Maceió', 2),
(5, 'Arapiraca', 2),
(6, 'Palmeira dos Índios', 2),
(7, 'Macapá', 3),
(8, 'Santana', 3),
(9, 'Laranjal do Jari', 3),
(10, 'Manaus', 4),
(11, 'Parintins', 4),
(12, 'Itacoatiara', 4),
(13, 'Salvador', 5),
(14, 'Feira de Santana', 5),
(15, 'Vitória da Conquista', 5),
(16, 'Fortaleza', 6),
(17, 'Juazeiro do Norte', 6),
(18, 'Sobral', 6),
(19, 'Brasília', 7),
(20, 'Ceilândia', 7),
(21, 'Taguatinga', 7),
(22, 'Vitória', 8),
(23, 'Vila Velha', 8),
(24, 'Serra', 8),
(25, 'Goiânia', 9),
(26, 'Anápolis', 9),
(27, 'Aparecida de Goiânia', 9),
(28, 'São Luís', 10),
(29, 'Imperatriz', 10),
(30, 'Timon', 10),
(31, 'Cuiabá', 11),
(32, 'Várzea Grande', 11),
(33, 'Rondonópolis', 11),
(34, 'Campo Grande', 12),
(35, 'Dourados', 12),
(36, 'Três Lagoas', 12),
(37, 'Belo Horizonte', 13),
(38, 'Uberlândia', 13),
(39, 'Contagem', 13),
(40, 'Belém', 14),
(41, 'Ananindeua', 14),
(42, 'Santarém', 14),
(43, 'João Pessoa', 15),
(44, 'Campina Grande', 15), (45, 'Patos', 15),
(46, 'Curitiba', 16),
(47, 'Londrina', 16),
(48, 'Maringá', 16),
(49, 'Recife', 17),
(50, 'Olinda', 17),
(51, 'Caruaru', 17),
(52, 'Teresina', 18),
(53, 'Parnaíba', 18),
(54, 'Picos', 18),
(55, 'Rio de Janeiro', 19),
(56, 'Niterói', 19),
(57, 'Duque de Caxias', 19),
(58, 'Natal', 20),
(59, 'Mossoró', 20),
(60, 'Parnamirim', 20),
(61, 'Porto Alegre', 21),
(62, 'Caxias do Sul', 21),
(63, 'Pelotas', 21),
(64, 'Porto Velho', 22),
(65, 'Ji-Paraná', 22),
(66, 'Ariquemes', 22),
(67, 'Boa Vista', 23),
(68, 'Rorainópolis', 23),
(69, 'Caracaraí', 23),
(70, 'Florianópolis', 24),
(71, 'Joinville', 24),
(72, 'Blumenau', 24),
(73, 'São Paulo', 25),
(74, 'Campinas', 25),
(75, 'Santos', 25),
(76, 'Aracaju', 26),
(77, 'Nossa Senhora do Socorro', 26),
(78, 'Lagarto', 26),
(79, 'Palmas', 27),
(80, 'Araguaína', 27), (81, 'Gurupi', 27);
