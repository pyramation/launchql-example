-- Deploy: schemas/vybez_public/tables/interactions/indexes/interactions_user_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table
-- requires: schemas/vybez_public/tables/interactions/columns/user_id/column

BEGIN;
CREATE INDEX interactions_user_id_idx ON "vybez_public".interactions (user_id);
COMMIT;
