use finalproject;

DELETE FROM ailment;
DELETE FROM appointment;
DELETE FROM bill;
DELETE FROM claim;
DELETE FROM diagnosishistory;
DELETE FROM disease;
DELETE FROM doctor;
DELETE FROM doctorhospital;
DELETE FROM doctorinsurancelog;
DELETE FROM doctorlicensing;
DELETE FROM doctoroffice;
DELETE FROM doctype;
DELETE FROM hospital;
DELETE FROM immunization;
DELETE FROM immunizationhistory;
DELETE FROM insurance;
DELETE FROM insurancetype;
DELETE FROM license;
DELETE FROM medication;
DELETE FROM medicationuses;
DELETE FROM office;
DELETE FROM patient;
DELETE FROM patientdoctorlog;
DELETE FROM patientinsurancelog;
DELETE FROM payment;
DELETE FROM plan;
DELETE FROM treatment;


LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\patient.txt' INTO TABLE patient
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\medication.txt' INTO TABLE medication
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\ailment.txt' INTO TABLE ailment
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\medicationuses.txt' INTO TABLE medicationuses
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\disease.txt' INTO TABLE disease
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\immunization.txt' INTO TABLE immunization
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\immunizationhistory.txt' INTO TABLE immunizationhistory
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\diagnosishistory.txt' INTO TABLE diagnosishistory
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\treatment.txt' INTO TABLE treatment
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\license.txt' INTO TABLE license
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\doctype.txt' INTO TABLE doctype
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\doctor.txt' INTO TABLE doctor
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\doctorlicensing.txt' INTO TABLE doctorlicensing
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\patientdoctorlog.txt' INTO TABLE patientdoctorlog
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\office.txt' INTO TABLE office
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\doctoroffice.txt' INTO TABLE doctoroffice
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\appointment.txt' INTO TABLE appointment
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\hospital.txt' INTO TABLE hospital
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\doctorhospital.txt' INTO TABLE doctorhospital
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\plan.txt' INTO TABLE plan
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\insurancetype.txt' INTO TABLE insurancetype
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\insurance.txt' INTO TABLE insurance
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\doctorinsurancelog.txt' INTO TABLE doctorinsurancelog
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\patientinsurancelog.txt' INTO TABLE patientinsurancelog
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\claim.txt' INTO TABLE claim
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\bill.txt' INTO TABLE bill
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE 'C:\\Users\\dink\\Desktop\\Databases\\payment.txt' INTO TABLE payment
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

