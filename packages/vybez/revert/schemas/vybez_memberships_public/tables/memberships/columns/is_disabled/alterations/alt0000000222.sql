-- Revert: schemas/vybez_memberships_public/tables/memberships/columns/is_disabled/alterations/alt0000000222 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".memberships 
    ALTER COLUMN is_disabled DROP NOT NULL;


COMMIT;  

