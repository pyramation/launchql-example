-- Revert: schemas/vybez_memberships_public/tables/members/columns/actor_id/alterations/alt0000000241 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".members 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

