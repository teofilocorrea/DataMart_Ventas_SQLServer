# 🗂️ Diccionario de Datos – Capa RAW  
**Proyecto:** DataMart_Ventas_SQLServer  
**Propósito:** Esta capa actúa como repositorio *espejo* de las fuentes originales (CSV/Excel).  
Los datos se almacenan **sin transformaciones ni validaciones**, preservando el formato fuente para trazabilidad y auditoría.

> 💡 En esta fase no se aplican claves primarias, constraints ni conversiones.  
> Cada tabla incluye columnas técnicas de auditoría para trazabilidad.

---

## 🧾 Tablas y Estructura

### 1️⃣ `raw.account`
| Columna              | Tipo de dato       | Descripción |
|----------------------|--------------------|-------------|
| AccountDescription   | NVARCHAR(4000)     | Descripción textual de la cuenta. |
| AccountKey           | NVARCHAR(4000)     | Identificador de la cuenta (fuente). |
| AccountLabel         | NVARCHAR(4000)     | Código o etiqueta del registro. |
| AccountName          | NVARCHAR(4000)     | Nombre de la cuenta. |
| AccountType          | NVARCHAR(4000)     | Tipo de cuenta (por ejemplo: ingreso, gasto). |
| CustomMemberOptions  | NVARCHAR(4000)     | Opciones personalizadas. |
| CustomMembers        | NVARCHAR(4000)     | Miembros personalizados definidos en la fuente. |
| ETLLoadID            | NVARCHAR(4000)     | Identificador de carga o lote. |
| Operator             | NVARCHAR(4000)     | Operador responsable o usuario fuente. |
| ParentAccountKey     | NVARCHAR(4000)     | Clave padre de la cuenta (relación jerárquica). |
| ValueType            | NVARCHAR(4000)     | Tipo de valor o naturaleza del dato. |
| ingestion_ts         | DATETIME2(3)       | Fecha/hora de carga al sistema. |
| source_name          | NVARCHAR(200)      | Nombre del archivo o fuente. |

---

### 2️⃣ `raw.date`
| Columna              | Tipo de dato       | Descripción |
|----------------------|--------------------|-------------|
| DateKey              | NVARCHAR(4000)     | Fecha base o clave de calendario. |
| DayOfMonth           | NVARCHAR(4000)     | Día del mes. |
| MonthNumber          | NVARCHAR(4000)     | Número de mes. |
| FirstOfMonth         | NVARCHAR(4000)     | Fecha del primer día del mes. |
| ShortMonth           | NVARCHAR(4000)     | Abreviatura del mes (Ene, Feb, etc.). |
| MonthName            | NVARCHAR(4000)     | Nombre completo del mes. |
| MonthNumberYear      | NVARCHAR(4000)     | Código compuesto de mes y año. |
| Week                 | NVARCHAR(4000)     | Semana (número o etiqueta). |
| WeekNumber           | NVARCHAR(4000)     | Número de semana. |
| DayOfWeek            | NVARCHAR(4000)     | Día de la semana (1–7). |
| QuarterFull          | NVARCHAR(4000)     | Trimestre completo (Q1, Q2...). |
| Qrt                  | NVARCHAR(4000)     | Abreviatura de trimestre. |
| QuarterYear          | NVARCHAR(4000)     | Trimestre + año. |
| Year                 | NVARCHAR(4000)     | Año. |
| FirstOfYear          | NVARCHAR(4000)     | Primer día del año. |
| ingestion_ts         | DATETIME2(3)       | Fecha/hora de carga al sistema. |
| source_name          | NVARCHAR(200)      | Nombre del archivo o fuente. |

---

### 3️⃣ `raw.entity`
| Columna              | Tipo de dato       | Descripción |
|----------------------|--------------------|-------------|
| EntityKey            | NVARCHAR(4000)     | Identificador único de la entidad. |
| EntityLabel          | NVARCHAR(4000)     | Código o etiqueta del registro. |
| ParentEntityKey          | NVARCHAR(4000)     | Identificador de la entidad “padre” dentro de la jerarquía organizacional. Permite establecer relaciones de dependencia o agrupación entre entidades. |
| ParentEntityLabel    | NVARCHAR(4000)     | Identificador de la entidad superior (si aplica). |
| EntityName           | NVARCHAR(4000)     | Nombre de la entidad. |
| EntityDescription    | NVARCHAR(4000)     | Descripción de la entidad. |
| EntityType           | NVARCHAR(4000)     | Tipo o categoría de la entidad. |
| StartDate            | NVARCHAR(4000)     | Fecha de inicio de validez. |
| EndDate              | NVARCHAR(4000)     | Fecha de finalización de validez. |
| Status               | NVARCHAR(4000)     | Estado actual de la entidad. |
| ingestion_ts         | DATETIME2(3)       | Fecha/hora de carga al sistema. |
| source_name          | NVARCHAR(200)      | Nombre del archivo o fuente. |

