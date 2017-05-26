#doctorLicensing
select d.docNum as 'Doctor Number', concat(d.docFName, ' ', d.docLName) as 'Doctor Name',
d.docInitial as 'M.I.', 
o.officeName as 'Office Name', o.officeAddressLine1 as 'Address 1',
o.officeAddressLine2 as 'Address 2', o.officeCity as 'Office City', o.officeState as 'Office State',
o.officeZip as 'Office Zip', o.officePhone as 'Office Phone'
from doctor as d
inner join doctoroffice as doco on d.docNum = doco.docNum
inner join office as o on doco.officeNum = o.officeNum
order by d.docNum;