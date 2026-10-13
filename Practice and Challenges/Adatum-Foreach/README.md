# Adatum PowerShell Foreach Challenges

## Challenge 01 - List the Lab Computers

**Run Location:** Personal Windows PC (local practice)

**Purpose:** Use a PowerShell array and foreach loop to display three Adatum lab computer names.

**Observed Result:**
- Computer: LON-CL1
- Computer: LON-DC1
- Computer: LON-SVR1

**Validation:** Script executed successfully and displayed exactly three computer names in the required order.

**Reflection Question:** Which variable contains the whole collection and which contains one item?

**Answer:** `$computers` contains the entire collection. `$computer` represents one computer name at a time during each loop iteration.

**Lab VM Validation:** Pending execution on LON-CL1.
