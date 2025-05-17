

# 🚖 Ride Booking Data Analysis

This project is focused on analyzing booking data from a ride-sharing platform using **SQL for data preprocessing** and **Power BI for interactive visualization**. The goal is to uncover business insights such as ride trends, customer behavior, cancellation patterns, revenue distribution, and ratings analysis.

---

## 🛠️ Tech Stack

* **Database**: MySQL
* **Visualization**: Power BI
* **Language**: SQL

---

## 📂 What Was Done

### 1. **Database Creation & SQL View Setup**

* A database named `Rides` was created.
* The `bookings` table contains various fields like `Booking_ID`, `Vehicle_Type`, `Booking_Status`, `Payment_Method`, `Ride_Distance`, `Ratings`, and more.
* Multiple **SQL views** were created to:

  * Filter successful bookings.
  * Analyze ride distances by vehicle type.
  * Count cancellations by customers or drivers.
  * Identify top customers.
  * Evaluate payment methods.
  * Calculate booking revenue.
  * Summarize ratings and incomplete rides.



---

### 2. **Power BI Dashboard Development**

* Power BI was connected to the SQL views for live data access.
* Interactive reports were designed and categorized into themes:

  * **Overall** trends and status distribution.
  * **Vehicle-based** usage and ratings.
  * **Revenue** by payment method and customer.
  * **Cancellation analysis** by reason.
  * **Ratings insights** from drivers and customers.

Each section includes clear visuals such as bar charts, pie charts, line graphs, scatter plots, and more to aid business decision-making.

---

## 📁 Files Included

```
.
├── README.md               # Project overview
├── rides.sql               # SQL code for views and queries
├── vehicle.pbix        # Power BI dashboard file
├── bookings.csv  # Sample data (if applicable)
```

---

## ✅ Outcomes

* Streamlined ride data into structured SQL views.
* Built a dynamic Power BI dashboard for quick insights.
* Enabled performance, customer, and operational analysis for Ola.


