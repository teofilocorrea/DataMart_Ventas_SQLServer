![Portada del Proyecto](notebook/assets/banner_datamark_teofiocorrea.png)

# 📊 DataMart de Ventas – SQL Server

Este repositorio contiene la construcción de un **DataMart de Ventas en SQL Server**, simulando un flujo profesional de **Data Engineering**:  

- **RAW (Bronze):** ingesta de fuentes planas (CSV/Excel).  
- **STAGING (Silver):** depuración y estandarización de datos.  
- **DIM/FACT (Gold):** modelado en estrella para análisis de negocio.  

El proyecto incluye **EDA**, modelado dimensional, documentación técnica y scripts SQL.  

---

## 🎯 Objetivos
- Simular un flujo completo de **ingesta → limpieza → modelado**.  
- Aplicar buenas prácticas de **ETL manual en SQL**.  
- Desarrollar un **modelo estrella** con tablas de dimensiones y hechos.  
- Generar un dataset confiable para **Power BI / DataSpell**.  

---

## 📂 Estructura del repositorio

📦 DataMart_Ventas_SQLServer
 ┣ 📂 1_raw         # Archivos originales y tablas RAW
 ┣ 📂 2_staging     # Tablas staging con limpieza y ajustes
 ┣ 📂 3_dim_fact    # Tablas finales de dimensiones y hechos
 ┣ 📂 docs          # Documentación y diagramas
 ┣ 📜 README.md     # Documentación principal del proyecto

---

## 📊 Modelo Estrella
**Dimensiones:**
- dim_account  
- dim_date  
- dim_entity  
- dim_product_category  
- dim_scenario  

**Hechos:**
- fact_strategy_plan  

👉 Relaciones: cada dimensión se conecta en relación **1–N** hacia la tabla de hechos.

---

## ✅ Tecnologías utilizadas
- **SQL Server 2019** (DataGrip / DataSpell como IDE).  
- **Git & GitHub** para control de versiones.  
- **Excel/CSV** como fuentes de datos.  
- **Power BI** para visualización (fase final).  

---

## 👤 Autor
**Teófilo Correa Rojas**  
UX/UI Designer • Data Engineer en formación  
[🌐 LinkedIn](https://www.linkedin.com/in/teófilo-correa-rojas/) · [💻 GitHub](https://github.com/teofilocorrea)