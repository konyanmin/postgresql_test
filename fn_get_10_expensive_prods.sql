CREATE OR REPLACE FUNCTION fn_get_10_expensive_prods()
RETURNS TABLE (
    name varchar,
    supplier varchar,
    price numeric
) AS
$body$
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