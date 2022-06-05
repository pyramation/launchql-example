-- Deploy: schemas/vybez_permissions_public/tables/membership_permissions/columns/bitstr/alterations/alt0000000178 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/membership_permissions/table
-- requires: schemas/vybez_permissions_public/tables/membership_permissions/columns/bitstr/column

BEGIN;

ALTER TABLE "vybez_permissions_public".membership_permissions 
    ALTER COLUMN bitstr SET NOT NULL;
COMMIT;
