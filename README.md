Netflix Data Pipeline with Snowflake & dbt

Overview

This project demonstrates an end-to-end data engineering pipeline inspired by Netflix-style analytics using Snowflake and dbt (Data Build Tool).

The goal is to simulate how raw data (e.g., movies/shows datasets) can be transformed into clean, analytics-ready datasets for insights and reporting.

It follows the ELT (Extract, Load, Transform) paradigm:

Extract raw data
Load into S3 bucket to Snowflake
Transform using dbt models
Such pipelines are commonly used to derive insights like user preferences, trends, and recommendations

Architecture

Raw Data (CSV / Source)
        ↓
Store in AWS S3 bucket
         ↓
Load into Snowflake (Data Warehouse - RAW Layer)
        ↓
dbt (Transformations & Modeling)
        ↓
Analytics-ready Tables (Fact & Dimension)

Key Layers:
Raw Layer – Ingested data from source
Staging Layer – As is Raw data, minor changes applied
Intermediate Layer – Fact and dimension table created(Star schema)
Mart Layer – Final fact and dimension tables join

Tech Stack
Snowflake – Cloud Data Warehouse
dbt (Data Build Tool) – Data transformation & modeling
SQL – Core transformation language
GitHub – Version control

Features
✅ End-to-end ELT pipeline
✅ Modular SQL transformations using dbt
✅ Data quality testing
✅ Scalable cloud warehouse (Snowflake)
✅ Layered data modeling (staging → marts)

Workflow
1. Load Data into AWS s3
2. Upload raw dataset into Snowflake tables
3. Run dbt Models: dbt run
4. Test Data Quality: dbt test
5. Generate Documentation: dbt docs generate dbt docs serve

Key Concepts Used
ELT vs ETL
Data Warehousing
Dimensional Modeling (Fact & Dimension tables)
dbt Models & Macros
Data Testing & Documentation

This layered modeling approach is a best practice in dbt pipelines .
