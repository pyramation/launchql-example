-- Revert: schemas/vybez_permissions_public/tables/group_member_permission_defaults/columns/entity_id/alterations/alt0000000289 from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".group_member_permission_defaults 
    ALTER COLUMN entity_id DROP NOT NULL;


COMMIT;  

