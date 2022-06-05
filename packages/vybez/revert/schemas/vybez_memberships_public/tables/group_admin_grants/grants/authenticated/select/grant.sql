-- Revert: schemas/vybez_memberships_public/tables/group_admin_grants/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_memberships_public".group_admin_grants FROM authenticated;
COMMIT;  

