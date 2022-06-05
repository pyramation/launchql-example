-- Revert: schemas/vybez_memberships_public/tables/group_owner_grants/columns/id/alterations/alt0000000351 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".group_owner_grants 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

