#all appoints for specific doctor
use finalproject;
drop procedure if exists findDoctorAppointments;
DELIMITER //
CREATE PROCEDURE findDoctorAppointments (in docName varchar(64))
BEGIN
  select concat(d.docFName, ' ', d.docLName) as 'Doctor Name', d.docInitial as 'Doc M.I.', 
  p.patNum as 'Patient Number', concat(p.patFName, ' ', p.patLName) as 'Patient Name', p.patInitial as 'M.I.',
  a.appDate as 'Appointment Date', o.officeName as 'Office Name', o.officeAddressLine1 as 'Address1', 
  o.officeAddressLine2 as 'Address2', o.officeCity as 'Office City', o.officeState as 'Office State', o.officeZip as 'Office Zip',
  o.officePhone as 'Phone'
  from patient as p
  inner join appointment as a on p.patNum = a.patNum
  inner join doctor as d on a.docNum = d.docNum
  inner join office as o on a.officeNum = o.officeNum
  where concat(d.docFName, ' ', d.docLName) like concat('%', docName, '%');
END //
DELIMITER ;

use finalproject;
call findDoctorAppointments('doe');