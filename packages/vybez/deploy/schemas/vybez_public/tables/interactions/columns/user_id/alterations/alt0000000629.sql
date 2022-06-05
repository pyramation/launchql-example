-- Deploy: schemas/vybez_public/tables/interactions/columns/user_id/alterations/alt0000000629 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table
-- requires: schemas/vybez_public/tables/interactions/columns/user_id/column

BEGIN;

ALTER TABLE "vybez_public".interactions 
    ALTER COLUMN user_id SET DEFAULT uuid_nil();
COMMIT;
