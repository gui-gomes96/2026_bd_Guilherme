CREATE DATABASE Produto_Venda; 
USE Produto_Venda; 

CREATE TABLE produto ( 
    cd_produto INT PRIMARY KEY AUTO_INCREMENT, 
    nm_produto VARCHAR(100) NOT NULL,
	ds_produto TEXT NOT NULL,
    vl_produto INT,
    qt_estoque_produto INT
); 

CREATE TABLE venda ( 
    cd_venda INT PRIMARY KEY AUTO_INCREMENT, 
    dt_venda VARCHAR(100) NOT NULL,
    vl_total_venda INT
); 

CREATE TABLE item_venda (
    cd_venda INT, 
	cd_produto INT, 
    FOREIGN KEY ( cd_venda ) REFERENCES venda ( cd_venda ),
	FOREIGN KEY (cd_produto) REFERENCES produto (cd_produto),
    vl_unitario INT
);