-- Deploy: schemas/vybez_public/tables/organization_profiles/triggers/organization_profiles_organization_id_immutable_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/organization_profiles/table

BEGIN;
CREATE TRIGGER organization_profiles_organization_id_immutable_tg 
 BEFORE UPDATE ON "vybez_public".organization_profiles 
 FOR EACH ROW 
 WHEN (OLD.organization_id IS DISTINCT FROM NEW.organization_id AND old.organization_id IS NOT NULL) 
 EXECUTE PROCEDURE utils.throw ( 'IMMUTABLE_PROPERTY', 'organization_id' );
COMMIT;
