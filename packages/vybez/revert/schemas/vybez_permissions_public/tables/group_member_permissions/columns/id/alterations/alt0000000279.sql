-- Revert: schemas/vybez_permissions_public/tables/group_member_permissions/columns/id/alterations/alt0000000279 from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".group_member_permissions 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

