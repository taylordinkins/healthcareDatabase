drop database if exists finalproject;
create database finalproject;
use finalproject;


CREATE TABLE IF NOT EXISTS PATIENT (
  patNum INT(10) NOT NULL AUTO_INCREMENT,
  patLName VARCHAR(32) NOT NULL,
  patFName VARCHAR(32) NOT NULL,
  patInitial CHAR(1) NULL,
  patAddressLine1 VARCHAR(64) NOT NULL,
  patAddressLine2 VARCHAR(64) NULL,
  patCity VARCHAR(32) NOT NULL, 
  patState CHAR(2) NOT NULL,
  patZip CHAR(5) NOT NULL,
  patPhone VARCHAR(16) NULL,
  PRIMARY KEY(patNum)  
) engine=innodb auto_increment=1001;

CREATE TABLE IF NOT EXISTS MEDICATION (
  medNum INT(10) NOT NULL AUTO_INCREMENT,
  medName VARCHAR(64) NOT NULL,
  medProvider VARCHAR(64) NOT NULL,
  medUnitCost FLOAT NOT NULL,
  PRIMARY KEY(medNum)
) engine=innodb auto_increment=1001;

CREATE TABLE IF NOT EXISTS AILMENT (
  ailNum INT(10) NOT NULL AUTO_INCREMENT,
  ailName VARCHAR(64) NOT NULL,
  PRIMARY KEY(ailNum)
) engine=innodb auto_increment=1001;

CREATE TABLE IF NOT EXISTS MEDICATIONUSES (
  medNum INT(10),
  ailNum INT(10),
  PRIMARY KEY(medNum, ailNum),
  FOREIGN KEY(medNum) REFERENCES MEDICATION(medNum),
  FOREIGN KEY(ailNum) REFERENCES AILMENT(ailNum)
) engine=innodb;

CREATE TABLE IF NOT EXISTS DISEASE (
  diseaseNum INT(10) NOT NULL AUTO_INCREMENT,
  diseaseName VARCHAR(64) NOT NULL,
  PRIMARY KEY(diseaseNum)
) engine=innodb auto_increment=1001;

CREATE TABLE IF NOT EXISTS IMMUNIZATION (
  immNum INT(10) NOT NULL AUTO_INCREMENT,
  immName VARCHAR(32) NOT NULL,
  diseaseNum INT(10),
  PRIMARY KEY(immNum),
  FOREIGN KEY(diseaseNum) REFERENCES DISEASE(diseaseNum)
) engine=innodb auto_increment=1001;

CREATE TABLE IF NOT EXISTS IMMUNIZATIONHISTORY (
  patNum INT(10),
  immNum INT(10),
  dateReceived DATETIME NOT NULL,
  PRIMARY KEY(patNum, immNum),
  FOREIGN KEY(patNum) REFERENCES PATIENT(patNum),
  FOREIGN KEY(immNum) REFERENCES IMMUNIZATION(immNum)
) engine=innodb;

CREATE TABLE IF NOT EXISTS DIAGNOSISHISTORY (
  patNum INT(10),
  diseaseNum INT(10),
  diagDate DATETIME NOT NULL,
  PRIMARY KEY(patNum, diseaseNum),
  FOREIGN KEY(patNum) REFERENCES PATIENT(patNum),
  FOREIGN KEY(diseaseNum) REFERENCES DISEASE(diseaseNum)
) engine=innodb;

CREATE TABLE IF NOT EXISTS TREATMENT (
  patNum INT(10),
  ailNum INT(10),
  treatCost FLOAT NOT NULL,
  treatDate DATETIME NOT NULL,
  PRIMARY KEY(patNum, ailNum, treatDate),
  FOREIGN KEY(patNum) REFERENCES PATIENT(patNum),
  FOREIGN KEY(ailNum) REFERENCES AILMENT(ailNum)
) engine=innodb;

CREATE TABLE IF NOT EXISTS LICENSE (
  licenseNum INT(10) NOT NULL,
  licenseState CHAR(2) NOT NULL,
  licenseType CHAR(1) NOT NULL,
  PRIMARY KEY(licenseNum)
) engine=innodb;

CREATE TABLE IF NOT EXISTS DOCTYPE (
  docTypeNum INT(10) NOT NULL AUTO_INCREMENT,
  docTypeName VARCHAR(32) NOT NULL,
  PRIMARY KEY(docTypeNum)
) engine=innodb auto_increment=1;

CREATE TABLE IF NOT EXISTS DOCTOR (
  docNum INT(10) NOT NULL AUTO_INCREMENT,
  docLName VARCHAR(32) NOT NULL,
  docFName VARCHAR(32) NOT NULL,
  docInitial CHAR(1) NULL,
  docTypeNum INT(10),
  PRIMARY KEY(docNum),
  FOREIGN KEY(docTypeNum) REFERENCES DOCTYPE(docTypeNum)
) engine=innodb auto_increment=1001;

CREATE TABLE IF NOT EXISTS PRESCRIPTION (
	patNum INT(10),
    medNum INT(10),
    docNum INT(10), 
    prescDate DATETIME NOT NULL,
    numRefills INT(2),
    PRIMARY KEY(patNum, medNum, docNum, prescDate),
    FOREIGN KEY(patNum) REFERENCES PATIENT(patNum),
    FOREIGN KEY(medNum) REFERENCES MEDICATION(medNum),
    FOREIGN KEY(docNum) REFERENCES DOCTOR(docNum)
) engine=innodb;    

