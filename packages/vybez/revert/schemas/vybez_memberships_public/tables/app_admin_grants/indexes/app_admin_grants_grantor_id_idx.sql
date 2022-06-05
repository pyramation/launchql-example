-- Revert: schemas/vybez_memberships_public/tables/app_admin_grants/indexes/app_admin_grants_grantor_id_idx from pg

BEGIN;
DROP INDEX "vybez_memberships_public".app_admin_grants_grantor_id_idx;
COMMIT;  

