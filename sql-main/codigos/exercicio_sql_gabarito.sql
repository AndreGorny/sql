/* ESTOQUE:
    Qual o produto armazenado?
    Qtd do produto armazenado
    data de entrada do produto no estoque
    lote do produto
    validade do lote
    */;

DROP TABLE aula.estoque;

CREATE TABLE aula.estoque(
    cd_estoque INT AUTO_INCREMENT PRIMARY KEY,
    dt_entrada DATETIME NOT NULL DEFAULT now(),
    dt_validade DATE NOT NULL,
    vl_produto DECIMAL(10,2),
    qt_produto INT NOT NULL,
    fk_produto INT NOT NULL,
    nr_lote INT NOT NULL,
    FOREIGN KEY (fk_produto) REFERENCES aula.produto(cd_produto)
)