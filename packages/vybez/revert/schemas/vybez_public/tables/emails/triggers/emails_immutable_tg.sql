-- Revert: schemas/vybez_public/tables/emails/triggers/emails_immutable_tg from pg

BEGIN;
DROP TRIGGER emails_immutable_tg ON "vybez_public".emails;
COMMIT;  