---

### 4️⃣ `raw.product_category`
| Columna              | Tipo de dato       | Descripción |
|----------------------|--------------------|-------------|
| ProductCategoryKey   | NVARCHAR(4000)     | Identificador de la categoría. |
| ProductCategoryLabel | NVARCHAR(4000)     | Código o etiqueta del registro. |
| ProductCategoryName  | NVARCHAR(4000)     | Nombre de la categoría de producto. |
| ProductCategoryDescription | NVARCHAR(4000) | Descripción de la categoría. |
| ingestion_ts         | DATETIME2(3)       | Fecha/hora de carga al sistema. |
| source_name          | NVARCHAR(200)      | Nombre del archivo o fuente. |

---

### 5️⃣ `raw.scenario`
| Columna              | Tipo de dato       | Descripción |
|----------------------|--------------------|-------------|
| ScenarioKey          | NVARCHAR(4000)     | Identificador del escenario. |
| ScenarioLabel        | NVARCHAR(4000)     | Código o etiqueta del escenario. |
| ScenarioName         | NVARCHAR(4000)     | Nombre descriptivo del escenario. |
| ScenarioDescription  | NVARCHAR(4000)     | Descripción del escenario. |
| ingestion_ts         | DATETIME2(3)       | Fecha/hora de carga al sistema. |
| source_name          | NVARCHAR(200)      | Nombre del archivo o fuente. |

---

### 6️⃣ `raw.strategy_plan`
| Columna              | Tipo de dato       | Descripción |
|----------------------|--------------------|-------------|
| StrategyPlanKey      | NVARCHAR(4000)     | Identificador único del registro de estrategia. |
| DateKey              | NVARCHAR(4000)     | Clave de fecha asociada al plan. |
| EntityKey            | NVARCHAR(4000)     | Clave de la entidad. |
| ScenarioKey          | NVARCHAR(4000)     | Clave del escenario. |
| AccountKey           | NVARCHAR(4000)     | Clave de cuenta vinculada. |
| CurrencyKey          | NVARCHAR(4000)     | Moneda o tipo de divisa. |
| ProductCategoryKey   | NVARCHAR(4000)     | Categoría de producto. |
| Amount               | NVARCHAR(4000)     | Valor numérico registrado (importe). |
| ingestion_ts         | DATETIME2(3)       | Fecha/hora de carga al sistema. |
| source_name          | NVARCHAR(200)      | Nombre del archivo o fuente. |

---
## 🧱 Convenciones de diseño – Proyecto DataMartVentas

| Elemento | Convención | Ejemplo |
|-----------|-------------|----------|
| **Esquema** | Cada capa usa un esquema dedicado: `raw`, `stg`, `dim`, `fact`. | `stg.Account`, `dim.ProductCategory` |
| **Estilo de nombres** | Se utiliza **PascalCase** para tablas y columnas (`AccountKey`, `AccountType`). Los esquemas se mantienen en minúscula (`raw`, `stg`, `dim`, `fact`). | `raw.Account`, `AccountDescription` |
| **Tipos de dato (por capa)** | - **RAW:** `NVARCHAR(4000)` para texto, `DATETIME2(3)` para auditoría.<br> - **STAGING:** tipos ajustados (`INT`, `DECIMAL`, `DATE`, `NVARCHAR(255)`).<br> - **DIM/FACT:** tipos finales optimizados para análisis y BI. | — |
| **Convención de claves** | - **PK:** siempre singular con sufijo `Key` (`AccountKey`).<br> - **FK:** prefijo según la tabla referenciada (`AccountKey`, `DateKey`). | `FactStrategyPlan.AccountKey` |
| **Columnas técnicas** | Toda tabla debe incluir columnas para trazabilidad:<br> - `ingestion_ts`: fecha/hora de carga (UTC).<br> - `source_name`: origen de los datos.<br> - `row_hash` *(opcional)*: control de cambios. | `SYSUTCDATETIME()`, `'raw.Account'` |
| **Comentarios y documentación** | Cada tabla y columna debe incluir `sp_addextendedproperty` para describir su propósito. | `MS_Description` |
| **Reglas generales** | - Evitar abreviaturas.<br> - No usar espacios, acentos ni caracteres especiales.<br> - Nombres en singular.<br> - Evitar prefijos como “tbl_”. | Correcto: `FactSales`<br>Incorrecto: `tbl_fact_sales` |

---

💡 **Conclusión:**  
El estilo **PascalCase** se alinea con estándares empresariales de SQL Server, facilitando la legibilidad y documentación.  
Lo importante es mantenerlo **consistente** en todas las capas del modelo (**RAW → STG → DIM/FACT**).