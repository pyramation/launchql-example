-- Revert: schemas/vybez_permissions_public/tables/membership_permissions/constraints/membership_permissions_name_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".membership_permissions 
    DROP CONSTRAINT membership_permissions_name_key;

COMMIT;  

