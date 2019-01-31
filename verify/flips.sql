-- Verify flipr:flips on pg

BEGIN;

select id, nickname, body, timestamp from flipr.flips where false;

ROLLBACK;
