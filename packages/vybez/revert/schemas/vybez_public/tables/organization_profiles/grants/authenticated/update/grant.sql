-- Revert: schemas/vybez_public/tables/organization_profiles/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "vybez_public".organization_profiles FROM authenticated;
COMMIT;  

