-- Deploy: schemas/vybez_public/tables/phone_numbers/triggers/phone_numbers_immutable_number_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/phone_numbers/table

BEGIN;
CREATE TRIGGER phone_numbers_immutable_number_tg 
 BEFORE UPDATE ON "vybez_public".phone_numbers 
 FOR EACH ROW 
 WHEN (OLD.number IS DISTINCT FROM NEW.number AND old.number IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'number' );
COMMIT;
