#patients with insurance
create view patientsWithInsurance as select p.patNum as 'Patient Num', concat(p.patFName, ' ', p.patLName) as 'Patient Name',
p.patInitial as 'M.I.', i.policyNum as 'Policy Num', i.insProvider as 'Ins Provider',
i.providerPhoneNum as 'Provider Phone', i.coverageStart as 'Coverage Start Date', round(i.coPay,2) as 'CoPay',
round(i.emergencyCoPay,2) as 'Emergency CoPay', plan.planName as 'Plan Name', it.insTypeCode as 'Ins Type',
it.insTypeName as 'Ins Type Name'
from patient as p
inner join patientinsurancelog as pil on p.patNum = pil.patNum
inner join insurance as i on pil.policyNum = i.policyNum
inner join plan on i.planID = plan.planID
inner join insurancetype as it on i.insTypeID = it.insTypeID
order by p.patNum asc;

#patients without insurance
create view patientsWithoutInsurance as select p.patNum as 'Patient Num', concat(p.patFName, ' ', p.patLName) as 'Patient Name',
p.patInitial as 'M.I.', 'No Insurance' as 'Status'
from patient as p
where p.patNum not in
(select patient.patNum from patient
inner join patientinsurancelog on patient.patNum = patientinsurancelog.patNum)
order by p.patNum asc;