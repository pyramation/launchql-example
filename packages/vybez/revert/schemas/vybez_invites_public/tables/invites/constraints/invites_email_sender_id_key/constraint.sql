-- Revert: schemas/vybez_invites_public/tables/invites/constraints/invites_email_sender_id_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_invites_public".invites 
    DROP CONSTRAINT invites_email_sender_id_key;

COMMIT;  

