-- Verify: schemas/vybez_memberships_public/tables/membership_defaults/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_memberships_public.membership_defaults', 'update', 'authenticated');
COMMIT;  

