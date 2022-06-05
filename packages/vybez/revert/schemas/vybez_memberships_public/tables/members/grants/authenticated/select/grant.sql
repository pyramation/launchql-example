-- Revert: schemas/vybez_memberships_public/tables/members/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_memberships_public".members FROM authenticated;
COMMIT;  

