-- Revert: schemas/vybez_memberships_public/tables/members/indexes/members_actor_id_idx from pg

BEGIN;
DROP INDEX "vybez_memberships_public".members_actor_id_idx;
COMMIT;  

