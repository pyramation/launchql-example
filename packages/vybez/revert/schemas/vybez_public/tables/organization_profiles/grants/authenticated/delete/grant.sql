-- Revert: schemas/vybez_public/tables/organization_profiles/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_public".organization_profiles FROM authenticated;
COMMIT;  

