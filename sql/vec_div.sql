-- float div to scalar lhs
SELECT vec_div(5::float, floats) FROM measurements WHERE sensor_id IN (4);

-- float div to scalar rhs
SELECT vec_div(floats, 5::float) FROM measurements WHERE sensor_id IN (4);

-- float div to array
SELECT vec_div(floats, floats) FROM measurements WHERE sensor_id IN (4);

-- float div to null scalar lhs
SELECT vec_div(NULL::float, floats) FROM measurements WHERE sensor_id IN (4);

-- float div to null scalar rhs
SELECT vec_div(floats, NULL::float) FROM measurements WHERE sensor_id IN (4);

-- float div scalar to null array lhs
SELECT vec_div(5::float, NULL::float[]) FROM measurements WHERE sensor_id IN (4);

-- float div scalar to null array rhs
SELECT vec_div(NULL::float[], 5::float) FROM measurements WHERE sensor_id IN (4);

-- float div to null array lhs
SELECT vec_div(floats, NULL::float[]) FROM measurements WHERE sensor_id IN (4);

-- float div to null array rhs
SELECT vec_div(NULL::float[], floats) FROM measurements WHERE sensor_id IN (4);

-- null float div to null scalar lhs
SELECT vec_div(NULL::float, NULL::float[]) FROM measurements WHERE sensor_id IN (4);

-- null float div to null scalar rhs
SELECT vec_div(NULL::float[], NULL::float) FROM measurements WHERE sensor_id IN (4);

-- null float div to null array
SELECT vec_div(NULL::float[], NULL::float[]) FROM measurements WHERE sensor_id IN (4);

-- int div to scalar lhs
SELECT vec_div(5::int, ints) FROM measurements WHERE sensor_id IN (4);

-- int div to scalar rhs
SELECT vec_div(ints, 5::int) FROM measurements WHERE sensor_id IN (4);

-- int div to array
SELECT vec_div(ints, ints) FROM measurements WHERE sensor_id IN (4);

-- int div to null scalar lhs
SELECT vec_div(NULL::int, ints) FROM measurements WHERE sensor_id IN (4);

-- int div to null scalar rhs
SELECT vec_div(ints, NULL::int) FROM measurements WHERE sensor_id IN (4);

-- int div scalar to null array lhs
SELECT vec_div(5::int, NULL::int[]) FROM measurements WHERE sensor_id IN (4);

-- int div scalar to null array rhs
SELECT vec_div(NULL::int[], 5::int) FROM measurements WHERE sensor_id IN (4);

-- int div to null array lhs
SELECT vec_div(ints, NULL::int[]) FROM measurements WHERE sensor_id IN (4);

-- int div to null array rhs
SELECT vec_div(NULL::int[], ints) FROM measurements WHERE sensor_id IN (4);

-- null int div to null scalar lhs
SELECT vec_div(NULL::int, NULL::int[]) FROM measurements WHERE sensor_id IN (4);

-- null int div to null scalar rhs
SELECT vec_div(NULL::int[], NULL::int) FROM measurements WHERE sensor_id IN (4);

-- null int div to null array
SELECT vec_div(NULL::int[], NULL::int[]) FROM measurements WHERE sensor_id IN (4);
