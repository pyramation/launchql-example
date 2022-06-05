-- Revert: schemas/vybez_memberships_public/tables/grants/columns/is_grant/alterations/alt0000000264 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".grants 
    ALTER COLUMN is_grant DROP NOT NULL;


COMMIT;  

