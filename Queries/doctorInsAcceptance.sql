#insurance accepted per doctor
create view doctorInsAcceptance as select d.docNum as 'Doctor Number', concat(d.docFName, ' ', d.docLName) as 'Doctor Name',
d.docInitial as 'M.I.', p.planName as 'Plan Name', i.insTypeCode as 'Insurance Type Code', 
i.insTypeName as 'Insurance Type Name' from doctor as d
inner join doctorinsurancelog as doi on d.docNum = doi.docNum
inner join plan as p on doi.planID = p.planID 
inner join insurancetype as i on doi.insTypeID = i.insTypeID
order by d.docNum, i.insTypeID desc;