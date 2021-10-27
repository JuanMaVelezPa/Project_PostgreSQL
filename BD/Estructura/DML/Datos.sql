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

-- SST_TMODU
INSERT INTO SST_TMODU VALUES(1,'usuarios');
INSERT INTO SST_TMODU VALUES(2,'documentacion');
INSERT INTO SST_TMODU VALUES(3,'comites');
INSERT INTO SST_TMODU VALUES(4,'matrices');
INSERT INTO SST_TMODU VALUES(5,'reportes');

-- SST_TPERM
INSERT INTO SST_TPERM VALUES(1, 1 ,'admin-usuarios');               -- PERM_ROLE PERM_MODU PERM_NOMB        
INSERT INTO SST_TPERM VALUES(1, 2 ,'admin-documentacion');          -- PERM_ROLE PERM_MODU PERM_NOMB
INSERT INTO SST_TPERM VALUES(1, 3 ,'admin-comites');                -- PERM_ROLE PERM_MODU PERM_NOMB
INSERT INTO SST_TPERM VALUES(1, 4 ,'admin-matrices');               -- PERM_ROLE PERM_MODU PERM_NOMB
INSERT INTO SST_TPERM VALUES(1, 5 ,'admin-reportes');               -- PERM_ROLE PERM_MODU PERM_NOMB

-- SST_TUSUA
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