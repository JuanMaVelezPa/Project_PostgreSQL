-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         27/10/2021  Juan Manuel Velez   Creacion de Tabla Niveles de Estudio
-- ============ =========== ==================  ===================================================================
--
--
--
DROP TABLE SST_TNVST;
--
CREATE TABLE SST_TNVST(
                      NVST_NVST     SERIAL          
                    , NVST_NOMB     VARCHAR         NOT NULL
                    , NVST_ACTI     BOOLEAN         NOT NULL  DEFAULT TRUE 
                    , NVST_USER     VARCHAR         NOT NULL  DEFAULT USER
                    , NVST_FECCRE   TIMESTAMP       NOT NULL  DEFAULT CURRENT_TIMESTAMP
                    , PRIMARY KEY(NVST_NVST)
                );

COMMENT ON TABLE  SST_TNVST                 IS 'Contiene la informacion de Niveles de Estudio ';
COMMENT ON COLUMN SST_TNVST.NVST_NVST       IS 'Serial de Niveles de Estudio';
COMMENT ON COLUMN SST_TNVST.NVST_NOMB       IS 'Nombre de niveles de estudio';
COMMENT ON COLUMN SST_TNVST.NVST_ACTI       IS 'Activa o Inactiva';
COMMENT ON COLUMN SST_TNVST.NVST_USER       IS 'Usuario de creación';
COMMENT ON COLUMN SST_TNVST.NVST_FECCRE     IS 'Fecha de Creación';