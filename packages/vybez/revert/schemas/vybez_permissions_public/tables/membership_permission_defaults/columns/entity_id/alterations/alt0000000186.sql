-- Revert: schemas/vybez_permissions_public/tables/membership_permission_defaults/columns/entity_id/alterations/alt0000000186 from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".membership_permission_defaults 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

