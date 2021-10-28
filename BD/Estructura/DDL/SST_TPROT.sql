-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         27/10/2021  Juan Manuel Velez   Creacion de Tabla Elementos de Proteccion
-- ============ =========== ==================  ===================================================================
--
--
--
DROP TABLE SST_TPROT;
--
CREATE TABLE SST_TPROT(
                      PROT_PROT     SERIAL          
                    , PROT_NOMB     VARCHAR         NOT NULL
                    , PROT_ACTI     BOOLEAN         NOT NULL  DEFAULT TRUE 
                    , PROT_USER     VARCHAR         NOT NULL  DEFAULT USER
                    , PROT_FECCRE   TIMESTAMP       NOT NULL  DEFAULT CURRENT_TIMESTAMP
                    , PRIMARY KEY(PROT_PROT)
                );

COMMENT ON TABLE  SST_TPROT                 IS 'Contiene la informacion de los Elementos de Proteccion';
COMMENT ON COLUMN SST_TPROT.PROT_PROT       IS 'Serial de Elementos de Proteccion';
COMMENT ON COLUMN SST_TPROT.PROT_NOMB       IS 'Nombre de Elementos de Proteccion';
COMMENT ON COLUMN SST_TPROT.PROT_ACTI       IS 'Activa o Inactiva';
COMMENT ON COLUMN SST_TPROT.PROT_USER       IS 'Usuario de creación';
COMMENT ON COLUMN SST_TPROT.PROT_FECCRE     IS 'Fecha de Creación';