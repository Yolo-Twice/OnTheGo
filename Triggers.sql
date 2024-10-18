USE onthego;

DELIMITER $$

-- Trigger to subtract points in the Customer table after data is inserted into the Sales table
CREATE TRIGGER AfterInsertOfPoints 
AFTER INSERT 
ON sales 
FOR EACH ROW 
BEGIN
    DECLARE curr_points INT;

    SELECT points INTO curr_points FROM customer WHERE custID = NEW.custID;

    IF curr_points >= NEW.pointsused THEN
        UPDATE customer 
        SET points = points - NEW.pointsused
        WHERE custID = NEW.custID;
    ELSE 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Insufficient points';
    END IF;
END $$

-- Trigger that sets points to NULL after update if ismember is FALSE
CREATE TRIGGER updateismember
BEFORE UPDATE ON customer
FOR EACH ROW
BEGIN
    IF NEW.ismember = FALSE THEN
        SET NEW.points = NULL;
    END IF;
END $$

CREATE TRIGGER insertismember
BEFORE INSERT ON customer
FOR EACH ROW
BEGIN
    IF NEW.ismember = FALSE THEN
        SET NEW.points = NULL;
    END IF;
END $$

-- Trigger that increments stock quantity after item deletion
CREATE TRIGGER deleteitem
BEFORE DELETE ON items
FOR EACH ROW 
BEGIN 
    UPDATE product 
    SET stockquantity = stockquantity + OLD.quantity 
    WHERE productid = OLD.productid;
END $$

-- Trigger that decrements stock quantity after item insertion and checks stock validity
CREATE TRIGGER insertitem
BEFORE INSERT ON items
FOR EACH ROW 
BEGIN 
    DECLARE stock INT;
    SELECT stockquantity INTO stock FROM product WHERE productid = NEW.productid;

    IF NEW.quantity <= stock THEN
        UPDATE product 
        SET stockquantity = stockquantity - NEW.quantity 
        WHERE productid = NEW.productid;
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Not enough stock available';
    END IF;
END $$

-- Trigger that sets the subtotal of the item row
CREATE TRIGGER beforeInsertionUpdateSubtotal
BEFORE INSERT 
ON items 
FOR EACH ROW
BEGIN
    DECLARE priceOfItem INT;
    SELECT price INTO priceOfItem FROM product WHERE productid = NEW.productid;

    IF priceOfItem IS NOT NULL THEN
        SET NEW.Subtotal = NEW.quantity * priceOfItem;
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Product price not found';
    END IF;
END $$

-- Trigger to calculate the total of sales using the items table

CREATE TRIGGER AfterInsertUpdateTotalAmount
AFTER INSERT ON Items
FOR EACH ROW
BEGIN
    -- Declare a variable to store the calculated total
    DECLARE total INT;

    -- Calculate the total of all subtotals for the given SaleID
    SELECT SUM(Subtotal)
    INTO total
    FROM Items
    WHERE SaleID = NEW.SaleID;

    -- Update the TotalAmount in the Sales table with the calculated total
    UPDATE Sales
    SET TotalAmount = total
    WHERE SaleID = NEW.SaleID;
END$$

DELIMITER ;
