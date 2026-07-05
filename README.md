# HR-Employee-Attrition-Analysis
Analyzed IBM HR dataset of 1,470 employees using Python, SQL and Power BI to identify key attrition drivers and build an interactive dashboard
## Business Problem
IBM wants to understand why employees are leaving 
and identify high-risk profiles to reduce attrition 
and save recruitment costs.

## Dataset
- Source: IBM HR Analytics Dataset (Kaggle)
- Size: 1,470 employees, 35 features
- Target variable: Attrition (Yes/No)
## Tools Used
-Excel(for collecting dataset)
- Python (Pandas, Matplotlib, Seaborn) — EDA
- MySQL — Data querying
- Power BI — Interactive dashboard
- 
## Key Findings
1. Overall attrition rate: 16.1%
2. Sales Representatives: 40% attrition (highest)
3. OverTime employees: 3x more likely to leave
4. Age 18-25 group: 35% attrition rate
5. Low salary (<₹5K) strongly linked to leaving

## Project Structure
📁 data/ — raw and cleaned CSV files
📁 notebooks/ — Python EDA notebook
📁 sql/ — MySQL queries
📁 powerbi/ — Power BI dashboard file

## Dashboard Preview
<img width="1167" height="666" alt="Screenshot 2026-07-05 092202" src="https://github.com/user-attachments/assets/bcb287a7-6848-49e2-b035-f9c47786c84a" />
<img width="1168" height="666" alt="Screenshot 2026-07-05 092212" src="https://github.com/user-attachments/assets/ce956091-2b2a-421e-ad08-65686e551a8c" />
<img width="1167" height="667" alt="Screenshot 2026-07-05 092224" src="https://github.com/user-attachments/assets/033b5835-fa5f-4b3c-801a-d8b9639a56d7" />

## How to Run
1. Clone this repo
2. Run notebooks/hr_attrition_eda.ipynb
3. Open powerbi/hr_dashboard.pbix




