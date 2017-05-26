#patients with medication for specific usage
use finalproject;
drop procedure if exists findPatientPrescriptions;
DELIMITER //
CREATE PROCEDURE findPatientPrescriptions (in patientName varchar(64))
BEGIN
  select p.patNum as 'Patient Number', concat(p.patFName, ' ', p.patLName) as 'Patient Name', p.patInitial as 'M.I.', 
  m.medName as 'Medication Name', presc.prescDate as 'Prescribed Date', a.ailName as 'Medication Usage'
  from patient as p
  inner join prescription as presc on p.patNum = presc.patNum
  inner join medication as m on presc.medNum = m.medNum
  inner join medicationuses as mu on m.medNum = mu.medNum
  inner join ailment as a on mu.ailNum = a.ailNum
  where concat(p.patFName, ' ', p.patLName) like concat('%', patientName, '%')
  order by p.patNum asc;
END //
DELIMITER ;

use finalproject;
call findPatientPrescriptions('W');