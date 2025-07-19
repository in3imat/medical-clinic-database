-- Most Visited Doctors (by Number of Appointments) .

SELECT d.FirstName + ' ' + d.LastName AS DoctorName, COUNT(a.id) AS AppointmentCount
FROM Doctors d inner join Appointments a ON d.id = a.Doctor_id
GROUP BY d.FirstName, d.LastName
ORDER BY AppointmentCount DESC;

-- Today's Appointments with Patient and Doctor Details .

SELECT 
    a.AppointmentDate,
    p.FirstName + ' ' + p.LastName AS [Patient Name],
    d.FirstName + ' ' + d.LastName AS [Doctor Name],
    a.Status, a.Reason
FROM Appointments a inner join Doctors d ON a.Doctor_id = d.id
                    inner join Patients p ON a.Patient_id = p.id
                    WHERE Convert(date,a.AppointmentDate) = Convert(date,GETDATE())

-- Find doctors who have not billed any aomount yet .

select Doctors.FirstName + ' ' + Doctors.LastName as [Doctor Name] , Billing.Status , Billing.Amount
from Doctors left join Billing 
on Billing.Doctor_id =Doctors.id 
where Status!= 'paid'

-- Calculate the total billing amount for each doctor .

select d.FirstName + ' ' + d.LastName as [Doctor Name] , sum (b.Amount)
from doctors d inner join Billing b
on b.Doctor_id=d.id
group by  d.FirstName,d.LastName 

-- Retrieve a list of patients along with their total bills .

select p.FirstName + ' ' + p.LastName as [Patients Name] , sum (b.Amount)
from Patients p inner join Billing b
on b.Patient_id=p.id
group by  p.FirstName,p.LastName ;

-- Find the doctor(s) with the highest total total billing amount .

select top 1 d.FirstName  , sum (b.Amount)
from doctors d inner join Billing b
on b.Doctor_id=d.id
group by d.FirstName
order by SUM(b.Amount) desc

-- Retrieve doctors along with the total count of appointments for a specific date .

select d.FirstName + ' ' + d.LastName as [Doctor Name] , COUNT(a.id)
from Doctors d inner join Appointments a
on a.Doctor_id=d.id
where convert (date,a.AppointmentDate)= CONVERT(date,'2025-07-22')
group by d.FirstName , d.LastName 

-- Find the doctor with the highest number of appointments .

select top 1 d.FirstName + ' ' + d.LastName as [Doctor Name] , COUNT(a.id)
from Doctors d inner join Appointments a
on a.Doctor_id=d.id
group by d.FirstName , d.LastName
order by COUNT(a.id) desc

-- List doctors who ave treated more than 1 unique pateints . 

select  d.FirstName + ' ' + d.LastName as [Doctor Name] , COUNT(distinct m.Patient_id)
from Doctors d inner join MedicalRecords m
on m.Doctor_id=d.id
group by d.FirstName , d.LastName

-- Retrieve a list of patients along with their total bills for patients whose bills are greater than 80 .

select p.FirstName + ' ' + p.LastName as [Patient Name] , sum (b.Amount)
from Patients p left join Billing b
on b.Patient_id=p.id
group by  p.FirstName,p.LastName
having SUM(b.Amount) > 90

-- Calcualte the total billing amount for each date .

select BillingDate , SUM(Amount)
from Billing
group by BillingDate

-- Calculate the average age of patients . 

select AVG(DATEDIFF(YEAR,DOB,GETDATE()))
from Patients

-- List patients who have appointments secheduled in the next 7 days .

select p.FirstName + ' ' +p.LastName as [Patient Name] , a.AppointmentDate
from Patients p inner join Appointments a 
on a.Patient_id=p.id 
where a.AppointmentDate between GETDATE() and DATEADD(DAY,4,GETDATE())

-- Find patients who have not visited the clinic the last 3 months .

select * 
From Patients 
where id not in (select Patient_id
                 from Appointments
				 where AppointmentDate between  DATEADD(MONTH,-3,GETDATE()) and GETDATE() )

-- Find doctors who have not had any appointments in the lasst 30 days .

select FirstName + ' ' + LastName as [Doctor Name] 
From Doctors 
where id not in (select Doctor_id
                 from Appointments
				 where AppointmentDate between  DATEADD(DAY,-30,GETDATE()) and GETDATE() )
