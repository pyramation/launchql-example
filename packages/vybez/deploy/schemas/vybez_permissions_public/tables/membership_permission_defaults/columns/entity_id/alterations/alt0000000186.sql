-- Deploy: schemas/vybez_permissions_public/tables/membership_permission_defaults/columns/entity_id/alterations/alt0000000186 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/membership_permission_defaults/table
-- requires: schemas/vybez_permissions_public/tables/membership_permission_defaults/columns/entity_id/column

BEGIN;

ALTER TABLE "vybez_permissions_public".membership_permission_defaults 
    ALTER COLUMN entity_id SET NOT NULL;
COMMIT;
