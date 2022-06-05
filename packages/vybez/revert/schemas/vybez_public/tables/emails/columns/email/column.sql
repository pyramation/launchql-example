-- Revert: schemas/vybez_public/tables/emails/columns/email/column from pg

BEGIN;


ALTER TABLE "vybez_public".emails DROP COLUMN email;
COMMIT;  

