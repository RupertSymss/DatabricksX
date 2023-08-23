-- Databricks notebook source
-- MAGIC %md
-- MAGIC #####Create catalogs & schemas
-- MAGIC 1. catalog - formula1dev (without managed location)
-- MAGIC 2. schemas - bronze, silver & gold (with managed locations)

-- COMMAND ----------

create catalog if not exists formula1_dev;

-- COMMAND ----------

create schema if not exists formula1_dev.bronze
managed location "abfss://bronze@extdl.dfs.core.windows.net/"

-- COMMAND ----------

create schema if not exists formula1_dev.silver
managed location "abfss://silver@extdl.dfs.core.windows.net/"

-- COMMAND ----------

create schema if not exists formula1_dev.gold
managed location "abfss://gold@extdl.dfs.core.windows.net/"