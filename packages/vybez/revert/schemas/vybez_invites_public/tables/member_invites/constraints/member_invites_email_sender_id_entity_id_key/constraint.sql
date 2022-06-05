-- Revert: schemas/vybez_invites_public/tables/member_invites/constraints/member_invites_email_sender_id_entity_id_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_invites_public".member_invites 
    DROP CONSTRAINT member_invites_email_sender_id_entity_id_key;

COMMIT;  

