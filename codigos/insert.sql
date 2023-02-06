CREATE TABLE aula.produto (
    cd_produto INT AUTO_INCREMENT PRIMARY KEY,
    nm_produto VARCHAR(50) NOT NULL,
    tp_produto VARCHAR(20) NOT NULL,
    ds_marca VARCHAR(20),
    dt_validade DATE,
    vl_unitario DECIMAL(10,2),
    dt_cadastro DATETIME DEFAULT now() NOT NULL
    );

INSERT INTO aula.produto (    
    nm_produto,
    tp_produto,
    ds_marca,
    dt_validade,
    vl_unitario
    )

VALUES (
    'Coca-Cola',
    'Refrigerante',
    'Coca-Cola',
    '2023-09-11',
    6.99
),
('Antarctica',
'Cerveja',
'Ambev',
'2023-11-21',
5.27
);

SELECT * FROM aula.produto