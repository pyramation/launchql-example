-- Revert: schemas/vybez_memberships_public/tables/group_grants/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "vybez_memberships_public".group_grants FROM authenticated;
COMMIT;  

