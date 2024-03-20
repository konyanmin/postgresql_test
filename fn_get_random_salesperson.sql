CREATE OR REPLACE FUNCTION fn_get_random_salesperson()
RETURNS varchar AS
$body$
DECLARE
    rand int;
    emp record;
BEGIN
    SELECT random()*(5 - 1) + 1 INTO rand;
    SELECT * 
    FROM sales_person
    INTO emp
    WHERE id = rand;
    RETURN CONCAT(emp.first_name, ' ', emp.last_name);
END
$body$
LANGUAGE plpgsql