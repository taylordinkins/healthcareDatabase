use finalproject;

DELETE FROM ailment;
DELETE FROM appointment;
DELETE FROM bill;
DELETE FROM claim;
DELETE FROM diagnosishistory;
DELETE FROM disease;
DELETE FROM doctor;
DELETE FROM doctorinsurancelog;
DELETE FROM doctorlicensing;
DELETE FROM doctoroffice;
DELETE FROM doctype;
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
DELETE FROM prescription;
DELETE FROM treatment;


LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/patient.txt' INTO TABLE patient
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/medication.txt' INTO TABLE medication
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/ailment.txt' INTO TABLE ailment
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/medicationuses.txt' INTO TABLE medicationuses
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/disease.txt' INTO TABLE disease
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/immunization.txt' INTO TABLE immunization
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/immunizationhistory.txt' INTO TABLE immunizationhistory
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/diagnosishistory.txt' INTO TABLE diagnosishistory
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/treatment.txt' INTO TABLE treatment
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/license.txt' INTO TABLE license
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/doctype.txt' INTO TABLE doctype
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/doctor.txt' INTO TABLE doctor
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/prescription.txt' INTO TABLE prescription
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/doctorlicensing.txt' INTO TABLE doctorlicensing
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/patientdoctorlog.txt' INTO TABLE patientdoctorlog
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/office.txt' INTO TABLE office
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/doctoroffice.txt' INTO TABLE doctoroffice
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/appointment.txt' INTO TABLE appointment
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/plan.txt' INTO TABLE plan
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/insurancetype.txt' INTO TABLE insurancetype
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/insurance.txt' INTO TABLE insurance
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/doctorinsurancelog.txt' INTO TABLE doctorinsurancelog
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/patientinsurancelog.txt' INTO TABLE patientinsurancelog
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/claim.txt' INTO TABLE claim
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/bill.txt' INTO TABLE bill
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

LOAD DATA LOCAL INFILE '/Users/taylordinkins/Downloads/Databases/FinalProject/payment.txt' INTO TABLE payment
          FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n';
          
SHOW WARNINGS LIMIT 10;

