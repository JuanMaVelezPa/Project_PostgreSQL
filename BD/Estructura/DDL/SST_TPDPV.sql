-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         27/10/2021  Juan Manuel Velez   Creacion de Tabla PDPVuctos del Proveedor
-- ============ =========== ==================  ===================================================================
--
--
--
DROP TABLE SST_TPDPV;
--
CREATE TABLE SST_TPDPV(
                      PDPV_PDPV     SERIAL          
                    , PDPV_PROV     BIGINT          NOT NULL
                    , PDPV_PROD     BIGINT          NOT NULL
                    , PDPV_FSEG     VARCHAR
                    , PDPV_VIDA     INTEGER
                    , PDPV_ACTI     BOOLEAN         NOT NULL  DEFAULT TRUE 
                    , PDPV_USER     VARCHAR         NOT NULL  DEFAULT USER
                    , PDPV_FECCRE   TIMESTAMP       NOT NULL  DEFAULT CURRENT_TIMESTAMP
                    , PRIMARY KEY(PDPV_PDPV)
                    , FOREIGN KEY(PDPV_PROV) REFERENCES SST_TPROV(PROV_PROV)
                    , FOREIGN KEY(PDPV_PROD) REFERENCES SST_TPROD(PROD_PROD)
                );

COMMENT ON TABLE  SST_TPDPV                 IS 'Contiene la informacion de los Productos del Proveedor ';
COMMENT ON COLUMN SST_TPDPV.PDPV_PDPV       IS 'Serial de los Productos del Proveedor';
COMMENT ON COLUMN SST_TPDPV.PDPV_PROV       IS 'Id. Proveedor';
COMMENT ON COLUMN SST_TPDPV.PDPV_PROD       IS 'Id. Producto';
COMMENT ON COLUMN SST_TPDPV.PDPV_FSEG       IS 'Ruta completa y nombre del archivo de la ficha';
COMMENT ON COLUMN SST_TPDPV.PDPV_VIDA       IS 'Vida Util en Meses';
COMMENT ON COLUMN SST_TPDPV.PDPV_ACTI       IS 'Activa o Inactiva';
COMMENT ON COLUMN SST_TPDPV.PDPV_USER       IS 'Usuario de creación';
COMMENT ON COLUMN SST_TPDPV.PDPV_FECCRE     IS 'Fecha de Creación';