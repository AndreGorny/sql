/* ESTOQUE:
    Qual o produto armazenado?
    Qtd do produto armazenado
    data de entrada do produto no estoque
    lote do produto
    validade do lote
    */;

CREATE TABLE aula.estoque(
    cd_estoque INT AUTO_INCREMENT,
    fk_produto INT, /*IMPORTAR DO PRODUTO*/
    qt_produto INT NOT NULL,
    dt_entrada DATE,
    nr_lote INT,
    dt_validade DATE, /*EXPORTAR PARA PRODUTO*/
    FOREIGN KEY (fk_produto) REFERENCES aula.produto(cd_produto),
    PRIMARY KEY (cd_estoque)
);