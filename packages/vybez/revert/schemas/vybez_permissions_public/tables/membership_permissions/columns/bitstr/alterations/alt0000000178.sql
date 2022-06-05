-- Revert: schemas/vybez_permissions_public/tables/membership_permissions/columns/bitstr/alterations/alt0000000178 from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".membership_permissions 
    ALTER COLUMN bitstr DROP NOT NULL;


COMMIT;  

