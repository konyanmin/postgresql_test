CREATE OR REPLACE FUNCTION fn_get_inventory_val()
RETURNS numeric as
$$body
SELECT SUM()
$$body
LANGUAGE SQL

;
SELECT * FROM CAR;