-- Revert: schemas/vybez_status_public/tables/app_levels/constraints/app_levels_pkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_status_public".app_levels 
    DROP CONSTRAINT app_levels_pkey;

COMMIT;  

