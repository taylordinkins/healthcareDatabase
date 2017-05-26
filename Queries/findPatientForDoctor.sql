#patients assigned to specific doctor
use finalproject;
drop procedure if exists findPatientsForDoctor;
DELIMITER //
CREATE PROCEDURE findPatientsForDoctor (in docName varchar(64))
BEGIN
  select concat(d.docFName, ' ', d.docLName) as 'Doctor Name', d.docInitial as 'Doc M.I.', 
  dt.docTypeName as 'Doctor Type', 
  p.patNum as 'Patient Number', concat(p.patFName, ' ', p.patLName) as 'Patient Name', p.patInitial as 'M.I.' 
  from patient as p
  inner join patientdoctorlog as pdl on p.patNum = pdl.patNum
  inner join doctor as d on pdl.docNum = d.docNum
  inner join doctype as dt on d.docTypeNum = dt.docTypeNum
  where concat(d.docFName, ' ', d.docLName) like concat('%', docName, '%');
END //
DELIMITER ;

use finalproject;
call findPatientsForDoctor('king');