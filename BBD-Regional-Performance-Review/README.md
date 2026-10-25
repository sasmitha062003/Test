**Big Billion Days Regional Performance Review**



Project Overview

This project analyses Flipkart Big Billion Days sales performance using SQL, spreadsheet analysis, dashboard specification and AI-assisted verification. The workflow moves from database reporting, to spreadsheet reconciliation, to dashboard design and finally AI output validation.



Tools Used

SQL Compiler and Dialect

&#x09;• SQL Tool: MySQL Workbench

&#x09;• SQL Dialect: MySQL

Spreadsheet Tool

&#x09;• Microsoft Excel

Dashboard Tool

&#x09;• Tableau Public methodology was followed for the dashboard specification.

&#x09;• Dashboard requirements were documented in docs/dashboard\_spec.md.



Key Findings

&#x09;1. Total completed-order revenue was ₹346,200 across 63 completed orders.

&#x09;2. North generated the highest regional revenue at ₹119,300, while South generated ₹82,500.

&#x09;3. Electronics was the strongest category with ₹142,300 in revenue, outperforming Home (₹126,400) and Apparel (₹77,500).



Repository File Index

Part A – SQL Reporting Layer

&#x09;• sql/00\_schema\_and\_seed.sql

&#x09;• sql/q01.sql to sql/q13.sql

&#x09;• results/query\_results.md

&#x09;• data/orders\_enriched.csv

Part B – Spreadsheet Cleaning and Pivot Layer

&#x09;• docs/spreadsheet\_notes.md

&#x09;• data/orders\_clean.csv

Part C – Dashboard Specification and Business Narrative

&#x09;• docs/dashboard\_spec.md

Part D – AI-Assisted Analysis and Verification

&#x09;• sql/d1\_corrected.sql

&#x09;• docs/ai\_log.md



Assumptions

&#x09;1. NULL amount values were left blank because replacing them with zero would incorrectly represent transaction values.

&#x09;2. Revenue is defined as the sum of amount from completed orders only, as specified in the assignment.

&#x09;3. order\_month values were preserved as text values in the format YYYY-MM throughout spreadsheet processing and CSV export.



