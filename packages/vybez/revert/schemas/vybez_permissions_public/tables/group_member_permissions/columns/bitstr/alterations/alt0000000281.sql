-- Revert: schemas/vybez_permissions_public/tables/group_member_permissions/columns/bitstr/alterations/alt0000000281 from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".group_member_permissions 
    ALTER COLUMN bitstr DROP NOT NULL;


COMMIT;  

