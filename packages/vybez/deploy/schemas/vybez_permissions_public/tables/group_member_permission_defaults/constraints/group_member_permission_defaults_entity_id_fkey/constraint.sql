-- Deploy: schemas/vybez_permissions_public/tables/group_member_permission_defaults/constraints/group_member_permission_defaults_entity_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_public/tables/groups/table
-- requires: schemas/vybez_public/tables/groups/columns/id/column
-- requires: schemas/vybez_permissions_public/tables/group_member_permission_defaults/table
-- requires: schemas/vybez_permissions_public/tables/group_member_permission_defaults/columns/entity_id/column

BEGIN;

ALTER TABLE "vybez_permissions_public".group_member_permission_defaults 
    ADD CONSTRAINT group_member_permission_defaults_entity_id_fkey 
    FOREIGN KEY (entity_id)
    REFERENCES "vybez_public".groups (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
