-- Deploy: schemas/vybez_permissions_public/tables/membership_permissions/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/membership_permissions/table

BEGIN;

ALTER TABLE "vybez_permissions_public".membership_permissions
    ENABLE ROW LEVEL SECURITY;
COMMIT;
