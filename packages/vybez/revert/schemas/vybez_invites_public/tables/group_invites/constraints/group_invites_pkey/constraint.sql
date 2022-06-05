-- Revert: schemas/vybez_invites_public/tables/group_invites/constraints/group_invites_pkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_invites_public".group_invites 
    DROP CONSTRAINT group_invites_pkey;

COMMIT;  

