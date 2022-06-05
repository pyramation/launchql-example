-- Revert: schemas/vybez_memberships_public/tables/group_owner_grants/columns/actor_id/alterations/alt0000000355 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_owner_grants 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

