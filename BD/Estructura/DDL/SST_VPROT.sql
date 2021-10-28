-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         27/10/2021  Juan Manuel Velez   Creacion de Vista Matriz de Elementos de Proteccion
-- ============ =========== ==================  ===================================================================
--
--
--
CREATE OR REPLACE VIEW SST_VPROT  AS
        SELECT  AREA_AREA, AREA_NOMB, CARG_CARG, CARG_NOMB
              , PROT_PROT, PROT_NOMB
          FROM  SST_TAREA, SST_TCARG, SST_TCAPR, SST_TPROT
         WHERE  AREA_AREA = CARG_AREA
           AND  CARG_CARG = CAPR_CARG
           AND  CAPR_PROT = PROT_PROT;

COMMENT ON TABLE  SST_VPROT                 IS 'Vista Matriz de Elementos de Proteccion';
COMMENT ON COLUMN SST_VPROT.AREA_AREA       IS 'Id. Area';
COMMENT ON COLUMN SST_VPROT.AREA_NOMB       IS 'Nombre de Area';
COMMENT ON COLUMN SST_VPROT.CARG_CARG       IS 'Id. Cargo';
COMMENT ON COLUMN SST_VPROT.CARG_NOMB       IS 'Nombre de Cargo';
COMMENT ON COLUMN SST_VPROT.PROT_PROT       IS 'Id. Elemento de Proteccion';
COMMENT ON COLUMN SST_VPROT.PROT_NOMB       IS 'Nombre Elemento de Proteccion';