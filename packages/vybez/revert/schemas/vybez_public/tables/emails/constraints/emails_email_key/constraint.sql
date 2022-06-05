-- Revert: schemas/vybez_public/tables/emails/constraints/emails_email_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".emails 
    DROP CONSTRAINT emails_email_key;

COMMIT;  

