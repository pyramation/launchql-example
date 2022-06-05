-- Revert: schemas/vybez_invites_public/tables/group_invites/alterations/alt0000000512 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".group_invites
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

