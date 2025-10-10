-- ========================================
-- Archivo: create_raw_entity.sql
-- Descripción: Poblar el tabla account
-- Autor: Teófilo Correa Rojas
-- Fecha: Octubre 10 2025
-- ========================================

USE DatamartSales
GO

CREATE TABLE raw.Entity
(
    -- RAW = espejo 100% textual del archivo (sin convertir tipos)

    EntityKey              NVARCHAR(4000) NULL,
    EntityLabel            NVARCHAR(4000) NULL,
    ParentEntityKey        NVARCHAR(4000) NULL,
    ParentEntityLabel      NVARCHAR(4000) NULL,
    EntityName             NVARCHAR(4000) NULL,
    EntityDescription      NVARCHAR(4000) NULL,
    EntityType             NVARCHAR(4000) NULL,
    StartDate              NVARCHAR(4000) NULL,
    EndDate                NVARCHAR(4000) NULL,
    Status                 NVARCHAR(4000) NULL,

    -- Auditoría mínima
    ingestion_ts DATETIME2(3)   NOT NULL
        CONSTRAINT DF_raw_DimEntity_ingestion_ts DEFAULT (SYSUTCDATETIME()),
    source_name  NVARCHAR(200)  NOT NULL
        CONSTRAINT DF_raw_DimEntity_source_name DEFAULT (N'DimEntity.csv')
);
GO