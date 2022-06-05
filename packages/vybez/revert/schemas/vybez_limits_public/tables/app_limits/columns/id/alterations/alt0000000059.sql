-- Revert: schemas/vybez_limits_public/tables/app_limits/columns/id/alterations/alt0000000059 from pg

BEGIN;


ALTER TABLE "vybez_limits_public".app_limits 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

