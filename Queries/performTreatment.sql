#perform treatment on patient
use finalproject;
drop procedure if exists performTreatment;
DELIMITER //
CREATE PROCEDURE performTreatment (in patientNumber int, in ailmentNumber int, in treatmentCost int)
BEGIN
	if (select patient.patNum from patient where patient.patNum = patientNumber) < 1 then select 'Patient DNE';
    elseif (select ailment.ailNum from ailment where ailment.ailNum = ailmentNumber) < 1 then select 'Ailment DNE';
    elseif (treatmentCost < 0) then select 'Treatment Cost Negative';
	else
		start transaction;
			insert into treatment values (patientNumber, ailmentNumber, treatmentCost, now());
		commit;
	end if;
END //
DELIMITER ;

use finalproject;
call performTreatment(1013, 1001, 20.00);