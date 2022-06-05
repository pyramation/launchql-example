-- Deploy: schemas/vybez_private/trigger_fns/interaction_types_slg_slug to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_private/schema

BEGIN;
CREATE FUNCTION "vybez_private".interaction_types_slg_slug ( ) RETURNS TRIGGER AS $LQLCODEZ$ 
 
  BEGIN
  new.slug = inflection.slugify(new.slug);
  RETURN NEW;
  END;
 
 $LQLCODEZ$ LANGUAGE plpgsql VOLATILE;
COMMIT;
