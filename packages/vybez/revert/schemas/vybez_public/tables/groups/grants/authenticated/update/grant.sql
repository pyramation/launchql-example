-- Revert: schemas/vybez_public/tables/groups/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "vybez_public".groups FROM authenticated;
COMMIT;  

