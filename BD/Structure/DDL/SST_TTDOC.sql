-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         27/10/2021  Juan Manuel Velez   Creacion de Tabla Tipos de Documento
-- ============ =========== ==================  ===================================================================
--
--
--
DROP TABLE SST_TTDOC;
--
CREATE TABLE SST_TTDOC(
                      TDOC_TDOC     SERIAL          
                    , TDOC_NOMB     VARCHAR         NOT NULL
                    , TDOC_ACTI     BOOLEAN         NOT NULL  DEFAULT TRUE 
                    , TDOC_USER     VARCHAR         NOT NULL  DEFAULT USER
                    , TDOC_FECCRE   TIMESTAMP       NOT NULL  DEFAULT CURRENT_TIMESTAMP
                    , PRIMARY KEY(TDOC_TDOC)
                );

COMMENT ON TABLE  SST_TTDOC                 IS 'Almacena los tipos de documento como diploma, curso 50 horas, politica de la empresa';
COMMENT ON COLUMN SST_TTDOC.TDOC_TDOC       IS 'Serial de Tipos de Documento';
COMMENT ON COLUMN SST_TTDOC.TDOC_NOMB       IS 'Nombre de Tipos de Documento';
COMMENT ON COLUMN SST_TTDOC.TDOC_ACTI       IS 'Activa o Inactiva';
COMMENT ON COLUMN SST_TTDOC.TDOC_USER       IS 'Usuario de creación';
COMMENT ON COLUMN SST_TTDOC.TDOC_FECCRE     IS 'Fecha de Creación';