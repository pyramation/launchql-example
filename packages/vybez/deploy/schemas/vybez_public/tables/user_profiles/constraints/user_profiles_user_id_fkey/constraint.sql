-- Deploy: schemas/vybez_public/tables/user_profiles/constraints/user_profiles_user_id_fkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/users/table
-- requires: schemas/vybez_public/tables/user_profiles/table
-- requires: schemas/vybez_public/tables/users/columns/id/column
-- requires: schemas/vybez_public/tables/user_profiles/columns/user_id/column

BEGIN;

ALTER TABLE "vybez_public".user_profiles 
    ADD CONSTRAINT user_profiles_user_id_fkey 
    FOREIGN KEY (user_id)
    REFERENCES "vybez_public".users (id)
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
COMMIT;
