
drop DATABASE teste;

CREATE DATABASE teste;


CREATE TABLE teste.cliente(
	cd_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nm_cliente VARCHAR(50) NOT NULL,
    dt_nascimento DATE,
    nr_cpf INT NOT NULL UNIQUE,
    ds_endereco VARCHAR(100) NOT NULL,
    complemento VARCHAR(50),    dt_cadastro DATETIME DEFAULT now() NOT NULL);

    ds_fone VARCHAR(20),
    dt_cadastro DATETIME DEFAULT now()
);

DROP TABLE teste.cliente;


CREATE TABLE teste.cliente(
    id_cliente PRIMARY KEY AUTO_INCREMENT INT,
    nm_nome VARCHAR(50),
    nr_cpf INT UNIQUE,
    dt_nascimento DATE,
    ds_endereco VARCHAR(100),
    ds_fone VARCHAR(30)
);

