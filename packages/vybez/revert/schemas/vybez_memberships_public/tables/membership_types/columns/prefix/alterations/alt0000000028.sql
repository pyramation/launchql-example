-- Revert: schemas/vybez_memberships_public/tables/membership_types/columns/prefix/alterations/alt0000000028 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".membership_types 
    ALTER COLUMN prefix DROP NOT NULL;


COMMIT;  

