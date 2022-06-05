-- Revert: schemas/vybez_memberships_public/tables/group_members/columns/actor_id/alterations/alt0000000340 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_members 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

