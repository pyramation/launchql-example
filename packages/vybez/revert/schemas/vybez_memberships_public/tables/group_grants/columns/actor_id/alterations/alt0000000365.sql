-- Revert: schemas/vybez_memberships_public/tables/group_grants/columns/actor_id/alterations/alt0000000365 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_grants 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

