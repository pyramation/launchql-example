-- Verify: schemas/vybez_memberships_public/tables/membership_defaults/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_memberships_public.membership_defaults', 'delete', 'authenticated');
COMMIT;  

