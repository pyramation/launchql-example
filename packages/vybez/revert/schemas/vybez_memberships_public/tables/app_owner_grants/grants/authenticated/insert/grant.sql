-- Revert: schemas/vybez_memberships_public/tables/app_owner_grants/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "vybez_memberships_public".app_owner_grants FROM authenticated;
COMMIT;  

