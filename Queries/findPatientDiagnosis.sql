#patients diagnosed with specific disease
use finalproject;
drop procedure if exists findDiagnosisPatient;
DELIMITER //
CREATE PROCEDURE findDiagnosisPatient (in patName varchar(64))
BEGIN
  select p.patNum as 'Patient Number', concat(p.patFName, ' ', p.patLName) as 'Patient Name', p.patInitial as 'M.I.', 
  d.diseaseName as 'Disease', diag.diagDate as 'Date Diagnosed'
  from patient as p
  inner join diagnosishistory as diag on p.patNum = diag.patNum
  inner join disease as d on diag.diseaseNum = d.diseaseNum
  where concat(p.patFName, ' ', p.patLName) like concat('%', patName, '%')
  order by d.diseaseNum asc;
END //
DELIMITER ;

use finalproject;
call findDiagnosisPatient('t');