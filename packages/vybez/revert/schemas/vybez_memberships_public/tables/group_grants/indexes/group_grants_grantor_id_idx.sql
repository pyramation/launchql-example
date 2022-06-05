-- Revert: schemas/vybez_memberships_public/tables/group_grants/indexes/group_grants_grantor_id_idx from pg

BEGIN;
DROP INDEX "vybez_memberships_public".group_grants_grantor_id_idx;
COMMIT;  

