

CREATE TABLE aula.carro (
    cd_carro INT AUTO_INCREMENT PRIMARY KEY,
    ds_marca VARCHAR(50) NOT NULL,
    nm_carro VARCHAR(80) NOT NULL,
    dt_cadastro DATETIME DEFAULT now() NOT NULL
);

DROP TABLE aula.estoque_carro;
CREATE TABLE aula.estoque_carro (
    cd_estoque INT AUTO_INCREMENT PRIMARY KEY,
    fk_carro INT,
    ds_marca VARCHAR(50) NOT NULL,
    nm_carro VARCHAR(80) NOT NULL,
    clr_carro VARCHAR (20),
    dt_fabricacao INT NOT NULL,
    nr_km INT NOT NULL,
    vl_carro DECIMAL (10,2) NOT NULL,
    FOREIGN KEY (fk_carro) REFERENCES aula.carro (cd_carro)
);

CREATE TABLE aula.stage_carro(
    cd_stage INT AUTO_INCREMENT PRIMARY KEY,
    ds_marca VARCHAR(50),
    nm_carro VARCHAR(50),
    dt_fabricacao INT,
    clr_carro VARCHAR(20),
    nr_km INT,
    vl_carro DECIMAL(10,2)
);

