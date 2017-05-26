#patients diagnosed with specific disease
use finalproject;
drop procedure if exists findPatientDisease;
DELIMITER //
CREATE PROCEDURE findPatientDisease (in diseaseToFind varchar(64))
BEGIN
  select p.patNum as 'Patient Number', concat(p.patFName, ' ', p.patLName) as 'Patient Name', p.patInitial as 'M.I.', 
  d.diseaseName as 'Disease', diag.diagDate as 'Date Diagnosed'
  from patient as p
  inner join diagnosishistory as diag on p.patNum = diag.patNum
  inner join disease as d on diag.diseaseNum = d.diseaseNum
  where d.diseaseName like concat('%', diseaseToFind, '%');
END //
DELIMITER ;

use finalproject;
call findPatientDisease('diabetes');