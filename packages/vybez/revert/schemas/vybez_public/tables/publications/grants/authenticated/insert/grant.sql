-- Revert: schemas/vybez_public/tables/publications/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "vybez_public".publications FROM authenticated;
COMMIT;  

