-- Deploy: schemas/vybez_limits_public/tables/group_member_limits/constraints/group_member_limits_entity_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_public/tables/groups/table
-- requires: schemas/vybez_public/tables/groups/columns/id/column
-- requires: schemas/vybez_limits_public/tables/group_member_limits/table
-- requires: schemas/vybez_limits_public/tables/group_member_limits/columns/entity_id/column

BEGIN;

ALTER TABLE "vybez_limits_public".group_member_limits 
    ADD CONSTRAINT group_member_limits_entity_id_fkey 
    FOREIGN KEY (entity_id)
    REFERENCES "vybez_public".groups (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
