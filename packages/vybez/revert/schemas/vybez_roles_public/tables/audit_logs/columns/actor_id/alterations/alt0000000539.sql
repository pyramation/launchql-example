-- Revert: schemas/vybez_roles_public/tables/audit_logs/columns/actor_id/alterations/alt0000000539 from pg

BEGIN;


ALTER TABLE "vybez_roles_public".audit_logs 
    ALTER COLUMN actor_id DROP DEFAULT;

COMMIT;  

