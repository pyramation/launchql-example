-- Revert: schemas/vybez_memberships_public/tables/admin_grants/indexes/admin_grants_grantor_id_idx from pg

BEGIN;
DROP INDEX "vybez_memberships_public".admin_grants_grantor_id_idx;
COMMIT;  

