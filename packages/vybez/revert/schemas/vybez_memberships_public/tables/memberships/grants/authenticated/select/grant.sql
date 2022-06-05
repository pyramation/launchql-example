-- Revert: schemas/vybez_memberships_public/tables/memberships/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_memberships_public".memberships FROM authenticated;
COMMIT;  

