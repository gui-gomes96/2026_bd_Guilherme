CREATE DATABASE mundo; 
USE mundo; 

CREATE TABLE Continente (
    cd_continente INT PRIMARY KEY AUTO_INCREMENT, 
    nm_continente VARCHAR(20) NOT NULL 
); 

CREATE TABLE Pais (
    cd_pais INT PRIMARY KEY AUTO_INCREMENT, 
    nm_pais VARCHAR(100) NOT NULL, 
    vl_população INT NOT NULL, 
    id_continente INT
); 

ALTER TABLE Pais ADD FOREIGN KEY (id_continente) REFERENCES Continente (cd_continente);

CREATE TABLE Estado (
    cd_estado INT PRIMARY KEY AUTO_INCREMENT,
    nm_estado VARCHAR(100) NOT NULL,
    sg_estado CHAR(2) NOT NULL,
    id_pais INT,
    FOREIGN KEY (id_pais) REFERENCES Pais (cd_pais)
);

CREATE TABLE Cidade (
    cd_cidade INT PRIMARY KEY AUTO_INCREMENT,
    nm_cidade VARCHAR(100) NOT NULL,
    id_estado INT,
    FOREIGN KEY (id_estado) REFERENCES Estado (cd_estado)
);
