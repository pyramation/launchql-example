-- Revert: schemas/vybez_permissions_public/tables/app_permissions/constraints/app_permissions_bitnum_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".app_permissions 
    DROP CONSTRAINT app_permissions_bitnum_key;

COMMIT;  

