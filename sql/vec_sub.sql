-- float sub to scalar lhs
SELECT vec_sub(5::float, floats) FROM measurements WHERE sensor_id IN (4);

-- float sub to scalar rhs
SELECT vec_sub(floats, 5::float) FROM measurements WHERE sensor_id IN (4);

-- float sub to array
SELECT vec_sub(floats, floats) FROM measurements WHERE sensor_id IN (4);

-- float sub to null scalar lhs
SELECT vec_sub(NULL::float, floats) FROM measurements WHERE sensor_id IN (4);

-- float sub to null scalar rhs
SELECT vec_sub(floats, NULL::float) FROM measurements WHERE sensor_id IN (4);

-- float sub scalar to null array lhs
SELECT vec_sub(5::float, NULL::float[]) FROM measurements WHERE sensor_id IN (4);

-- float sub scalar to null array rhs
SELECT vec_sub(NULL::float[], 5::float) FROM measurements WHERE sensor_id IN (4);

-- float sub to null array lhs
SELECT vec_sub(floats, NULL::float[]) FROM measurements WHERE sensor_id IN (4);

-- float sub to null array rhs
SELECT vec_sub(NULL::float[], floats) FROM measurements WHERE sensor_id IN (4);

-- null float sub to null scalar lhs
SELECT vec_sub(NULL::float, NULL::float[]) FROM measurements WHERE sensor_id IN (4);

-- null float sub to null scalar rhs
SELECT vec_sub(NULL::float[], NULL::float) FROM measurements WHERE sensor_id IN (4);

-- null float sub to null array
SELECT vec_sub(NULL::float[], NULL::float[]) FROM measurements WHERE sensor_id IN (4);

-- int sub to scalar lhs
SELECT vec_sub(5::int, ints) FROM measurements WHERE sensor_id IN (4);

-- int sub to scalar rhs
SELECT vec_sub(ints, 5::int) FROM measurements WHERE sensor_id IN (4);

-- int sub to array
SELECT vec_sub(ints, ints) FROM measurements WHERE sensor_id IN (4);

-- int sub to null scalar lhs
SELECT vec_sub(NULL::int, ints) FROM measurements WHERE sensor_id IN (4);

-- int sub to null scalar rhs
SELECT vec_sub(ints, NULL::int) FROM measurements WHERE sensor_id IN (4);

-- int sub scalar to null array lhs
SELECT vec_sub(5::int, NULL::int[]) FROM measurements WHERE sensor_id IN (4);

-- int sub scalar to null array rhs
SELECT vec_sub(NULL::int[], 5::int) FROM measurements WHERE sensor_id IN (4);

-- int sub to null array lhs
SELECT vec_sub(ints, NULL::int[]) FROM measurements WHERE sensor_id IN (4);

-- int sub to null array rhs
SELECT vec_sub(NULL::int[], ints) FROM measurements WHERE sensor_id IN (4);

-- null int sub to null scalar lhs
SELECT vec_sub(NULL::int, NULL::int[]) FROM measurements WHERE sensor_id IN (4);

-- null int sub to null scalar rhs
SELECT vec_sub(NULL::int[], NULL::int) FROM measurements WHERE sensor_id IN (4);

-- null int sub to null array
SELECT vec_sub(NULL::int[], NULL::int[]) FROM measurements WHERE sensor_id IN (4);
