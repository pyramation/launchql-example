-- Revert: schemas/vybez_memberships_public/tables/grants/columns/actor_id/alterations/alt0000000266 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".grants 
    ALTER COLUMN actor_id DROP NOT NULL;


COMMIT;  

