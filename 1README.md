
# 🚔 Traffic Violations Data Analysis

This project analyzes a dataset of traffic violations to uncover trends and insights based on factors like driver demographics, violations, and search/arrest outcomes.

## 📁 Dataset

* **File Name**: `traffic_violaions.csv`
* **Total Records**: 52,966
* **Features**: 15
* **Sample Columns**:

  * `stop_date`, `stop_time`
  * `driver_gender`, `driver_age`, `driver_race`
  * `violation`, `search_conducted`, `is_arrested`, `stop_duration`, etc.

---

## 🧹 Data Cleaning

* Removed irrelevant columns:

  * `country_name`, `search_type`, and `driver_age_raw`
* Dropped rows with missing `driver_gender`
* Filled missing `driver_age` with the **median age grouped by gender**
* Converted:

  * `stop_time` to hour (`stop_hour`)
  * `stop_duration` into numeric values:

    * `0-15 Min → 7.5`
    * `16-30 Min → 23`
    * `30+ Min → 45`
  * Boolean columns `search_conducted`, `drugs_related_stop` to integers
  * `stop_date` to datetime and extracted `stop_Year`

---

## 📊 Visualizations

Using Seaborn and Matplotlib:

### 1. Age Distribution by Gender

* Histogram with KDE showing how violations are distributed by age across genders.

### 2. Age Distribution by Violation Type

* Shows which age groups are most commonly involved in specific types of violations (e.g., speeding, DUI, etc.)

### 📈 Additional Metrics

* **Average Stop Duration by Driver Race**
* **Yearly Trends** of:

  * `search_conducted`
  * `drugs_related_stop`
* **Search and Arrest Analysis**:

  * Percentage of people arrested after being searched.

---

## 📦 Libraries Used

* `pandas`
* `numpy`
* `seaborn`
* `matplotlib`

---

## 🏁 How to Run

1. Install requirements (optional but recommended):

   ```bash
   pip install pandas numpy seaborn matplotlib
   ```

2. Run the script:

   ```bash
   python traffic_analysis.py
   ```

3. Ensure `traffic_violaions.csv` is in the same directory or provide the correct path.

---

## 📌 Output

* Cleaned dataframe with 49,580 records.
* Visual plots saved or shown using Matplotlib.
* Insights are shown in the poster.



---

## 📂 Project Structure

```
.
├── traffic_violaions.csv
├── Project.ipynb
├── poster.pdf
├── README.md
```


