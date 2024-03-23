CREATE OR REPLACE FUNCTION fn_get_cust_birthday(IN the_month int, OUT bd_month int, OUT bd_day int
                                                , OUT f_name varchar, out l_name varchar)
AS
$body$
BEGIN
    SELECT 
        EXTRACT(MONTH FROM birth_date), 
        EXTRACT(DAY FROM birth_date),
        first_name,
        last_name
    INTO bd_month, bd_day, f_name, l_name
    FROM customer
    WHERE EXTRACT(MONTH FROM birth_date) = the_month
    LIMIT 5;
END
$body$
LANGUAGE plpgsql