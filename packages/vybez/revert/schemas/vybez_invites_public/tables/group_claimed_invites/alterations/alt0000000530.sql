-- Revert: schemas/vybez_invites_public/tables/group_claimed_invites/alterations/alt0000000530 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".group_claimed_invites
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

