-- Revert: schemas/vybez_permissions_public/tables/membership_permission_defaults/columns/id/alterations/alt0000000182 from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".membership_permission_defaults 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

