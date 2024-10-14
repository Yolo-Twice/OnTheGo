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
