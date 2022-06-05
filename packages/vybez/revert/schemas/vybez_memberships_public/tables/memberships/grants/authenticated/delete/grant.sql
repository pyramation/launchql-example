-- Revert: schemas/vybez_memberships_public/tables/memberships/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_memberships_public".memberships FROM authenticated;
COMMIT;  

