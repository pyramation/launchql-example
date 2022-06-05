-- Deploy: schemas/vybez_private/trigger_fns/crypto_addresses_insert_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_private/schema

BEGIN;

CREATE FUNCTION "vybez_private".crypto_addresses_insert_tg ()
RETURNS TRIGGER
AS $CODEZ$
DECLARE
    v_primary_field "vybez_public".crypto_addresses;
BEGIN
    SELECT * INTO v_primary_field
        FROM "vybez_public".crypto_addresses e
        WHERE e.owner_id = NEW.owner_id
        AND is_primary IS TRUE;
    IF (NOT FOUND) THEN 
        NEW.is_primary = TRUE;
    END IF;
    RETURN NEW;
END;
$CODEZ$
LANGUAGE plpgsql VOLATILE;
CREATE TRIGGER trigger_name
BEFORE INSERT
    ON "vybez_public".crypto_addresses FOR EACH ROW
EXECUTE PROCEDURE "vybez_private".crypto_addresses_insert_tg ();
CREATE UNIQUE INDEX crypto_addresses_is_primary_idx
    ON "vybez_public".crypto_addresses (is_primary, owner_id)
    WHERE (is_primary is true);
COMMIT;
