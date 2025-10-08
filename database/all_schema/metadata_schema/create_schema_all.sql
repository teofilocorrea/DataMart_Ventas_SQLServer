-- ========================================
-- Archivo: meta_schema_analytic.sql, meta_schema_raw.sql, meta_schema_staging.sql
-- Descripción: Documenta los esquemas principales del sistema DatamartSales
-- Esquemas incluidos: analytic, raw y staging
-- Autor: Teófilo Correa Rojas
-- Fecha: Octubre 08 2025
-- ========================================

USE DatamartSales
GO

-- 🧾 Descripción: Comentario profesional a un esquema en SQL Server
EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Capa analítica final del modelo estrella. Contiene las tablas de dimensiones y hechos listas para el consumo en herramientas de BI como Power BI o Tableau.',
     @level0type = 'SCHEMA', @level0name = 'analytic';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Contiene las tablas espejo provenientes de fuentes externas (CSV o Excel). Los datos se almacenan sin transformación para preservar su estructura y trazabilidad original.',
     @level0type = 'SCHEMA', @level0name = 'raw';
GO

EXEC sys.sp_addextendedproperty
     @name = 'MS_Description',
     @value = N'Capa intermedia donde los datos se limpian, validan y transforman antes de ser cargados en el modelo dimensional. Aquí se aplican conversiones de tipo, normalización y controles de calidad.',
     @level0type = 'SCHEMA', @level0name = 'staging';
GO