-- Revert: schemas/vybez_invites_public/tables/invites/alterations/alt0000000470 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".invites
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

