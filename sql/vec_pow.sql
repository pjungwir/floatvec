-- float pow to scalar lhs
SELECT vec_pow(5::float, floats) FROM measurements WHERE sensor_id IN (4);

-- float pow to scalar rhs
SELECT vec_pow(floats, 5::float) FROM measurements WHERE sensor_id IN (4);

-- float pow to array
SELECT vec_pow(floats, floats) FROM measurements WHERE sensor_id IN (4);

-- float pow to null scalar lhs
SELECT vec_pow(NULL::float, floats) FROM measurements WHERE sensor_id IN (4);

-- float pow to null scalar rhs
SELECT vec_pow(floats, NULL::float) FROM measurements WHERE sensor_id IN (4);

-- float pow scalar to null array lhs
SELECT vec_pow(5::float, NULL::float[]) FROM measurements WHERE sensor_id IN (4);

-- float pow scalar to null array rhs
SELECT vec_pow(NULL::float[], 5::float) FROM measurements WHERE sensor_id IN (4);

-- float pow to null array lhs
SELECT vec_pow(floats, NULL::float[]) FROM measurements WHERE sensor_id IN (4);

-- float pow to null array rhs
SELECT vec_pow(NULL::float[], floats) FROM measurements WHERE sensor_id IN (4);

-- null float pow to null scalar lhs
SELECT vec_pow(NULL::float, NULL::float[]) FROM measurements WHERE sensor_id IN (4);

-- null float pow to null scalar rhs
SELECT vec_pow(NULL::float[], NULL::float) FROM measurements WHERE sensor_id IN (4);

-- null float pow to null array
SELECT vec_pow(NULL::float[], NULL::float[]) FROM measurements WHERE sensor_id IN (4);

-- int pow to scalar lhs
SELECT vec_pow(5::int, ints) FROM measurements WHERE sensor_id IN (4);

-- int pow to scalar rhs
SELECT vec_pow(ints, 5::int) FROM measurements WHERE sensor_id IN (4);

-- int pow to array
SELECT vec_pow(ints, ints) FROM measurements WHERE sensor_id IN (4);

-- int pow to null scalar lhs
SELECT vec_pow(NULL::int, ints) FROM measurements WHERE sensor_id IN (4);

-- int pow to null scalar rhs
SELECT vec_pow(ints, NULL::int) FROM measurements WHERE sensor_id IN (4);

-- int pow scalar to null array lhs
SELECT vec_pow(5::int, NULL::int[]) FROM measurements WHERE sensor_id IN (4);

-- int pow scalar to null array rhs
SELECT vec_pow(NULL::int[], 5::int) FROM measurements WHERE sensor_id IN (4);

-- int pow to null array lhs
SELECT vec_pow(ints, NULL::int[]) FROM measurements WHERE sensor_id IN (4);

-- int pow to null array rhs
SELECT vec_pow(NULL::int[], ints) FROM measurements WHERE sensor_id IN (4);

-- null int pow to null scalar lhs
SELECT vec_pow(NULL::int, NULL::int[]) FROM measurements WHERE sensor_id IN (4);

-- null int pow to null scalar rhs
SELECT vec_pow(NULL::int[], NULL::int) FROM measurements WHERE sensor_id IN (4);

-- null int pow to null array
SELECT vec_pow(NULL::int[], NULL::int[]) FROM measurements WHERE sensor_id IN (4);
