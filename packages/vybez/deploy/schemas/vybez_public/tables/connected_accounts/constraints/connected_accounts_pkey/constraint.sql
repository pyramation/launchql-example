-- Deploy: schemas/vybez_public/tables/connected_accounts/constraints/connected_accounts_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/connected_accounts/table

BEGIN;

ALTER TABLE "vybez_public".connected_accounts
    ADD CONSTRAINT connected_accounts_pkey PRIMARY KEY (id);
COMMIT;
