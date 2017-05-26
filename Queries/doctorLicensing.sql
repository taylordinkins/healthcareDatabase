#doctorLicensing
use finalproject;
create view doctorLicensingView as select d.docNum as 'Doctor Number', concat(d.docFName, ' ', d.docLName) as 'Doctor Name',
d.docInitial as 'M.I.', 
l.licenseNum as 'License Num', l.licenseState as 'License State', l.licenseType as 'License Type'
from doctor as d
inner join doctorlicensing as dl on d.docNum = dl.docNum
inner join license as l on dl.licenseNum = l.licenseNum
order by d.docNum;