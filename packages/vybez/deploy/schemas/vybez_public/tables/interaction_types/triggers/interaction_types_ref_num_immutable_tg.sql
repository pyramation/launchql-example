-- Deploy: schemas/vybez_public/tables/interaction_types/triggers/interaction_types_ref_num_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interaction_types/table

BEGIN;
CREATE TRIGGER interaction_types_ref_num_immutable_tg 
 BEFORE UPDATE ON "vybez_public".interaction_types 
 FOR EACH ROW 
 WHEN (OLD.ref_num IS DISTINCT FROM NEW.ref_num AND old.ref_num IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'ref_num' );
COMMIT;
