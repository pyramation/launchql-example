-- Deploy: schemas/vybez_public/tables/groups/constraints/groups_owner_id_fkey/alterations/alt0000000276 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/groups/constraints/groups_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT groups_owner_id_fkey ON "vybez_public".groups IS NULL;
COMMIT;
