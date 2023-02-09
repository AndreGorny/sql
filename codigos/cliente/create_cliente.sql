
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

DROP TABLE aula.cliente;
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
ALTER TABLE aula.cliente MODIFY nr_cpf VARCHAR(20) NOT NULL
;

/*----------------------------------------------------------------------*/

INSERT INTO aula.cliente (nm_cliente,
                          dt_nascimento,
                          nr_cpf,
                          ds_fone,
                          fk_endereco,
                          nr_street)
SELECT a.nm_cliente,
       a.dt_nascimento,
       a.nr_cpf,
       a.ds_fone,
       b.cd_endereco,
       a.nr_street
FROM aula.stage_cliente a
INNER JOIN aula.endereco b
ON a.nm_street = b.nm_street
AND a.tp_street = b.tp_street
AND a.nm_city = b.nm_city
AND a.nm_state = b.nm_state;

SELECT * FROM cliente;
SELECT DISTINCT nm_city FROM stage_cliente
;
SELECT * FROM endereco;

/*----------------------------------------------------------------*/

CREATE TABLE aula.phone (
    cd_phone INT AUTO_INCREMENT PRIMARY KEY,
    nr_phone VARCHAR(20)
);

INSERT INTO aula.phone (nr_phone)
SELECT ds_fone FROM aula.cliente;

SELECT * FROM aula.cliente;

/*---------------------------------------------------------*/
-- ALTER TABLE aula.cliente DROP COLUMN ds_fone;
ALTER TABLE aula.cliente ADD fk_phone INT;
ALTER TABLE aula.cliente 
    ADD FOREIGN KEY (fk_phone) REFERENCES aula.phone (cd_phone);

INSERT INTO aula.cliente (fk_phone)
SELECT cd_phone FROM aula.phone;

UPDATE aula.cliente a
INNER JOIN aula.phone b
ON a.ds_fone = b.nr_phone
SET a.fk_phone = b.cd_phone;

SELECT *
FROM aula.cliente
LEFT OUTER JOIN aula.phone
ON cliente.fk_phone = phone.cd_phone

UNION

SELECT *
FROM aula.cliente
RIGHT OUTER JOIN aula.phone
ON cliente.fk_phone = phone.cd_phone