-- Revert: schemas/vybez_public/tables/emails/constraints/emails_pkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".emails 
    DROP CONSTRAINT emails_pkey;

COMMIT;  

