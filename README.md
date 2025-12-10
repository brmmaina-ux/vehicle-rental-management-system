Vehicle Rental Management System 

This project documents a custom database system I built for a UK vehicle hire company to streamline their weekly rental tracking, contract monitoring, service reminders, and compliance management. The original workflow relied on multiple Excel sheets, manual checks, and time-consuming follow-ups. I redesigned the entire process using a relational MS Access database.

1. Project Overview

The system manages the full workflow of a car rental business:
assigning vehicles to drivers
tracking weekly rental payments
maintaining service history
monitoring MOT and PCO expiry
managing balances and arrears
generating reminders
maintaining mechanic records
It replaces fragmented spreadsheets with one cohesive, normalized structure that preserves historical data and supports weekly resets without losing records.

2. Business Problems Solved
Before this system, the company faced several operational challenges:
Rental weeks were calculated manually and often mismatched
Drivers frequently missed MOT/PCO renewals
Vehicle service history was scattered across multiple columns
Balances and arrears had to be recalculated manually
Communication required drafting repetitive messages
Excel files created version confusion and errors

The database was built to eliminate these inefficiencies and support smarter, more reliable operations.

3. Solution Design
The system uses a fully normalized relational structure, including tables for:
Vehicles
Drivers
Vehicle Assignments (VA)
Rental Weeks
Weekly Rental Payments
Services
MOT and PCO records
Companies 

Core logic implemented
Weekly rental billing tied to rental week IDs instead of payment dates
Automatic balance carry-forward
Historical data stored after every weekly reset
Proper service tracking using row-based entries
MOT reminders, PCO reminders
Query-based automation for compliance and arrears

4. Weekly Rental Workflow
The system structures weekly billing in a clean, predictable cycle:
A driver is assigned to a vehicle → a VA record is created
Each new week generates a fresh WEEK ID
Payments received during that week are logged against the WEEK ID

The system calculates:
weekly rent
arrears
balance carried forward

At the end of the week, the VA table is archived and reset for the next week
This design ensures that no information is lost, and weekly reporting becomes consistent.

5. Service & Compliance Tracking (MOT & PCO)

The database maintains a structured history for every vehicle:
Service Tracking
last serviced date
type of service
future service intervals
MOT & PCO Tracking

Query-driven checks ensure no upcoming deadlines are missed
Everything is stored in properly indexed tables to maintain lifetime history.

6. Skills Demonstrated

Database design and normalization
MS Access development (tables, forms, queries, reports)
Data modeling and workflow logic
Operational systems thinking
Integrating databases with communication workflows
Designing compliance and renewal triggers

7. Future Enhancements

Web-based version using Django/Flask
Full WhatsApp Business API messaging
Automated PDF driver statements
Cloud-hosted database backend
Mobile dashboard for drivers
