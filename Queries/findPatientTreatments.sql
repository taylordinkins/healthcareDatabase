#patients treated for specific ailment
use finalproject;
drop procedure if exists findPatientTreatment;
DELIMITER //
CREATE PROCEDURE findPatientTreatment (in treatAilment varchar(64))
BEGIN
  select p.patNum as 'Patient Number', concat(p.patFName, ' ', p.patLName) as 'Patient Name', p.patInitial as 'M.I.', 
  a.ailName as 'Ailment', treat.treatDate as 'Date Treated'
  from patient as p
  inner join treatment as treat on p.patNum = treat.patNum
  inner join ailment as a on treat.ailNum = a.ailNum
  where a.ailName like concat('%', treatAilment, '%');
END //
DELIMITER ;

use finalproject;
call findPatientTreatment('pain');