-- Revert: schemas/vybez_memberships_public/tables/group_members/indexes/group_members_actor_id_idx from pg

BEGIN;
DROP INDEX "vybez_memberships_public".group_members_actor_id_idx;
COMMIT;  

