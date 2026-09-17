--1. Count appointments by Status 
SELECT Status, 
  COUNT(Status) as Appointment_Count
FROM cleaned_dental_appointments
GROUP by Status;
--2. Booking Lead Time VS Cancellations
SELECT Status, 
  Days_Booked_in_advance, 
  COUNT(Status) as Appointment_Count
FROM cleaned_dental_appointments
WHERE Status ='Cancelled'
GROUP by Status,
days_booked_in_advance;
--3. Appointment type vs Cancellations 
SELECT Status, 
  appointment_type,
  COUNT (Status) 
FROM cleaned_dental_appointments
WHERE Status ='Cancelled'
GROUP by Status,
appointment_type;
--4. Average Wait Time for each Provider
SELECT AVG (wait_time_minutes), 
  Provider
FROM cleaned_dental_appointments
GROUP BY Provider;
--5. Provider vs Cancellations 
SELECT Status, 
  Provider,
COUNT (Status) 
FROM cleaned_dental_appointments
WHERE Status= 'Cancelled'
GROUP BY Status, Provider;
--6.Insurance vs Cancellations
SELECT Status, 
  Corrected_insurance,
COUNT (Status) 
FROM cleaned_dental_appointments
WHERE Status= 'Cancelled'
GROUP BY Status, corrected_insurance
ORDER BY count desc;
