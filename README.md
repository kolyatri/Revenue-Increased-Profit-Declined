# Revenue Growth, Profit Collapse – Unit Economics Diagnostic Case Study

A full **end-to-end business diagnostic investigation** using **SQL (PostgreSQL)** for structured economic analysis and **Power BI** for executive-level reporting.

The goal of this project is to investigate:

- revenue growth drivers
- margin deterioration
- cost structure changes
- discount impact
- segment-level economic performance

using a simulated e-commerce dataset.

This project is designed as a **professional portfolio case** focused on structured KPI decomposition, unit economics thinking, and executive storytelling.

---

## Business Context

The **CFO** identified that revenue increased significantly in March compared to February.

However:

- Profit declined sharply.
- Margin collapsed.

The objective was to:

- identify the root cause of profit deterioration
- quantify the financial impact
- validate whether the issue was segment-specific or systemic
- present findings in a clear executive format
- provide a measurable recommended action

Available datasets:

- `users.csv`
- `sessions.csv`
- `orders.csv`
- `events.csv`

---

## Analytical Framework

Profit was decomposed using a structured business model:

> **Profit = Revenue − Cost − Discount**

The investigation followed a systematic diagnostic approach:

1. **KPI validation**
2. **Profit decomposition**
3. **Segment validation (channel, country, device)**
4. **Financial impact quantification**
5. **Executive framing**

This ensured analysis moved from high-level performance to structural economic root cause.

---

## Key Findings

- Revenue increased by **52%**
- Profit declined by **68%**
- Margin collapsed from **38.6% → 8.2%**
- Cost ratio increased from **59.9% → 82.3%**
- Discount ratio increased from **1.5% → 9.5%**

**Primary issue identified:**

> **Severe systemic margin compression driven by cost and discount expansion**

Revenue growth was not translating into profitability.

---

## Economic Decomposition

Despite higher order volume and increased AOV:

- Cost absorbed most of the revenue increase
- Discount expansion further compressed margins
- Profitability deteriorated across all performance segments

The issue was not revenue generation —  
it was unit economics destruction.

---

## Segment Insights

Margin collapse was observed:

- Across all acquisition channels
- Across all countries
- Across desktop and mobile devices

Revenue mix remained relatively stable.

This confirms:

- No channel-specific inefficiency
- No geographic anomaly
- No device-related issue

The deterioration was **system-wide**, not segment-driven.

---

## Financial Impact

If March had maintained February cost structure:

- Expected Profit ≈ **23.7k**
- Actual Profit = **5.0k**
- Estimated Lost Profit ≈ **18.7k**

> Nearly 19k in profit erosion occurred due to structural cost and discount changes.

This quantification confirms material financial damage.

---

## Root Cause

Profit collapse was primarily driven by:

- Increased cost ratio
- Expanded discount policy

Not by:

- Traffic decline
- Conversion issues
- Revenue contraction

The issue is located in **economic structure**, not demand generation.

---

## Recommended Action

Initiate a structured review of:

- Supplier pricing
- Cost drivers
- Operational expense changes
- Promotional and discount policy

Immediate focus should be placed on restoring margin stability.

**Target:**

> Recover margin from ~8% toward historical ~35–40% range

---

## Tools Used

- **PostgreSQL**
- **SQL** (CTEs, aggregation, window functions)
- **Power BI**
- **DAX measures**
- **Unit economics framework**

---

## Power BI Dashboard

The analysis was translated into a clean executive dashboard designed for rapid stakeholder clarity.

### Page 1 – Executive Diagnostic

**Purpose:**  
Show magnitude, cause, and financial damage.

Includes:

- KPI summary (Revenue, Profit, Margin)
- Profit waterfall (Revenue → Cost → Discount → Profit)
- Margin collapse comparison
- Financial impact quantification (~18.7k loss)

---

### Page 2 – Segment Confirmation

**Purpose:**  
Validate whether the issue is systemic or segment-specific.

Includes:

- Margin by acquisition channel
- Margin by country
- Margin by device

The dashboard was designed with a clear narrative flow:

**Page 1 = What happened + Financial damage**  
**Page 2 = Where it happened**

---

## Repository Structure

Revenue-Profit-Diagnostic/
│
├── data/
├── sql/
├── powerbi/
├── report/
└── README.md

---

## What This Case Demonstrates

- Structured KPI validation
- Unit economics decomposition
- Margin analysis
- Segment confirmation logic
- Financial impact quantification
- Executive-level communication
- Business-oriented storytelling