CREATE TABLE aula.estoque(
    cd_estoque INT AUTO_INCREMENT PRIMARY KEY,
    dt_entrada DATETIME NOT NULL DEFAULT now(),
    dt_validade DATE NOT NULL,
    vl_produto DECIMAL(10,2),
    qt_produto INT NOT NULL,
    fk_produto INT NOT NULL,
    nr_lote INT NOT NULL,
    FOREIGN KEY (fk_produto) REFERENCES aula.produto(cd_produto)
);

SELECT * FROM aula.estoque;

CREATE TABLE aula.tabela(
	fk_codigo INT NOT NULL,
	fk_produto VARCHAR(50) NOT NULL,
	fk_quantidade INT NOT NULL,
	fk_valor DECIMAL(10,2) NOT NULL,
	FOREIGN KEY (fk_codigo) REFERENCES aula.produto (cd_produto),
	FOREIGN KEY (fk_produto) REFERENCES aula.produto (nm_produto),
	FOREIGN KEY (fk_quantidade) REFERENCES aula.estoque (qt_produto),
	FOREIGN KEY (fk_valor) REFERENCES aula.estoque (vl_produto)
)