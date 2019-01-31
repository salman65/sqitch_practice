-- Deploy flipr:pgcrypto to pg

BEGIN;

create extension pgcrypto;

COMMIT;
