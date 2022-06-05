-- Revert: schemas/vybez_permissions_public/tables/app_permission_defaults/alterations/alt0000000045 from pg

BEGIN;


ALTER TABLE "vybez_permissions_public".app_permission_defaults
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

