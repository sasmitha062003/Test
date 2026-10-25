**Spreadsheet Notes**

**Setup**

&#x09;• Source file imported: data/orders\_enriched.csv

&#x09;• Tab names created:

&#x20;                orders

&#x09;	 products

&#x09;• Rows imported into orders sheet: 90

&#x09;• Products sheet range: A1:C10

&#x09;• order\_month values were retained as text (2026-09, 2026-10, 2026-11)

&#x09;• Filter applied before creating completed\_orders:

&#x09;	○ status = completed

&#x09;• Sort applied:

&#x09;	○ amount sorted from highest to lowest

&#x09;• XLOOKUP fallback test:

&#x09;	○ Test key: Mystery Item

&#x09;	○ Result returned: UNKNOWN\_ITEM



**Formulas Used:**

clean\_first\_name

&#x20;    =PROPER(TRIM(C2))

clean\_last\_name

&#x20;    =PROPER(TRIM(D2))

category

&#x20;    =VLOOKUP(G2,Products!$A$2:$C$10,2,FALSE)

unit\_price

&#x20;     =XLOOKUP(G2,Products!$A$2:$A$10,Products!$C$2:$C$10,"UNKNOWN\_ITEM")

revenue\_calc

&#x20;     =N2\*H2



**Aggregate Results:**

|Metric|Value|
|-|-|
|Count|63|
|Sum|346200|
|Average|5495.24|
|Min|1100|
|Max|15600|





**Pivot Table 1 - Revenue by Category and Region:**

|**Category**|**East**|**North**|**South**|**West**|**Grand Total**|
|-|-|-|-|-|-|
|Apparel|10600|19400|10000|37500|77500|
|Electronics|21400|73400|28700|18800|142300|
|Home|37500|26500|43800|18600|126400|
|Grand Total|69500|119300|82500|74900|346200|





**Pivot Table 2 - Revenue and Orders by Month:**

|Order\_month|Sum of amount|Count of order\_id|
|-|-|-|
|2026-09| 98300|19|
|2026-10| 93100|20|
|2026-11|154800|24|
|Grand Total|346200|63|





**Reconciliation:**



|Metric|Spreadsheet|SQL q05	|Match/Mismatch|
|-|-|-|-|
|Count|63|63|Match|
|Sum|346200|346200|Match|
|Average|5495.24|5495.24|Match|



**Data Validation:**

**Missing Amounts**

The following orders contained missing amount values in the original dataset:

&#x09;• Order ID 1001

&#x09;• Order ID 1010

&#x09;• Order ID 1064

&#x09;

These values originated as NULL values in the source data and were left blank during CSV export. They were not replaced with zero because a value of zero would incorrectly imply a recorded transaction amount.



**Data Type Validation:**

The following fields were verified as numeric:

&#x09;• quantity

&#x09;• amount

&#x09;• unit\_price

&#x09;• revenue\_calc

Calculations, summary statistics, and pivot tables were successfully performed, confirming that the values were stored as numbers rather than text.



The field order\_month was preserved as text in the format:

2026-09

2026-10

2026-11



**Duplicate Order Check:**

No duplicate order\_id values were found among completed orders.

Outlier Review

The largest completed-order amount is:

15600



Order IDs with amount = 15600:

&#x09;• 1061

&#x09;• 1065

&#x09;• 1069

&#x09;• 1077

These transactions correspond to valid high-value purchases and were retained.



**Documentation Decision:**

Absolute cell references were used in lookup formulas (for example $A$2:$C$10) to ensure that copied formulas continue to reference the correct lookup ranges.



**Conclusion:**

The spreadsheet layer successfully reconciles with the SQL reporting layer.

&#x09;• Completed Orders = 63

&#x09;• Revenue = 346200

&#x09;• Average Order Value = 5495.24

All reconciliation checks passed successfully.



