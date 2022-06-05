-- Revert: schemas/vybez_memberships_public/tables/grants/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "vybez_memberships_public".grants FROM authenticated;
COMMIT;  

