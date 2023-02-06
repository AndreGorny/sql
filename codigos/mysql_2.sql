
CREATE TABLE aula.cliente(
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nm_nome VARCHAR(50) NOT NULL,
    nr_cpf INT UNIQUE NOT NULL,
    dt_nascimento DATE,
    ds_endereco VARCHAR(100),
    ds_fone VARCHAR(30)    dt_cadastro DATETIME DEFAULT now() NOT NULL);



DROP TABLE aula.cliente;

CREATE TABLE aula.cliente(
	cd_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nm_cliente VARCHAR(50) NOT NULL,
    dt_nascimento DATE,
    nr_cpf INT NOT NULL UNIQUE,
    ds_endereco VARCHAR(100) NOT NULL,
    ds_complemento VARCHAR(50),
    ds_fone VARCHAR(20),
    dt_cadastro DATETIME DEFAULT now()
);



DROP TABLE aula.cliente;

CREATE TABLE aula.produto (
    cd_produto INT AUTO_INCREMENT PRIMARY KEY,
    nm_produto VARCHAR(30),
    tp_produto VARCHAR(20),
    ds_marca VARCHAR(30),
    dt_validade DATE,
    vl_unitario DECIMAL(10,2),
    dt_cadastro DATETIME DEFAULT now() NOT NULL
);
    dt_cadastro DATETIME DEFAULT now() NOT NULL);

INSERT INTO aula.produto(
    nm_produto,
    tp_produto,
    ds_marca,
    dt_validade,
    vl_unitario
)
VALUES(
    'Antarctica',
    'Cerveja',
    'Ambev',
    NULL,
    5.27
),(
    'Brahma',
    'Cerveja',
    'Ambev',
    NULL,
    5.14
),(
    'Coca',
    'Refrigerante',
    'Coca-Cola',
    NULL,
    2.37
),(
    'Suco Laranja',
    'Suco',
    'Festval',
    '2023-02-07',
    6.99
);

SELECT * FROM aula.cliente    dt_cadastro DATETIME DEFAULT now() NOT NULL);

SELECT * FROM aula.carro WHERE dt_ano > 2010 ORDER BY nm_marca, dt_ano DESC;

