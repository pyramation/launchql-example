-- Deploy: schemas/vybez_private/procedures/uuid_generate_v4/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_private/schema

BEGIN;

CREATE FUNCTION "vybez_private".uuid_generate_v4 ()
    RETURNS uuid
AS $$
    SELECT uuids.pseudo_order_seed_uuid('vybez');
$$
LANGUAGE sql;
GRANT EXECUTE ON FUNCTION "vybez_private".uuid_generate_v4 TO public;
COMMIT;
