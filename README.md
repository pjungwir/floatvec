`floatvec`
==========

This Postgres extension provides basic arithmetic functions
for operating on arrays (treated as vectors).
It supports addition, subtraction, multiplication, division,
and raising to a power.
Everything (so far) is element-by-element,
so no dot products or other matrixy stuff.
Every function lets you pass either two arrays of the same length,
or an array and a scalar,
or a scalar and an array.

Despite the name, we support arguments of any numeric type
(`SMALLINT`, `INTEGER`, `BIGINT`, `REAL`, and `FLOAT` aka `DOUBLE PRECISION`).
The two arguments must be of the same type,
and the result will be of that type too.

In general if an array argument is `NULL`,
then the whole result will be `NULL`.
If an array *element* is `NULL`,
then the corresponding result element will be `NULL`.
If a scalar argument is `NULL`,
then you'll get an array of the same length as the input,
but all elements will be `NULL`.

In theory we could define custom operators
so instead of `vec_add(a, b)` you could say `a + b`,
but I'm reluctant to risk conflicts with the widely-used [intarray extension](https://www.postgresql.org/docs/current/static/intarray.html).
If you really want this feature let me know.

If you like this extension
you might also like [`aggs_for_vecs`](https://github.com/pjungwir/aggs_for_vecs)
and [`aggs_for_arrays`](https://github.com/pjungwir/aggs_for_arrays),
which support more stats-focused activity.

The functions are:

`anyarray vec_add(anyarray, anyarray)`

`anyarray vec_add(anyarray, anyelement)`

`anyarray vec_add(anyelement, anyarray)`

`anyarray vec_sub(anyarray, anyarray)`

`anyarray vec_sub(anyarray, anyelement)`

`anyarray vec_sub(anyelement, anyarray)`

`anyarray vec_mul(anyarray, anyarray)`

`anyarray vec_mul(anyarray, anyelement)`

`anyarray vec_mul(anyelement, anyarray)`

`anyarray vec_div(anyarray, anyarray)`

`anyarray vec_div(anyarray, anyelement)`

`anyarray vec_div(anyelement, anyarray)`

`anyarray vec_pow(anyarray, anyarray)`

`anyarray vec_pow(anyarray, anyelement)`

`anyarray vec_pow(anyelement, anyarray)`

## Author

Copyright 2017 Paul A. Jungwirth

