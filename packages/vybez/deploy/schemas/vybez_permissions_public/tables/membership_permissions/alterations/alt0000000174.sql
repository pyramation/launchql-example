-- Deploy: schemas/vybez_permissions_public/tables/membership_permissions/alterations/alt0000000174 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/membership_permissions/table

BEGIN;

ALTER TABLE "vybez_permissions_public".membership_permissions
    DISABLE ROW LEVEL SECURITY;
COMMIT;
