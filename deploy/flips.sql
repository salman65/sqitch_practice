-- Deploy flipr:flips to pg
-- requires: appschema
-- requires: users

BEGIN;

create table flipr.flips (
    id bigserial primary key,
    nickname text not null references flipr.users(nickname),
    body text not null default '' check (length(body) <= 180),
    timestamp timestamptz not null default clock_timestamp()
);

COMMIT;
