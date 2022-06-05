-- Revert: schemas/vybez_public/tables/emails/table from pg

BEGIN;
DROP TABLE "vybez_public".emails;
COMMIT;  

