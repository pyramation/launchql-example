-- Revert: schemas/vybez_permissions_public/tables/app_permissions/alterations/alt0000000038 from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".app_permissions
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

