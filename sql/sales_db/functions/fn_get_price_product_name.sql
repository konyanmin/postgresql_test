CREATE OR REPLACE FUNCTION fn_get_price_product_name(prod_name varchar)
RETURNS numeric AS
$body$
BEGIN
    RETURN item.price
    FROM item
    NATURAL JOIN product
    WHERE product.name = prod_name;
END
$body$
LANGUAGE plpgsql