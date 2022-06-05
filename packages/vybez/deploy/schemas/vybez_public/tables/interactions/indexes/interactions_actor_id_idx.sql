-- Deploy: schemas/vybez_public/tables/interactions/indexes/interactions_actor_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table
-- requires: schemas/vybez_public/tables/interactions/columns/actor_id/column

BEGIN;
CREATE INDEX interactions_actor_id_idx ON "vybez_public".interactions (actor_id);
COMMIT;
