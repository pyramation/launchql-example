-- Revert: schemas/vybez_memberships_public/tables/group_owner_grants/indexes/group_owner_grants_grantor_id_idx from pg

BEGIN;
DROP INDEX "vybez_memberships_public".group_owner_grants_grantor_id_idx;
COMMIT;  

