-- Deploy: schemas/vybez_public/tables/interactions/columns/actor_id/alterations/alt0000000620 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table
-- requires: schemas/vybez_public/tables/interactions/columns/actor_id/column

BEGIN;

ALTER TABLE "vybez_public".interactions 
    ALTER COLUMN actor_id SET NOT NULL;
COMMIT;
