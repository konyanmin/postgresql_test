CREATE OR REPLACE FUNCTION fn_get_supplier_value()
RETURNS varchar AS
$body$
DECLARE
    supplier_name varchar,
    price_sum numeric;
BEGIN
    RETURN QUERY
    SELECT
        product.name,
        product.supplier,
        item.price
    FROM item
    NATURAL JOIN product
    ORDER BY item.price DESC
    LIMIT 10;
END
$body$
LANGUAGE plpgsql