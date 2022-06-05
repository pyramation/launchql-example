-- Revert: schemas/vybez_invites_public/tables/member_claimed_invites/alterations/alt0000000508 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".member_claimed_invites
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

