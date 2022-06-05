-- Revert: schemas/vybez_memberships_public/tables/grants/alterations/alt0000000259 from pg

BEGIN;


ALTER TABLE "vybez_memberships_public".grants
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

