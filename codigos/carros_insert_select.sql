/* fk_carro
   ds_marca
   nm_carro
   clr_carro
   dt_fabricacao
   nr_km
   vl_carro */

INSERT INTO aula.carro (ds_marca, nm_carro)
SELECT ds_marca,
       nm_carro
from stage_carro
GROUP BY ds_marca,
         nm_carro
;

SELECT * FROM aula.carro
ORDER BY ds_marca;

INSERT INTO aula.estoque_carro (fk_carro, ds_marca, nm_carro, dt_fabricacao, clr_carro)
SELECT cd_carro,
       ds_marca,
       nm_carro,
       dt_fabricacao,
       clr_carro
FROM aula.carro, aula.stage_carro;


SELECT clr_carro,
       dt_fabricacao,
       nr_km,
       vl_carro
FROM stage_carro
GROUP BY clr_carro,
         dt_fabricacao,
         nr_km,
         vl_carro
         ;

SELECT nm_carro, ds_marca, count(*) 
FROM aula.carro
GROUP BY nm_carro, ds_marca
ORDER BY count(*) DESC