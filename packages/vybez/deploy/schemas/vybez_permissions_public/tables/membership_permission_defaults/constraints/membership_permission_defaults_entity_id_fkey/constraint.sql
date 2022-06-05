-- Deploy: schemas/vybez_permissions_public/tables/membership_permission_defaults/constraints/membership_permission_defaults_entity_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_public/tables/users/columns/id/column
-- requires: schemas/vybez_permissions_public/tables/membership_permission_defaults/table
-- requires: schemas/vybez_permissions_public/tables/membership_permission_defaults/columns/entity_id/column

BEGIN;

ALTER TABLE "vybez_permissions_public".membership_permission_defaults 
    ADD CONSTRAINT membership_permission_defaults_entity_id_fkey 
    FOREIGN KEY (entity_id)
    REFERENCES "vybez_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
