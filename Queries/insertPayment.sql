#patients diagnosed with specific disease
use finalproject;
drop procedure if exists addPayment;
DELIMITER //
CREATE PROCEDURE addPayment (in billNumber int, in amountToPay float)
BEGIN
	if (select bill.billNum from bill where bill.billNum = billNumber) < 1 then select 'Bill DNE';
	else
		start transaction;
		insert into payment (billNum, paymentAmount, paymentDate) values (billNumber, amountToPay, now());
		commit;
	end if;
END //
DELIMITER ;

use finalproject;
call addPayment(1, 0.0);