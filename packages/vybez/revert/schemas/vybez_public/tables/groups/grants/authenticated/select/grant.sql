-- Revert: schemas/vybez_public/tables/groups/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_public".groups FROM authenticated;
COMMIT;  

