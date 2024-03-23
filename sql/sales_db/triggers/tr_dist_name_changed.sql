CREATE TRIGGER tr_dist_name_changed
    BEFORE UPDATE
    ON distributor
    FOR EACH ROW
    EXECUTE PROCEDURE fn_log_dist_name_change();