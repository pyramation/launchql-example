-- Deploy: schemas/vybez_public/tables/interactions/columns/interaction_type_id/alterations/alt0000000622 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table
-- requires: schemas/vybez_public/tables/interactions/columns/interaction_type_id/column

BEGIN;

ALTER TABLE "vybez_public".interactions 
    ALTER COLUMN interaction_type_id SET NOT NULL;
COMMIT;
