-- Revert flipr:flips from pg

BEGIN;

drop table flipr.flips;

COMMIT;
