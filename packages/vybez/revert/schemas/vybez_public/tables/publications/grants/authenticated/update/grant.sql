-- Revert: schemas/vybez_public/tables/publications/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "vybez_public".publications FROM authenticated;
COMMIT;  

