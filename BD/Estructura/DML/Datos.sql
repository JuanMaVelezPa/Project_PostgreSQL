-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         26/10/2021  Juan Manuel Velez   Insertar Datos Role y Usua
-- ============ =========== ==================  ===================================================================
--
--
--
-- SST_TROLE
INSERT INTO SST_TROLE VALUES(1,'admin');
INSERT INTO SST_TROLE VALUES(2,'sg-sst');
INSERT INTO SST_TROLE VALUES(3,'cocola');
INSERT INTO SST_TROLE VALUES(4,'copasst');
INSERT INTO SST_TROLE VALUES(5,'be');

-- SST_USUA
INSERT INTO SST_TUSUA VALUES(
                          'admin'                                   -- VARCHAR USUA_USUA                  
                        , MD5('admin')                              -- VARCHAR USUA_PASS
                        , 'Juan Manuel Velez Parra'                 -- VARCHAR USUA_NOMB        
                        , 1040748350                                -- INTEGER USUA_CEDU
                        , 3117208515                                -- INTEGER USUA_TELE    
                        , 'Unisabaneta - Medellin'                  -- VARCHAR USUA_DIRE          
                        , 'juanmavelezpa@gmail.com'                 -- VARCHAR USUA_CORR
                        , True                                      -- BOOLEAN USUA_INAD TRUE=Admin / FALSE=Mo
                        , 1                                         -- INTEGER USUA_ROLE
                        );