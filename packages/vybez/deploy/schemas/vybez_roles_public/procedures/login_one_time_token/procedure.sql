-- Deploy: schemas/vybez_roles_public/procedures/login_one_time_token/procedure to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_roles_public/schema

BEGIN;

CREATE FUNCTION "vybez_roles_public".login_one_time_token (
  token text
)
  RETURNS "vybez_roles_private".api_tokens
  AS $$
DECLARE
  v_token "vybez_roles_private".api_tokens;
BEGIN
    SELECT * FROM "vybez_roles_private".api_tokens tkn
    WHERE tkn.ot_token = login_one_time_token.token
          AND EXTRACT(EPOCH FROM (tkn.access_token_expires_at-NOW())) > 0
          AND 
            (
                CASE WHEN tkn.uagent IS NULL THEN jwt_public.current_user_agent() IS NULL
                ELSE tkn.uagent = jwt_public.current_user_agent() END
            )
          AND 
            (
                CASE WHEN tkn.origin IS NULL THEN jwt_public.current_origin() IS NULL
                ELSE tkn.origin = jwt_public.current_origin() END
            )
    INTO v_token;
    IF (NOT FOUND) THEN 
        RETURN NULL;
    END IF;
    UPDATE "vybez_roles_private".api_tokens t
    SET 
      ot_token = NULL
    WHERE t.id = v_token.id
    RETURNING * INTO v_token;
    RETURN v_token;
END;
$$
LANGUAGE 'plpgsql'
STRICT
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "vybez_roles_public".login_one_time_token TO anonymous;
COMMIT;
