-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         27/10/2021  Juan Manuel Velez   Creacion de Tabla Cargos de Elementos de Proteccion
-- ============ =========== ==================  ===================================================================
--
--
--
DROP TABLE SST_TCAPR;
--
CREATE TABLE SST_TCAPR(
                      CAPR_CAPR     SERIAL          
                    , CAPR_CARG     BIGINT          NOT NULL
                    , CAPR_PROT     BIGINT          NOT NULL
                    , CAPR_ACTI     BOOLEAN         NOT NULL  DEFAULT TRUE 
                    , CAPR_USER     VARCHAR         NOT NULL  DEFAULT USER
                    , CAPR_FECCRE   TIMESTAMP       NOT NULL  DEFAULT CURRENT_TIMESTAMP
                    , PRIMARY KEY(CAPR_CAPR)
                    , FOREIGN KEY(CAPR_CARG) REFERENCES SST_TCARG(CARG_CARG)
                    , FOREIGN KEY(CAPR_PROT) REFERENCES SST_TPROT(PROT_PROT)
                );

COMMENT ON TABLE  SST_TCAPR                 IS 'Contiene la informacion de los Cargos de Elementos de CAPReccion';
COMMENT ON COLUMN SST_TCAPR.CAPR_CAPR       IS 'Serial de Cargos de Elementos de CAPReccion';
COMMENT ON COLUMN SST_TCAPR.CAPR_CARG       IS 'Id. Cargo';
COMMENT ON COLUMN SST_TCAPR.CAPR_PROT       IS 'Id. Elemento de Proteccion';
COMMENT ON COLUMN SST_TCAPR.CAPR_ACTI       IS 'Activa o Inactiva';
COMMENT ON COLUMN SST_TCAPR.CAPR_USER       IS 'Usuario de creación';
COMMENT ON COLUMN SST_TCAPR.CAPR_FECCRE     IS 'Fecha de Creación';