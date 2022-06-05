-- Revert: schemas/vybez_permissions_public/tables/group_member_permissions/columns/id/alterations/alt0000000278 from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".group_member_permissions 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

