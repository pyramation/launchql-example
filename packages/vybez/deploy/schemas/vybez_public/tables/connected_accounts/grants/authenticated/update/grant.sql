-- Deploy: schemas/vybez_public/tables/connected_accounts/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/connected_accounts/table

BEGIN;
GRANT UPDATE ( service, identifier, details, owner_id ) ON TABLE "vybez_public".connected_accounts TO authenticated;
COMMIT;
