#assign Patient to doctor
use finalproject;
drop procedure if exists assignToDoctor;
DELIMITER //
CREATE PROCEDURE assignToDoctor (in patientNumber int, in doctorNumber int)
BEGIN
	if (select patient.patNum from patient where patient.patNum = patientNumber) < 1 then select 'Patient DNE';
    elseif (select doctor.docNum from doctor where doctor.docNum = doctorNumber) < 1 then select 'Doctor DNE';
	else
		start transaction;
			insert into patientdoctorlog values (patientNumber, doctorNumber);
		commit;
	end if;
END //
DELIMITER ;

use finalproject;
call assignToDoctor(1013, 1001);