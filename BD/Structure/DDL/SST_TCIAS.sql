-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         27/10/2021  Juan Manuel Velez   Creacion de Tabla de las Empresas
-- ============ =========== ==================  ===================================================================
--
--
--
DROP TABLE SST_TCIAS;
--
CREATE TABLE SST_TCIAS(
                      CIAS_CIAS     SERIAL
                    , CIAS_NOMB     VARCHAR
                    , CIAS_NIT      VARCHAR
                    , CIAS_GERF     VARCHAR
                    , CIAS_ACEC     VARCHAR
                    , CIAS_NVRG     VARCHAR
                    , CIAS_CTTR     VARCHAR --es un campo calculado
                    , CIAS_NTJR     VARCHAR
                    , CIAS_TEL1     VARCHAR
                    , CIAS_TEL2     VARCHAR
                    , CIAS_TEL3     VARCHAR
                    , CIAS_EMAI     VARCHAR
                    , CIAS_TPEM     VARCHAR
                    , CIAS_ACTI     BOOLEAN         NOT NULL  DEFAULT TRUE
                    , CIAS_USER     VARCHAR         NOT NULL  DEFAULT USER
                    , CIAS_FECCRE   TIMESTAMP       NOT NULL  DEFAULT CURRENT_TIMESTAMP
                    , PRIMARY KEY(CIAS_CIAS)
                );

COMMENT ON TABLE  SST_TCIAS                 IS 'Contiene la informacion de la Empresa ';
COMMENT ON COLUMN SST_TCIAS.CIAS_CIAS       IS 'Serial de la Empresa';
COMMENT ON COLUMN SST_TCIAS.CIAS_NOMB       IS 'Nombre de la empresa';
COMMENT ON COLUMN SST_TCIAS.CIAS_NIT        IS 'Nit de la empresa';
COMMENT ON COLUMN SST_TCIAS.CIAS_GERF       IS 'GeoReferenciacion de la empresa';
COMMENT ON COLUMN SST_TCIAS.CIAS_ACEC       IS 'Actividad Economica';
COMMENT ON COLUMN SST_TCIAS.CIAS_NVRG       IS 'Nivel de Riesgo';
COMMENT ON COLUMN SST_TCIAS.CIAS_CTTR       IS 'Cantidad de Trabajadores -- es un campo calculado';
COMMENT ON COLUMN SST_TCIAS.CIAS_NTJR       IS 'Naturaleza Juridica';
COMMENT ON COLUMN SST_TCIAS.CIAS_TEL1       IS 'Telefono N1';
COMMENT ON COLUMN SST_TCIAS.CIAS_TEL2       IS 'Telefono N2';
COMMENT ON COLUMN SST_TCIAS.CIAS_TEL3       IS 'Telefono N3';
COMMENT ON COLUMN SST_TCIAS.CIAS_EMAI       IS 'Email de la Empresa';
COMMENT ON COLUMN SST_TCIAS.CIAS_TPEM       IS 'Tipo de Empresa';
COMMENT ON COLUMN SST_TCIAS.CIAS_ACTI       IS 'Activa o Inactiva';
COMMENT ON COLUMN SST_TCIAS.CIAS_USER       IS 'Usuario de creación';
COMMENT ON COLUMN SST_TCIAS.CIAS_FECCRE     IS 'Fecha de Creación';