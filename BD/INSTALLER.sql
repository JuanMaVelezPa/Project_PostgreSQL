-- 
-- Universidad de Sabaneta
-- PostgreSQL
-- Team: 23
--
-- Version: 0000001000
--
-- VERSION      DATE        DEVELOPER           OBSERVATION
-- ============ =========== ==================  ===================================================================
-- 1000         26/10/2021  Juan Manuel Velez   Instalador de Proyecto
-- ============ =========== ==================  ===================================================================
--
--
--
-- \i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/INSTALLER.sql;
--
-- DB
\echo ========================================================================================
\echo ========================================== DB ==========================================
\echo DDL.sql
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/DDL.sql;
--
-- Select db_sst
\echo ========================================================================================
\echo ========================================== DB ==========================================
\echo db_sst
\c db_sst;
--
-- DROP TABLES
\echo ========================================================================================
\echo ===================================== DROP - TABLES ====================================
DROP TABLE IF EXISTS SST_TPERM CASCADE;
DROP TABLE IF EXISTS SST_TUSUA CASCADE;
DROP TABLE IF EXISTS SST_TROLE CASCADE;
DROP TABLE IF EXISTS SST_TMODU CASCADE;
DROP TABLE IF EXISTS SST_TENCA CASCADE;
DROP TABLE IF EXISTS SST_TCIAS CASCADE;
DROP TABLE IF EXISTS SST_TPROV CASCADE;
DROP TABLE IF EXISTS SST_TPROD CASCADE;
DROP TABLE IF EXISTS SST_TPDPV CASCADE;
DROP TABLE IF EXISTS SST_TNVST CASCADE;
DROP TABLE IF EXISTS SST_TRSSG CASCADE;
DROP TABLE IF EXISTS SST_TTDOC CASCADE;
DROP TABLE IF EXISTS SST_TAREA CASCADE;
DROP TABLE IF EXISTS SST_TCARG CASCADE;
DROP TABLE IF EXISTS SST_TEMPL CASCADE;
DROP TABLE IF EXISTS SST_TEMRO CASCADE;
DROP TABLE IF EXISTS SST_TDEMP CASCADE;
DROP TABLE IF EXISTS SST_TEMRO CASCADE;
DROP TABLE IF EXISTS SST_TDCIA CASCADE;
DROP TABLE IF EXISTS SST_TPROT CASCADE;
DROP TABLE IF EXISTS SST_TCAPR CASCADE;
--
-- CREATE TABLES
\echo ========================================================================================
\echo ======================================== TABLES ========================================
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_TENCA.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_TMODU.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_TROLE.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_TUSUA.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_TPERM.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_TCIAS.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_TPROV.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_TPROD.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_TPDPV.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_TNVST.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_TRSSG.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_TTDOC.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_TAREA.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_TCARG.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_TEMPL.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_TEMRO.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_TDEMP.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_TEMRO.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_TDCIA.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_TPROT.sql;
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_TCAPR.sql;
--
-- CREATE VIEWS
\echo ========================================================================================
\echo ======================================== VIEWS =========================================
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DDL/SST_VPROT.sql;
--
-- DATOS
\echo ========================================================================================
\echo ======================================== DATA =========================================
\i C:/Users/PERSONAL/Desktop/JuanMa/PostgreSQL/Project_PostgreSQL/BD/Structure/DML/Datos.sql;
--
\echo ========================================================================================
\echo ======================================== COMMIT ========================================
COMMIT;
--