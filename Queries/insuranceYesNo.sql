#patients with insurance
select p.patNum as 'Patient Number', concat(p.patFName,' ', p.patLName) as 'Patient Name', p.patInitial as 'M.I.' from patient as p
inner join patientinsurancelog as pil on p.patNum=pil.patNum;

#patients without insurance
select p.patNum as 'Patient Number', concat(p.patFName,' ', p.patLName) as 'Patient Name', p.patInitial as 'M.I.' from patient as p
where p.patNum not in 
(select pil.patNum from patientinsurancelog as pil);
