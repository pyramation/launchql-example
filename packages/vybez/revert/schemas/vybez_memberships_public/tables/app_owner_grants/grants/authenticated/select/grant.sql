-- Revert: schemas/vybez_memberships_public/tables/app_owner_grants/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_memberships_public".app_owner_grants FROM authenticated;
COMMIT;  

