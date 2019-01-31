-- Verify flipr:users on pg

BEGIN;

SELECT nickname, password, timestamp from flipr.users where FALSE;

ROLLBACK;
