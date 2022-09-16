# Databricks notebook source
import os
spark.read.format("csv").load(f"file:{os.getcwd()}/updates.csv").show()
