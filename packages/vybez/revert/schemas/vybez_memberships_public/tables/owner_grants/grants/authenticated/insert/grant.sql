-- Revert: schemas/vybez_memberships_public/tables/owner_grants/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "vybez_memberships_public".owner_grants FROM authenticated;
COMMIT;  

