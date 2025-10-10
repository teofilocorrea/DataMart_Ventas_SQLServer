-- ========================================
-- Archivo: create_raw_date.sql
-- Descripción: Poblar el tabla account
-- Autor: Teófilo Correa Rojas
-- Fecha: Octubre 10 2025
-- ========================================

USE DatamartSales
GO

CREATE TABLE raw.Date
(
    -- RAW = espejo 100% textual del archivo (sin convertir tipos)

    DateKey             NVARCHAR(4000) NULL,
    DayOfMonth          NVARCHAR(4000) NULL,
    MonthNumber         NVARCHAR(4000) NULL,
    FirstOfMonth        NVARCHAR(4000) NULL,
    ShortMonth          NVARCHAR(4000) NULL,
    MonthName           NVARCHAR(4000) NULL,
    MonthNumberYear     NVARCHAR(4000) NULL,
    Week                NVARCHAR(4000) NULL,
    WeekNumber          NVARCHAR(4000) NULL,
    DayOfWeek           NVARCHAR(4000) NULL,
    QuarterFull         NVARCHAR(4000) NULL,
    Qrt                 NVARCHAR(4000) NULL,
    QuarterYear         NVARCHAR(4000) NULL,
    Year                NVARCHAR(4000) NULL,
    FirstOfYear         NVARCHAR(4000) NULL,

    -- Auditoría mínima
    ingestion_ts DATETIME2(3)   NOT NULL
        CONSTRAINT DF_raw_DimDate_ingestion_ts DEFAULT (SYSUTCDATETIME()),
    source_name  NVARCHAR(200)  NOT NULL
        CONSTRAINT DF_raw_DimDate_source_name DEFAULT (N'DimDate.csv')
);
GO