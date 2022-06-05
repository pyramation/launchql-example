-- Revert: schemas/vybez_public/tables/publications/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_public".publications FROM authenticated;
COMMIT;  

