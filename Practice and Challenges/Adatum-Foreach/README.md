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

**Validation:** Successfully executed on my personal Windows PC. The foreach loop displayed all three computer names (LON-CL1, LON-DC1, and LON-SVR1) in the correct order without errors.


---

## Challenge 02 - Build Domain Qualified Names

**Run Location:** Personal Windows PC (local practice)

**Purpose:** Use a foreach loop to combine computer names with the Adatum.com domain.

**Observed Result:**
- LON-CL1.Adatum.com
- LON-DC1.Adatum.com
- LON-SVR1.Adatum.com

**Validation:** Script successfully generated three fully qualified domain names.

**Reflection:** Creating an FQDN does not verify that a computer exists or is reachable. This script only combines strings.

**Validation:** Successfully executed on my personal Windows PC. The foreach loop generated all three fully qualified domain names using the Adatum.com domain without errors.


---

## Challenge 03 - Inspect Local Services

**Run Location:** Personal Windows PC (local practice)

**Purpose:** Use Get-Service and a foreach loop to inspect EventLog, W32Time, and Spooler without modifying their configuration.

**Observed Result:**
- EventLog: [Enter actual status]
- W32Time: [Enter actual status]
- Spooler: [Enter actual status]

**Validation:** The script retrieved each available service and displayed its actual Name and Status.

**Reflection Question:** Why can service status differ between two students?

**Answer:** Service status can differ because computers have different configurations, installed software, startup settings, and active workloads. Some services start automatically, while others run only when needed.

**Validation:** Successfully executed on my personal Windows PC. The foreach loop retrieved and displayed the Name and Status of all three Windows services (EventLog, W32Time, and Spooler) without errors.


---

## Challenge 04 - Count Local Services

**Run Location:** Personal Windows PC (local practice)

**Purpose:** Use Get-Service and a foreach loop to display every local Windows service name and maintain a counter.

**Observed Result:**
- Total Services: [ENTER YOUR ACTUAL TOTAL]

**Validation:** Successfully executed on my personal Windows PC. The foreach loop displayed each local service name and counted the total number of services. The final counter matched the Count property of the captured service array.

**Reflection Question:** What happens if you reset the counter inside the loop?

**Answer:** Resetting the counter to zero inside the foreach loop would cause the counter to restart with every iteration. Instead of accumulating the total number of services, it would finish at 1 if the collection contains at least one service.

**Validation:** Successfully executed on my personal Windows PC. The foreach loop displayed each local Windows service name and counted the total number of services. The final counter matched the Count property of the captured service array.



