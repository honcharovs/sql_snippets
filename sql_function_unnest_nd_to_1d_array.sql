-- PostgreSQL 11 and higher
create function unnest_nd_1d(anyarray, OUT a anyarray) returns SETOF anyarray
    immutable
    strict
    language plpgsql
as
$$
BEGIN
   FOREACH a SLICE 1 IN ARRAY $1 LOOP
      RETURN NEXT;
   END LOOP;
END
$$;
