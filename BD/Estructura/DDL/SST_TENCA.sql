-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         26/10/2021  Juan Manuel Velez   Creacion de Tabla Encargados
-- ============ =========== ==================  ===================================================================
--
--
--
DROP TABLE SST_TENCA;
--
CREATE TABLE SST_TENCA(
                  ENCA_ENCA           INTEGER         NOT NULL
                , ENCA_NOMB           VARCHAR         NOT NULL    --CHECK(LENGTH(ENCA_NOMB > 5))
                , ENCA_APEL           VARCHAR         NOT NULL    --CHECK(LENGTH(ENCA_APEL > 2))
                , ENCA_NVST           DECIMAL(6,0)    NOT NULL    CHECK(ENCA_NVST IN(1,5)) 
                , ENCA_RTHV           VARCHAR         NOT NULL
                , ENCA_RTDP           VARCHAR         NOT NULL
                , ENCA_CERT50H        VARCHAR         NOT NULL
                , ENCA_CERT20H        VARCHAR         NOT NULL
                , ENCA_CERTSAL        VARCHAR         NOT NULL
                , ENCA_USER           VARCHAR         NOT NULL  DEFAULT USER
                , ENCA_FECCRE         DATE            NOT NULL  DEFAULT CURRENT_DATE
                , PRIMARY KEY(ENCA_ENCA)
            );

COMMENT ON TABLE  SST_TENCA              IS 'Encargados';
COMMENT ON COLUMN SST_TENCA.ENCA_ENCA    IS 'Tipo de numero de comprobante fiscal.';
COMMENT ON COLUMN SST_TENCA.ENCA_NOMB    IS 'Tipo de auxiliar.';
COMMENT ON COLUMN SST_TENCA.ENCA_APEL    IS 'Fecha de creación.';
COMMENT ON COLUMN SST_TENCA.END_NVST     IS 'Nivel de Estudio: -- 1.Tecnologico 2. Profesional 3. EspecializaciÃ³n 4. Magister 5. Posgrado';
COMMENT ON COLUMN SST_TENCA.ENCA_RTHV    IS 'Ruta HV del encargado.';
COMMENT ON COLUMN SST_TENCA.ENCA_RTDP    IS 'Ruta diploma del encargado.';
COMMENT ON COLUMN SST_TENCA.ENCA_CERT50H IS 'Ruta cert. de 50 hras del encargado.';
COMMENT ON COLUMN SST_TENCA.ENCA_CERT20H IS 'Ruta cert. de 20 hras del encargado.';
COMMENT ON COLUMN SST_TENCA.ENCA_CERTSAL IS 'Ruta cert. de salud del encargado.';
COMMENT ON COLUMN SST_TENCA.ENCA_USER    IS 'Usuario.';
COMMENT ON COLUMN SST_TENCA.ENCA_FECCRE  IS 'Fecha de creacion.';
