-- Revert: schemas/vybez_public/tables/publications/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_public".publications FROM authenticated;
COMMIT;  

