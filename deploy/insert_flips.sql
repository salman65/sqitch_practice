-- Deploy flipr:insert_flips to pg
-- requires: flips

BEGIN;

create or replace function flipr.insert_flips (name text, body text) returns bigint language sql security definer as $$
    insert into flipr.flips (nickname, body) values ($1, $2) returning id;
$$;

COMMIT;
