-- Verify: schemas/vybez_public/tables/organization_profiles/triggers/organization_profiles_organization_id_immutable_tg on pg

BEGIN;
SELECT verify_trigger('vybez_public.organization_profiles_organization_id_immutable_tg');
COMMIT;  

