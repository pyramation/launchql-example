-- Revert: schemas/vybez_invites_public/tables/claimed_invites/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_invites_public".claimed_invites
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

