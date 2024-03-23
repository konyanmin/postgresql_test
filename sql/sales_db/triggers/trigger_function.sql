CREATE FUNCTION trigger_function()
    RETURNS TRIGGER
    LANGUAGE PLPGSQL
AS
$body$
BEGIN

END;
$body$

CREATE TRIGGER trigger_name
    {BEFORE | AFTER} {event } -- EVENT : insert, update, truncate
ON table_name
    [FOR [EACH] {ROW | STATEMENT}]
        EXECUTE PROCEDURE trigger_function