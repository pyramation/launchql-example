-- Revert: schemas/vybez_memberships_public/tables/group_memberships/columns/granted/alterations/alt0000000331 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_memberships 
    ALTER COLUMN granted DROP NOT NULL;


COMMIT;  

