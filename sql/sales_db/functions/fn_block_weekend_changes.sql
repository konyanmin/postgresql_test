CREATE OR REPLACE FUNCTION fn_block_weekend_changes()
    RETURNS TRIGGER
    LANGUAGE PLPGSQL
AS
$body$
BEGIN
    IF EXTRACT('DOW' FROM CURRENT_TIMESTAMP) BETWEEN 6 AND 7 THEN
        RAISE EXCEPTION 'No database changes allowed on weekend';
    END IF;
    RETURN null;
END;
$body$;