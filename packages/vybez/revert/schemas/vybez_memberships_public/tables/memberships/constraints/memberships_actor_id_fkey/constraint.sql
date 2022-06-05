-- Revert: schemas/vybez_memberships_public/tables/memberships/constraints/memberships_actor_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".memberships 
    DROP CONSTRAINT memberships_actor_id_fkey;

COMMIT;  

