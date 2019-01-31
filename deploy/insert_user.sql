-- Deploy flipr:insert_user to pg
-- requires: users
-- requires: appschema
-- requires: pgcrypto

BEGIN;

create or replace function flipr.insert_user (name text, pass text) returns void language sql security definer as $$
    insert into flipr.users values ($1, crypt($2, gen_salt('md5')));
$$; 

COMMIT;
