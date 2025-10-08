-- ========================================
-- Archivo: 01_raw_Account.sql
-- Descripción: Crea tabla (raw)
-- Autor: Teófilo Correa Rojas
-- Fecha: Octubre 08 2025
-- ========================================

USE DatamartSales
GO

CREATE TABLE raw.Account
(
    -- RAW = espejo 100% textual del archivo (sin convertir tipos)

    AccountDescription      NVARCHAR(4000) NULL,
    AccountKey              NVARCHAR(4000) NULL,
    AccountLabel            NVARCHAR(4000) NULL,
    AccountName             NVARCHAR(4000) NULL,
    AccountType             NVARCHAR(4000) NULL,
    CustomMemberOptions     NVARCHAR(4000) NULL,
    CustomMembers           NVARCHAR(4000) NULL,
    ETLLoadID               NVARCHAR(4000) NULL,
    Operator                NVARCHAR(4000) NULL,
    ParentAccountKey        NVARCHAR(4000) NULL,
    ValueType               NVARCHAR(4000) NULL,

    -- Auditoría mínima
    ingestion_ts DATETIME2(3)   NOT NULL
        CONSTRAINT DF_raw_DimAccount_ingestion_ts DEFAULT (SYSUTCDATETIME()),
    source_name  NVARCHAR(200)  NOT NULL
        CONSTRAINT DF_raw_DimAccount_source_name DEFAULT (N'DimAccount.csv')
);
GO