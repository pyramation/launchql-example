-- Revert: schemas/vybez_memberships_public/tables/app_memberships/constraints/app_memberships_actor_id_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_memberships 
    DROP CONSTRAINT app_memberships_actor_id_key;

COMMIT;  

