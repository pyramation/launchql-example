-- Verify: schemas/vybez_public/tables/emails/triggers/emails_immutable_tg on pg

BEGIN;
SELECT verify_trigger('vybez_public.emails_immutable_tg');
COMMIT;  

