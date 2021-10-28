-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         27/10/2021  Juan Manuel Velez   Creacion de Tabla Productos
-- ============ =========== ==================  ===================================================================
--
--
--
DROP TABLE SST_TPROD;
--
CREATE TABLE SST_TPROD(
                      PROD_PROD     SERIAL
                    , PROD_NOMB     VARCHAR
                    , PROD_ACTI     BOOLEAN         NOT NULL  DEFAULT TRUE 
                    , PROD_USER     VARCHAR         NOT NULL  DEFAULT USER
                    , PROD_FECCRE   TIMESTAMP       NOT NULL  DEFAULT CURRENT_TIMESTAMP
                    , PRIMARY KEY(PROD_PROD)
                );

COMMENT ON TABLE  SST_TPROD                 IS 'Contiene la informacion del Producto ';
COMMENT ON COLUMN SST_TPROD.PROD_PROD       IS 'Serial del Producto';
COMMENT ON COLUMN SST_TPROD.PROD_NOMB       IS 'Nombre del Producto';
COMMENT ON COLUMN SST_TPROD.PROD_ACTI       IS 'Activa o Inactiva';
COMMENT ON COLUMN SST_TPROD.PROD_USER       IS 'Usuario de creación';
COMMENT ON COLUMN SST_TPROD.PROD_FECCRE     IS 'Fecha de Creación';