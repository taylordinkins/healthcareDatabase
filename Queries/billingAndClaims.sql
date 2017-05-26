#patient balance remaining
create view patientsBalanceRemaining as select p.patNum as 'Patient Number', concat(p.patFName,' ', p.patLName) as 'Patient Name', p.patInitial as 'MI', 
c.claimNum as 'Claim Number', b.billNum as 'Bill Number' , round(b.billTotal, 2) as 'Bill Total', ifnull(sum(round(pay.paymentAmount, 2)), 0) as 'Amount Paid', 
round(b.billTotal, 2) - ifnull(sum(round(pay.paymentAmount, 2)), 0) as 'Amount Outstanding'
from patient as p
inner join claim as c on p.patNum = c.patNum
inner join bill as b on c.claimNum = b.claimNum
left outer join payment as pay on pay.billNum = b.billNum
group by b.billNum;

#patients with outstanding insurance claims (not billed yet)
create view outstandingInsClaims as select p.patNum as 'Patient Number', concat(p.patFName,' ', p.patLName) as 'Patient Name', p.patInitial as 'MI', 
c.claimNum as 'Claim Number', round(c.claimTotal, 2) as 'Claim Total' from patient as p
inner join claim as c on p.patNum = c.patNum
where p.patNum not in 
(select patient.patNum from patient inner join claim on patient.patNum = claim.patNum
inner join bill on claim.claimNum = bill.billNum);