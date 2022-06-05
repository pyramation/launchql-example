-- Revert: schemas/vybez_public/tables/organization_profiles/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_public".organization_profiles FROM authenticated;
COMMIT;  

