-- Revert: schemas/vybez_memberships_public/tables/memberships/indexes/memberships_actor_id_idx from pg

BEGIN;
DROP INDEX "vybez_memberships_public".memberships_actor_id_idx;
COMMIT;  

