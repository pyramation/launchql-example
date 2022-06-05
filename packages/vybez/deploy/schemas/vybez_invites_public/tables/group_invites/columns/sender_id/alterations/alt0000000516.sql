-- Deploy: schemas/vybez_invites_public/tables/group_invites/columns/sender_id/alterations/alt0000000516 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_invites_public/schema
-- requires: schemas/vybez_invites_public/tables/group_invites/table
-- requires: schemas/vybez_invites_public/tables/group_invites/columns/sender_id/column

BEGIN;

ALTER TABLE "vybez_invites_public".group_invites 
    ALTER COLUMN sender_id SET DEFAULT jwt_public.current_user_id();
COMMIT;
