-- ========================================
-- 01_db_description.sql
-- Documenta la base de datos principal (DatamartSales)
-- mediante MS_Description para uso técnico y portafolio
-- Autor: Teófilo Correa Rojas
-- Fecha: Octubre 08 2025
-- ========================================

USE DatamartSales
GO

-- 🧾 Documentación de la base de datos
EXEC sys.sp_addextendedproperty
     @name = N'MS_Description',
     @value = N'Base de datos educativa y técnica que simula un flujo ETL completo en SQL Server: desde la ingesta en RAW, limpieza en STAGING y modelado dimensional en DataMart. Desarrollada como proyecto formativo de ingeniería y análisis de datos.';
GO