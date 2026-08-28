CREATE DATABASE Escola; 
USE Escola; 

CREATE TABLE aluno ( 
    cd_aluno INT PRIMARY KEY AUTO_INCREMENT, 
    nm_aluno VARCHAR(20) NOT NULL,
	dt_nascimento_aluno VARCHAR(100) NOT NULL
); 

CREATE TABLE curso ( 
    cd_curso INT PRIMARY KEY AUTO_INCREMENT, 
    nm_curso VARCHAR(20) NOT NULL, 
    ds_carga_horaria_curso VARCHAR(20) NOT NULL
); 

CREATE TABLE turma ( 
    cd_turma INT PRIMARY KEY AUTO_INCREMENT, 
    cd_curso INT,
	FOREIGN KEY (cd_curso ) REFERENCES  curso (cd_curso ),
    nm_turma VARCHAR(100) NOT NULL, 
    ds_turno_turma VARCHAR(100) NOT NULL, 
	aa_ano_turma CHAR(2) NOT NULL
); 

CREATE TABLE matricula (
    cd_aluno INT, 
	cd_turma INT, 
    FOREIGN KEY ( cd_aluno ) REFERENCES aluno ( cd_aluno ),
	FOREIGN KEY (cd_turma) REFERENCES turma (cd_turma),
    dt_matricula VARCHAR(100) NOT NULL
);

