ALTER <o que quero mudar> <nome do que quero mudar> <a mudança>

ALTER TABLE aula.endereco CONVERT TO CHARACTER SET utf8   
        |       |           --------------v------------
      o que    nome                    a mudança

ALTER TABLE aula.endereco MODIFY nm_bairro VARCHAR(70)