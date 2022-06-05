-- Revert: schemas/vybez_public/tables/groups/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "vybez_public".groups FROM authenticated;
COMMIT;  

