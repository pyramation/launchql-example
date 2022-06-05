-- Deploy: schemas/vybez_roles_public/procedures/one_time_token/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema

BEGIN;

CREATE FUNCTION "vybez_roles_public".one_time_token (
  email text,
  password text,
  origin origin, -- this is for setting which origin to receive!
  remember_me boolean DEFAULT FALSE
)
  RETURNS text
  AS $$
DECLARE
  v_token "vybez_roles_private".api_tokens;
  v_origin origin;
BEGIN
  SELECT * FROM "vybez_roles_public".login(
    email, password, remember_me
  ) INTO v_token;
  IF (NOT FOUND) THEN 
    RETURN NULL;
  END IF;
  UPDATE "vybez_roles_private".api_tokens t
    SET 
      ot_token = encode( gen_random_bytes( 32 ), 'hex' ),
      origin = one_time_token.origin
  WHERE t.id = v_token.id
  RETURNING * INTO v_token;
  RETURN lower(replace(	base32.encode(v_token.ot_token), '=',''));
END;
$$
LANGUAGE 'plpgsql'
STRICT
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "vybez_roles_public".one_time_token TO anonymous;
COMMIT;
