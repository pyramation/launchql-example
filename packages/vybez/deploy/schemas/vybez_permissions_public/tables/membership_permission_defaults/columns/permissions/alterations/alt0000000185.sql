-- Deploy: schemas/vybez_permissions_public/tables/membership_permission_defaults/columns/permissions/alterations/alt0000000185 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/membership_permission_defaults/table
-- requires: schemas/vybez_permissions_public/tables/membership_permission_defaults/columns/permissions/column

BEGIN;

ALTER TABLE "vybez_permissions_public".membership_permission_defaults 
    ALTER COLUMN permissions SET DEFAULT lpad('', 32, '0')::bit(32);
COMMIT;
