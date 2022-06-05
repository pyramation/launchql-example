-- Deploy: schemas/vybez_status_public/tables/app_levels/constraints/app_levels_owner_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_public/tables/users/columns/id/column
-- requires: schemas/vybez_status_public/tables/app_levels/table
-- requires: schemas/vybez_status_public/tables/app_levels/columns/owner_id/column

BEGIN;

ALTER TABLE "vybez_status_public".app_levels 
    ADD CONSTRAINT app_levels_owner_id_fkey 
    FOREIGN KEY (owner_id)
    REFERENCES "vybez_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
