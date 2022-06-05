-- Revert: schemas/vybez_public/tables/emails/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "vybez_public".emails DROP COLUMN owner_id;
COMMIT;  

