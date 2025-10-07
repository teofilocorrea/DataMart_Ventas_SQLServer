-- ========================================
-- 01_create_database.sql
-- Crea la base de datos principal
-- Autor: Teófilo Correa Rojas
-- Fecha: Octubre 07 2025
-- ========================================

CREATE DATABASE DatamartSales
    ON PRIMARY (
    NAME = DatamartSales_Data,
    FILENAME = '/var/opt/mssql/data/DatamartSales_Data.mdf',
    SIZE = 10 MB,
    MAXSIZE = 100 MB,
    FILEGROWTH = 5 MB
    )
    LOG ON (
    NAME = DatamartSales_Log,
    FILENAME = '/var/opt/mssql/data/DatamartSales_Log.ldf',
    SIZE = 5 MB,
    MAXSIZE = 50 MB,
    FILEGROWTH = 5 MB
    );
GO