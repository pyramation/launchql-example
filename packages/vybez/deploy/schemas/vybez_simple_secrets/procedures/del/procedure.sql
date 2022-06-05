-- Deploy: schemas/vybez_simple_secrets/procedures/del/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_simple_secrets/schema
-- requires: schemas/vybez_simple_secrets/tables/user_secrets/table

BEGIN;

CREATE FUNCTION "vybez_simple_secrets".del (
  owner_id uuid,
  secret_name text
)
  RETURNS void
  AS $$
    DELETE FROM "vybez_simple_secrets".user_secrets s 
        WHERE
        s.owner_id = del.owner_id
        AND s.name = secret_name;
$$
LANGUAGE 'sql'
VOLATILE;
CREATE FUNCTION "vybez_simple_secrets".del (
  owner_id uuid,
  secret_names text[]
)
  RETURNS void
  AS $$
    DELETE FROM "vybez_simple_secrets".user_secrets s 
        WHERE
        s.owner_id = del.owner_id
        AND s.name = ANY (secret_names);
$$
LANGUAGE 'sql'
VOLATILE;
GRANT EXECUTE ON FUNCTION "vybez_simple_secrets".del(uuid,text) TO authenticated;
GRANT EXECUTE ON FUNCTION "vybez_simple_secrets".del(uuid,text[]) TO authenticated;
COMMIT;
