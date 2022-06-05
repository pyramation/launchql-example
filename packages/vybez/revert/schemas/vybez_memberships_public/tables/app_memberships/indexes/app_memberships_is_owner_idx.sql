-- Revert: schemas/vybez_memberships_public/tables/app_memberships/indexes/app_memberships_is_owner_idx from pg

BEGIN;
DROP INDEX "vybez_memberships_public".app_memberships_is_owner_idx;
COMMIT;  

