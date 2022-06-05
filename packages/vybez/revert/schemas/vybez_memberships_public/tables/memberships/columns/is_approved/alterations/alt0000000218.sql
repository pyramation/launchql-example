-- Revert: schemas/vybez_memberships_public/tables/memberships/columns/is_approved/alterations/alt0000000218 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".memberships 
    ALTER COLUMN is_approved DROP NOT NULL;


COMMIT;  

