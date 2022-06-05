-- Revert: schemas/vybez_memberships_public/tables/members/columns/id/alterations/alt0000000237 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".members 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

