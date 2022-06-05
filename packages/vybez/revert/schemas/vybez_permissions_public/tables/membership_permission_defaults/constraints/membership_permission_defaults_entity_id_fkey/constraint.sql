-- Revert: schemas/vybez_permissions_public/tables/membership_permission_defaults/constraints/membership_permission_defaults_entity_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".membership_permission_defaults 
    DROP CONSTRAINT membership_permission_defaults_entity_id_fkey;

COMMIT;  