CREATE TABLE IF NOT EXISTS DOCTORLICENSING (
  licenseNum INT(10),
  docNum INT(10),
  PRIMARY KEY(licenseNum, docNum),
  FOREIGN KEY(licenseNum) REFERENCES LICENSE(licenseNum),
  FOREIGN KEY(docNum) REFERENCES DOCTOR(docNum)
) engine=innodb;

CREATE TABLE IF NOT EXISTS PATIENTDOCTORLOG (
  patNum INT(10),
  docNum INT(10),
  PRIMARY KEY(patNum, docNum),
  FOREIGN KEY(patNum) REFERENCES PATIENT(patNum),
  FOREIGN KEY(docNum) REFERENCES DOCTOR(docNum)
) engine=innodb;

CREATE TABLE IF NOT EXISTS OFFICE (
  officeNum INT(10) NOT NULL AUTO_INCREMENT,
  officeName VARCHAR(64) NOT NULL,
  officeAddressLine1 VARCHAR(64) NOT NULL,
  officeAddressLine2 VARCHAR(64) NULL,
  officeCity VARCHAR(32) NOT NULL,
  officeState CHAR(2) NOT NULL,
  officeZip CHAR(5) NOT NULL,
  officePhone VARCHAR(16) NOT NULL,
  PRIMARY KEY(officeNum)
) engine=innodb auto_increment=1;

CREATE TABLE IF NOT EXISTS DOCTOROFFICE (
  docNum INT(10),
  officeNum INT(10), 
  PRIMARY KEY(docNum, officeNum),
  FOREIGN KEY(docNum) REFERENCES DOCTOR(docNum),
  FOREIGN KEY(officeNum) REFERENCES OFFICE(officeNum)
) engine=innodb;

CREATE TABLE IF NOT EXISTS APPOINTMENT (
  patNum INT(10), 
  docNum INT(10),
  officeNum INT(10),
  appDate DATETIME NOT NULL,
  PRIMARY KEY(patNum, docNum, officeNum, appDate),
  FOREIGN KEY(patNum) REFERENCES PATIENT(patNum),
  FOREIGN KEY(docNum) REFERENCES DOCTOR(docNum),
  FOREIGN KEY(officeNum) REFERENCES OFFICE(officeNum)
) engine=innodb;

CREATE TABLE IF NOT EXISTS PLAN (
  planID INT(10) NOT NULL AUTO_INCREMENT,
  planName VARCHAR(64) NOT NULL,
  PRIMARY KEY(planID)
) engine=innodb auto_increment=1;

CREATE TABLE IF NOT EXISTS INSURANCETYPE (
  insTypeID INT(10) NOT NULL AUTO_INCREMENT,
  insTypeCode CHAR(3) NOT NULL,
  insTypeName VARCHAR(64) NOT NULL,
  PRIMARY KEY(insTypeID)
) engine=innodb auto_increment=1;

CREATE TABLE IF NOT EXISTS INSURANCE (
  policyNum VARCHAR(32) NOT NULL,
  insProvider VARCHAR(64) NOT NULL,
  groupNum VARCHAR(32) NOT NULL,
  providerPhoneNum VARCHAR(16) NOT NULL,
  coverageStart DATETIME NOT NULL,
  coPay FLOAT NOT NULL,
  emergencyCoPay FLOAT NOT NULL,
  planID INT(10),
  insTypeID INT(10),
  PRIMARY KEY(policyNum),
  FOREIGN KEY(planID) REFERENCES PLAN(planID),
  FOREIGN KEY(insTypeID) REFERENCES INSURANCETYPE(insTypeID)
) engine=innodb;

CREATE TABLE IF NOT EXISTS DOCTORINSURANCELOG (
  docNum INT(10),
  planID INT(10),
  insTypeID INT(10),
  PRIMARY KEY(docNum, planID, insTypeID),
  FOREIGN KEY(docNum) REFERENCES DOCTOR(docNum),
  FOREIGN KEY(planID) REFERENCES PLAN(planID),
  FOREIGN KEY(insTypeID) REFERENCES INSURANCETYPE(insTypeID)
) engine=innodb;

CREATE TABLE IF NOT EXISTS PATIENTINSURANCELOG (
  patNum INT(10),
  policyNum VARCHAR(32),
  PRIMARY KEY(patNum, policyNum),
  FOREIGN KEY(patNum) REFERENCES PATIENT(patNum),
  FOREIGN KEY(policyNum) REFERENCES INSURANCE(policyNum)
) engine=innodb;

CREATE TABLE IF NOT EXISTS CLAIM (
  claimNum INT(10) NOT NULL AUTO_INCREMENT,
  patNum INT(10),
  policyNum VARCHAR(32),
  claimTotal FLOAT NOT NULL,
  PRIMARY KEY(claimNum),
  FOREIGN KEY(patNum) REFERENCES PATIENT(patNum),
  FOREIGN KEY(policyNum) REFERENCES INSURANCE(policyNum)
) engine=innodb auto_increment=1;

CREATE TABLE IF NOT EXISTS BILL (
  billNum INT(10) NOT NULL AUTO_INCREMENT,
  claimNum INT(10),
  insPaid FLOAT NOT NULL,
  billTotal FLOAT NOT NULL,
  PRIMARY KEY(billNum),
  FOREIGN KEY(claimNum) REFERENCES CLAIM(claimNum)
) engine=innodb auto_increment=1;

CREATE TABLE IF NOT EXISTS PAYMENT (
  paymentNum INT(10) NOT NULL AUTO_INCREMENT,
  billNum INT(10),
  paymentAmount FLOAT NOT NULL,
  paymentDate DATETIME NOT NULL,
  PRIMARY KEY(paymentNum),
  FOREIGN KEY(billNum) REFERENCES BILL(billNum)
) engine=innodb auto_increment=1;