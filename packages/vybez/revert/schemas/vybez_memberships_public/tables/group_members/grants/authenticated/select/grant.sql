-- Revert: schemas/vybez_memberships_public/tables/group_members/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_memberships_public".group_members FROM authenticated;
COMMIT;  

