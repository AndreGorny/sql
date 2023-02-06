
CREATE TABLE aula.produto (
    cd_produto INT AUTO_INCREMENT PRIMARY KEY,
    nm_produto VARCHAR(30) NOT NULL,
    tp_produto VARCHAR(20) NOT NULL,
    ds_marca VARCHAR(30) NOT NULL,
    dt_validade DATE,
    vl_unitario DECIMAL(10,2) NOT NULL,
    dt_cadastro DATETIME DEFAULT now() NOT NULL);

    DROP TABLE aula.produto;    dt_cadastro DATETIME DEFAULT now() NOT NULL);


DROP TABLE aula.carro;

CREATE TABLE aula.carro (
    id_carro INT AUTO_INCREMENT PRIMARY KEY,
    nm_carro VARCHAR(30),
    dt_ano INT,
    ds_marca VARCHAR(20),
    km_carro INT,
    clr_carro VARCHAR(20),
    vl_carro DECIMAL(10,2)
);


SELECT * FROM aula.carro ORDER BY ds_marca, dt_ano DESC
WHERE km_carro < 80000;

DROP TABLE aula.carro;

CREATE TABLE aula.carro(
    id_carro INT AUTO_INCREMENT PRIMARY KEY,
    nm_marca VARCHAR(30) NOT NULL,
    nm_carro VARCHAR(50) NOT NULL,
    dt_ano INT NOT NULL,
    ds_cor VARCHAR(15),
    km_carro INT NOT NULL,
    vl_carro DECIMAL(10,2) NOT NULL
)

