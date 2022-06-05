-- Revert: schemas/vybez_permissions_public/tables/group_member_permission_defaults/columns/id/alterations/alt0000000285 from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".group_member_permission_defaults 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

