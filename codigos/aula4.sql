
CREATE TABLE aula.endereco(
    cd_endereco INT AUTO_INCREMENT PRIMARY KEY,
    nm_logradouro VARCHAR(70) NOT NULL,
    tp_logradouro VARCHAR(15) NOT NULL,
    nm_bairro VARCHAR(25) NOT NULL
);

DROP TABLE aula.cliente;

CREATE TABLE aula.cliente(
    cd_cliente INT AUTO_INCREMENT,
    nm_cliente VARCHAR (50) NOT NULL,
    dt_nascimento DATE NOT NULL,
    nr_cpf INT NOT NULL,
    ds_complemento VARCHAR(20),
    ds_fone VARCHAR (20),
    dt_cadastro DATETIME DEFAULT now(),
    fk_endereco INT,
    PRIMARY KEY (cd_cliente),
    UNIQUE (nr_cpf),
    FOREIGN KEY (fk_endereco) REFERENCES aula.endereco(cd_endereco) 
)