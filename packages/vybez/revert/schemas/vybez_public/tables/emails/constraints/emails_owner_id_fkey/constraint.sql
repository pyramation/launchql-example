-- Revert: schemas/vybez_public/tables/emails/constraints/emails_owner_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".emails 
    DROP CONSTRAINT emails_owner_id_fkey;

COMMIT;  

