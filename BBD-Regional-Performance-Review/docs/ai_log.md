**Task 1: Five-Part Prompt for q13**



Role: Act as a senior SQL data analyst who specialises in sales reporting and business performance analysis.



Task: Write an SQL query for q13 to analyse each sales representative's monthly revenue and compare it with their monthly target.



Context: The database contains these tables:

&#x09;• reps: rep\_id, rep\_name, region, monthly\_target

&#x09;• customers: customer\_id, first\_name, last\_name, city, region, age, rep\_id

&#x09;• orders: order\_id, customer\_id, item, quantity, amount, status, order\_month

The relationships are reps.rep\_id = customers.rep\_id and customers.customer\_id = orders.customer\_id. Use MySQL syntax.



Constraints:

&#x09;1. Include completed orders only when calculating revenue.

&#x09;2. Group the results by representative, order month and monthly target.

&#x09;3. Classify performance as Below Target when revenue is below the monthly target, On Target when revenue is at least the target but below 1.1 times the target, and Above Target otherwise.

&#x09;4. Do not use WITH clauses or stored procedures.

&#x09;5. Do not reference aggregate aliases in WHERE or GROUP BY. Write the aggregate expression directly inside the CASE expression used to determine the performance tier.

&#x09;6. Return the columns rep\_name, order\_month, monthly\_target, revenue and performance\_tier, ordered by representative name and order month.



Format: Return raw SQL only, with inline comments explaining the business logic.





**Task 2. Scenario D1 — Identify the four defects**

|**Defect**|**Classification**|**Correct Fix**|
|-|-|-|
|sales table does not exist|Fake method/function|Use orders, customers and reps|
|region\_name does not exist|Fake method/function|Use customers.region|
|total\_sales does not exist|Fake method/function|Use orders.amount|
|SUM(total\_sales) in WHERE|Logic error|Use HAVING|
|38% growth claim unsupported|Phantom statistic|Calculate actual percentage|





**Task 3 - Scenario D1 Verification**



**Corrected Query Result**

|**Region**|**Revenue**|
|-|-|
|North|119300|
|South|82500|





**North's Month-over-Month Revenue Verification**

September Revenue = 53500

October Revenue = 41300

((41300 - 53500) / 53500) \* 100

= -22.8%



**North's Month-over-Month Revenue Verification**

North's actual month-over-month revenue change from September 2026 to October 2026 is -22.8%, based on the q11 monthly revenue results. This indicates that North's revenue decreased rather than grew. Therefore, the assistant's claim that North's revenue grew by 38% is contradicted by the data and must be rejected.



**Conclusion**

The assistant claimed North revenue grew by 38%.

The actual calculation shows a decline of 22.8%.

The assistant's claim is contradicted by the data.



**Task 4. Human-in-the-loop verification protocol**



**Human-in-the-Loop Protocol — Scenario D1**

1\. Specification: The original question asked which regions sell the most. Before accepting an answer, the business question must be defined clearly. In this project, revenue means the sum of amount for completed orders only, and the region revenue threshold is INR 80,000.

2\. Execution: I examined the assistant's original SQL query and executed the corrected query against the actual database tables. The corrected query joins orders and customers, filters completed orders, groups by region and applies the INR 80,000 threshold using HAVING.

3\. Inspection: I inspected the SQL and identified four defects: the non-existent sales table, the non-existent region\_name and total\_sales columns, the aggregate condition incorrectly placed in WHERE, and the unsupported claim of 38% revenue growth.

4\. Verification: I checked the corrected query results against the supplied dataset and compared North's September and October revenue using the q11 monthly report. The corrected regional query returns North with INR 119,300 and South with INR 82,500. North's actual month-over-month change is -22.8%, not positive 38% growth.

5\. Decision: Reject the original answer because it uses invalid schema references, incorrect aggregate filtering and an unsupported statistic. Accept the corrected query after confirming that it runs successfully and returns the expected two rows. The regional results and q11 monthly figures provide the verification evidence.



**5. Scenario D2 — VLOOKUP error**

**Task 5: Five-Part Prompt for Scenario D2**



Role: Act as an experienced spreadsheet analyst who specialises in Excel and Google Sheets lookup formulas.

Task: Identify why a VLOOKUP formula returns an error even though the lookup item exists in the source table, and provide a corrected formula.

Context: The actual formula is =VLOOKUP(G2, $A$2:$C$10, 3, FALSE). Cell G2 on the orders tab contains the text Smart Watch, with a leading space. The products tab occupies A1, with item names in column A and unit prices in column C. The expected behaviour is to return the unit price of Smart Watch using an exact match.

Constraints: Preserve the exact-match argument FALSE, keep the lookup range absolute, do not change the source data unnecessarily, and explain the root cause before suggesting the fix.

Format: Provide the root cause in plain English, followed by the corrected formula and a brief explanation of how it works.



**Root cause**

The lookup value in cell G2 contains a leading space before Smart Watch. Therefore, the value does not exactly match Smart Watch in the products table. Since FALSE requires an exact match, the formula returns an error.

Repaired formula





=VLOOKUP(TRIM(G2), $A$2:$C$10, 3, FALSE)



Explanation: TRIM(G2) removes the unnecessary leading and trailing spaces before searching. The absolute range $A$2:$C$10 remains fixed when the formula is copied.



**6. Skeptical-analyst check for Part C**

**Task 6: Skeptical-Analyst Prompt**



Role: Act as a skeptical senior business analyst who challenges recommendations before management approves promotional spending.

Task: Critically evaluate my recommendation to increase promotional spending in North because North generated INR 119,300 in completed-order revenue.

Context: The project analyses completed-order revenue across regions, categories and months using the supplied orders, customers, products and reps tables. Revenue excludes pending and disputed orders. The q11 report provides regional and monthly figures, and the q13 report compares sales representatives' revenue with their targets.

Constraints: Identify at least three unstated assumptions behind the recommendation. Do not treat correlation as proof of causation. For each assumption, specify a figure, comparison or additional data check that could confirm or weaken it. Distinguish what the current dataset proves from what still needs investigation.

Format: Return a table with the columns Assumption, Evidence or Check, and How the Result Could Affect the Recommendation. Finish with a short, evidence-based conclusion.



**Three unstated assumptions and verification checks**

|**Unstated assumption**|**Figure or check**|**How it could affect the recommendation**|
|-|-|-|
|North's revenue is consistently strong.|Compare North's completed-order revenue for September, October and November using q11.|A declining trend may indicate that additional spending needs investigation rather than automatic approval.|
|Promotional spending will increase revenue.|Compare revenue before and after a promotion, ideally against a comparable region without the promotion.|Higher revenue alone does not prove that the promotion caused the increase.|
|North has sufficient product stock to support more demand.|Check inventory availability, stockouts and category-level sales before planning a promotion.|Limited stock could prevent the business from benefiting from additional demand.|



