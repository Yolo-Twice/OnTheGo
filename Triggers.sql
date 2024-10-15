use onthego;

--Trigger to Subtract the points in the Customer table after data is inserted into the sales table
create trigger After_Insert_of_points 
After insert 
on sales for each row 
BEGIN
DECLARE curr_points INT;
Select points into curr_points from customer where custID=new.custID;

if curr_points >= new.pointsused THEN
    update customer 
    set points = points - new.pointsused
    where custid=new.custid;
else 
    signal SQLSTATE '45000'
    set MESSAGE_TEXT = 'Insufficient points';
    end if;
end;

--triggers for setting points to NULL after update or insert

CREATE TRIGGER updateismember
BEFORE UPDATE ON customer
FOR EACH ROW
BEGIN
    IF NEW.ismember = FALSE THEN
        SET NEW.points = NULL;
    END IF;
END;

CREATE TRIGGER insertismember
before insert ON customer
FOR EACH ROW
BEGIN
    IF NEW.ismember = FALSE THEN
        SET NEW.points = NULL;
    END IF;
END;

--trigger that increments stockquantity after item deletion

create trigger deleteitem
before delete on items
for each row 
begin 
update product 
    set stockquantity=stockquantity+old.quantity 
    where productid=old.productid;
end;

--trigger that decrements stockquantity after item insertion and also ensures stockquantity validity

create trigger insertitem
before insert on items
for each row 
begin 
declare stock int;
select stockquantity into stock from product where productid=new.productid;
if new.quantity<=stock 
then
update product 
    set stockquantity=stockquantity-new.quantity 
    where productid=new.productid;


    else
    SIGNAL SQLSTATE '45000' 
    SET MESSAGE_TEXT = 'Not enough stock available';
    end if;
    end;


--Trigger that sets the subtotal of the item row by multiplying quantiy by the price which is taken from product table
--To make use of it, while inseting either insert only in the first 4 columns or write null in the fifth column 
create trigger beforeInsertionUpdateSubtotal
before insert 
on Items for each row
BEGIN
    declare priceOfItem int;
    select price into priceOfItem from product where productid=new.productid;
    set new.Subtotal=new.quantity*priceOfItem;
end;
