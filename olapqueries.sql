CREATE TRIGGER trg_customer_unique_email
BEFORE INSERT ON customer
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM customer WHERE email_ID = NEW.email_ID) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email address already exists';
    END IF;
END;
IF EXISTS (SELECT 1 FROM customer WHERE email_ID = NEW.email_ID) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Email address already exists'; END IF;END;