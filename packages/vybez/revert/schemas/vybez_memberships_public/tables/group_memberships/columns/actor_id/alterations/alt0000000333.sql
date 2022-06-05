-- Revert: schemas/vybez_memberships_public/tables/group_memberships/columns/actor_id/alterations/alt0000000333 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_memberships 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

