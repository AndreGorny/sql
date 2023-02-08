
CREATE TABLE aula.cliente(
    cd_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nm_cliente VARCHAR(50) NOT NULL,
    dt_nascimento DATE,
    nr_cpf INT NOT NULL,
    ds_fone VARCHAR(20),
    dt_cadastro DATETIME DEFAULT now(),
    fk_endereco INT,
    nr_street INT,
    FOREIGN KEY (fk_endereco) REFERENCES aula.endereco (cd_endereco)
);

CREATE TABLE aula.endereco(
    cd_endereco INT AUTO_INCREMENT PRIMARY KEY,
    nm_street VARCHAR(100),
    tp_street VARCHAR(15),
    nm_city VARCHAR(30),
    nm_state VARCHAR(20)
);

ALTER TABLE endereco MODIFY nm_city VARCHAR(30);

/*---------------------------------------------------------------------*/

INSERT INTO aula.endereco (
         nm_street,
         tp_street,
         nm_city,
         nm_state
)
SELECT nm_street,
       tp_street,
       nm_city,
       nm_state
FROM aula.stage_cliente
GROUP BY nm_street,
         tp_street,
         nm_city,
         nm_state
;
ALTER TABLE aula.cliente MODIFY nr_cpf VARCHAR(15)
;

/*----------------------------------------------------------------------*/

INSERT INTO aula.cliente (nm_cliente,
                          dt_nascimento,
                          nr_cpf,
                          ds_fone,
                          fk_endereco,
                          nr_street);
SELECT a.nm_cliente,
       a.dt_nascimento,
       a.nr_cpf,
       a.ds_fone,
       b.cd_endereco,
       a.nr_street
FROM aula.stage_cliente a
INNER JOIN aula.endereco b
ON a.nm_state = b.nm_street
AND a.tp_street = b.tp_street
AND a.nm_city = b.nm_city
AND a.nm_state = b.nm_state;

SELECT * FROM cliente;
SELECT * FROM stage_cliente;
SELECT * FROM endereco;