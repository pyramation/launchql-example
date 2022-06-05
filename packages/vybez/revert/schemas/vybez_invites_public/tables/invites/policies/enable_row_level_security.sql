-- Revert: schemas/vybez_invites_public/tables/invites/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_invites_public".invites
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

