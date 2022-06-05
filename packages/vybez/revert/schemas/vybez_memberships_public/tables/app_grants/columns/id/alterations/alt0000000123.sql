-- Revert: schemas/vybez_memberships_public/tables/app_grants/columns/id/alterations/alt0000000123 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".app_grants 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

