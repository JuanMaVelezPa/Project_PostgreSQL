-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         27/10/2021  Juan Manuel Velez   Creacion de Tabla Documentos de los Proveedores
-- ============ =========== ==================  ===================================================================
--
--
--
DROP TABLE SST_TPROV;
--
CREATE TABLE SST_TPROV(
                      PROV_PROV     SERIAL
                    , PROV_NOMB     VARCHAR
                    , PROV_NIT      VARCHAR
                    , PROV_CARL     VARCHAR
                    , PROV_ACEC     VARCHAR
                    , PROV_AUTO     BOOLEAN         NOT NULL
                    , PROV_SESC     VARCHAR
                    , PROV_TEL1     VARCHAR
                    , PROV_TEL2     VARCHAR
                    , PROV_EMAI     VARCHAR
                    , PROV_TPEM     VARCHAR
                    , PROV_ACTI     BOOLEAN         NOT NULL  DEFAULT TRUE 
                    , PROV_USER     VARCHAR         NOT NULL  DEFAULT USER
                    , PROV_FECCRE   TIMESTAMP       NOT NULL  DEFAULT CURRENT_TIMESTAMP
                    , PRIMARY KEY(PROV_PROV)
                );

COMMENT ON TABLE  SST_TPROV                 IS 'Contiene la informacion delProveedor ';
COMMENT ON COLUMN SST_TPROV.PROV_PROV       IS 'Serial del Proveedor';
COMMENT ON COLUMN SST_TPROV.PROV_NOMB       IS 'Nombre del Proveedor';
COMMENT ON COLUMN SST_TPROV.PROV_NIT        IS 'Nit del Proveedor';
COMMENT ON COLUMN SST_TPROV.PROV_CARL       IS 'Certificado de ARL';
COMMENT ON COLUMN SST_TPROV.PROV_ACEC       IS 'Actividad Economica';
COMMENT ON COLUMN SST_TPROV.PROV_AUTO       IS 'Indica si esta autorizado por las autoridades de salud para la compra de los insumos necesarios para ejecuciÃ³n del sistema';
COMMENT ON COLUMN SST_TPROV.PROV_SESC       IS 'Seguridad Social';
COMMENT ON COLUMN SST_TPROV.PROV_TEL1       IS 'Telefono N1';
COMMENT ON COLUMN SST_TPROV.PROV_TEL2       IS 'Telefono N2';
COMMENT ON COLUMN SST_TPROV.PROV_EMAI       IS 'Email del Proveedor';
COMMENT ON COLUMN SST_TPROV.PROV_TPEM       IS 'Tipo de Proveedor';
COMMENT ON COLUMN SST_TPROV.PROV_ACTI       IS 'Activa o Inactiva';
COMMENT ON COLUMN SST_TPROV.PROV_USER       IS 'Usuario de creación';
COMMENT ON COLUMN SST_TPROV.PROV_FECCRE     IS 'Fecha de Creación';