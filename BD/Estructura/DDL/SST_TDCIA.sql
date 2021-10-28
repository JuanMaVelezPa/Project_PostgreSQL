-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         27/10/2021  Juan Manuel Velez   Creacion de Tabla Documentos de la Empresa
-- ============ =========== ==================  ===================================================================
--
--
--
DROP TABLE SST_TDCIA;
--
CREATE TABLE SST_TDCIA(
                      DCIA_DCIA     SERIAL
                    , DCIA_TDOC     BIGINT          NOT NULL
                    , DCIA_TITU     VARCHAR
                    , DCIA_DESC     TEXT
                    , DCIA_FIRM     VARCHAR
                    , DCIA_ARCH     VARCHAR
                    , DCIA_FVEN     DATE
                    , DCIA_OBSE     TEXT
                    , DCIA_ACTI     BOOLEAN         NOT NULL  DEFAULT TRUE 
                    , DCIA_USER     VARCHAR         NOT NULL  DEFAULT USER
                    , DCIA_FECCRE   TIMESTAMP       NOT NULL  DEFAULT CURRENT_TIMESTAMP
                    , PRIMARY KEY(DCIA_DCIA)
                    , FOREIGN KEY(DCIA_TDOC) REFERENCES SST_TTDOC(TDOC_TDOC)
                );

COMMENT ON TABLE  SST_TDCIA                 IS 'Almacena los documentos de la Empresa';
COMMENT ON COLUMN SST_TDCIA.DCIA_DCIA       IS 'Serial de Documentos de la Empresa';
COMMENT ON COLUMN SST_TDCIA.DCIA_TDOC       IS 'Id. Tipo de Documento';
COMMENT ON COLUMN SST_TDCIA.DCIA_TITU       IS 'Para mostrar en la vista Ej: Politica de SG SST';
COMMENT ON COLUMN SST_TDCIA.DCIA_DESC       IS 'Texto para publicar o generar documento en pdf';
COMMENT ON COLUMN SST_TDCIA.DCIA_FIRM       IS 'Nombre de quien firma el documento';
COMMENT ON COLUMN SST_TDCIA.DCIA_ARCH       IS 'Nombre y ruta completa del archivo';
COMMENT ON COLUMN SST_TDCIA.DCIA_OBSE       IS 'Observacion';
COMMENT ON COLUMN SST_TDCIA.DCIA_ACTI       IS 'Activa o Inactiva';
COMMENT ON COLUMN SST_TDCIA.DCIA_USER       IS 'Usuario de creación';
COMMENT ON COLUMN SST_TDCIA.DCIA_FECCRE     IS 'Fecha de Creación';