-- Revert: schemas/vybez_public/tables/organization_profiles/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "vybez_public".organization_profiles FROM authenticated;
COMMIT;  

