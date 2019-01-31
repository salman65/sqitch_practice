-- Deploy flipr:delete_flips to pg
-- requires: flips

BEGIN;

create or replace function flipr.delete_flips(flip_id bigint) returns boolean language plpgsql security definer as $$
    BEGIN
        delete from flipr.flips where id=flip_id;
        return FOUND;
    END;
$$;

COMMIT;
