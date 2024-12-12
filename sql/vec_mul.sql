-- float mul to scalar lhs
SELECT vec_mul(5::float, floats) FROM measurements WHERE sensor_id IN (4);

-- float mul to scalar rhs
SELECT vec_mul(floats, 5::float) FROM measurements WHERE sensor_id IN (4);

-- float mul to array
SELECT vec_mul(floats, floats) FROM measurements WHERE sensor_id IN (4);

-- float mul to null scalar lhs
SELECT vec_mul(NULL::float, floats) FROM measurements WHERE sensor_id IN (4);

-- float mul to null scalar rhs
SELECT vec_mul(floats, NULL::float) FROM measurements WHERE sensor_id IN (4);

-- float mul scalar to null array lhs
SELECT vec_mul(5::float, NULL::float[]) FROM measurements WHERE sensor_id IN (4);

-- float mul scalar to null array rhs
SELECT vec_mul(NULL::float[], 5::float) FROM measurements WHERE sensor_id IN (4);

-- float mul to null array lhs
SELECT vec_mul(floats, NULL::float[]) FROM measurements WHERE sensor_id IN (4);

-- float mul to null array rhs
SELECT vec_mul(NULL::float[], floats) FROM measurements WHERE sensor_id IN (4);

-- null float mul to null scalar lhs
SELECT vec_mul(NULL::float, NULL::float[]) FROM measurements WHERE sensor_id IN (4);

-- null float mul to null scalar rhs
SELECT vec_mul(NULL::float[], NULL::float) FROM measurements WHERE sensor_id IN (4);

-- null float mul to null array
SELECT vec_mul(NULL::float[], NULL::float[]) FROM measurements WHERE sensor_id IN (4);

-- int mul to scalar lhs
SELECT vec_mul(5::int, ints) FROM measurements WHERE sensor_id IN (4);

-- int mul to scalar rhs
SELECT vec_mul(ints, 5::int) FROM measurements WHERE sensor_id IN (4);

-- int mul to array
SELECT vec_mul(ints, ints) FROM measurements WHERE sensor_id IN (4);

-- int mul to null scalar lhs
SELECT vec_mul(NULL::int, ints) FROM measurements WHERE sensor_id IN (4);

-- int mul to null scalar rhs
SELECT vec_mul(ints, NULL::int) FROM measurements WHERE sensor_id IN (4);

-- int mul scalar to null array lhs
SELECT vec_mul(5::int, NULL::int[]) FROM measurements WHERE sensor_id IN (4);

-- int mul scalar to null array rhs
SELECT vec_mul(NULL::int[], 5::int) FROM measurements WHERE sensor_id IN (4);

-- int mul to null array lhs
SELECT vec_mul(ints, NULL::int[]) FROM measurements WHERE sensor_id IN (4);

-- int mul to null array rhs
SELECT vec_mul(NULL::int[], ints) FROM measurements WHERE sensor_id IN (4);

-- null int mul to null scalar lhs
SELECT vec_mul(NULL::int, NULL::int[]) FROM measurements WHERE sensor_id IN (4);

-- null int mul to null scalar rhs
SELECT vec_mul(NULL::int[], NULL::int) FROM measurements WHERE sensor_id IN (4);

-- null int mul to null array
SELECT vec_mul(NULL::int[], NULL::int[]) FROM measurements WHERE sensor_id IN (4);
