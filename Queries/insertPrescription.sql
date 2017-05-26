#patients diagnosed with specific disease
use finalproject;
drop procedure if exists addPrescription;
DELIMITER //
CREATE PROCEDURE addPrescription (in patientNum int, in medicationNum int, in doctorNum int, in numberRefills int)
BEGIN
	if (select p.patNum from patient as p where p.patNum = patientNum) < 1 then select 'Patient DNE';
	elseif (select m.medNum from medication as m where m.medNum = medicationNum) < 1 then select 'Medication DNE';
	elseif (select d.docNum from doctor as d where d.docNum = doctorNum) < 1 then select 'Doctor DNE';
    elseif (numberRefills < 0) then select 'Refills Negative';
	else
		start transaction;
		insert into prescription values (patientNum, medicationNum, doctorNum, now(), numberRefills);
		commit;
	end if;
END //
DELIMITER ;

use finalproject;
call addPrescription(1013, 1001, 1009, 1);