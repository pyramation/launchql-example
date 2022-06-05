-- Revert: schemas/vybez_memberships_public/tables/app_memberships/indexes/app_memberships_is_admin_idx from pg

BEGIN;
DROP INDEX "vybez_memberships_public".app_memberships_is_admin_idx;
COMMIT;  

