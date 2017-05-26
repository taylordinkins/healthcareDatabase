#patients with medication for specific usage
use finalproject;
drop procedure if exists findPatientImmunizations;
DELIMITER //
CREATE PROCEDURE findPatientImmunizations (in patientName varchar(64))
BEGIN
  select p.patNum as 'Patient Number', concat(p.patFName, ' ', p.patLName) as 'Patient Name', p.patInitial as 'M.I.', 
  i.immName as 'Immunization Name', d.diseaseName as 'Disease Name', imm.dateReceived as 'Date Received'
  from patient as p
  inner join immunizationhistory as imm on p.patNum = imm.patNum
  inner join immunization as i on imm.immNum = i.immNum
  inner join disease as d on i.diseaseNum = d.diseaseNum
  where concat(p.patFName, ' ', p.patLName) like concat('%', patientName, '%')
  order by p.patNum asc, d.diseaseNum asc;
END //
DELIMITER ;

use finalproject;
call findPatientImmunizations('W');