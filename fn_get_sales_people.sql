CREATE OR REPLACE FUNCTION fn_get_sales_people()
RETURNS SETOF sales_person AS
$body$
BEGIN
    RETURN QUERY
    SELECT *
    FROM sales_person;
END
$body$
LANGUAGE plpgsql