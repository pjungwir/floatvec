-- float add to scalar lhs
SELECT vec_add(5::float, floats) FROM measurements WHERE sensor_id IN (4);

-- float add to scalar rhs
SELECT vec_add(floats, 5::float) FROM measurements WHERE sensor_id IN (4);

-- float add to array
SELECT vec_add(floats, floats) FROM measurements WHERE sensor_id IN (4);

-- float add to null scalar lhs
SELECT vec_add(NULL::float, floats) FROM measurements WHERE sensor_id IN (4);

-- float add to null scalar rhs
SELECT vec_add(floats, NULL::float) FROM measurements WHERE sensor_id IN (4);

-- float add scalar to null array lhs
SELECT vec_add(5::float, NULL::float[]) FROM measurements WHERE sensor_id IN (4);

-- float add scalar to null array rhs
SELECT vec_add(NULL::float[], 5::float) FROM measurements WHERE sensor_id IN (4);

-- float add to null array lhs
SELECT vec_add(floats, NULL::float[]) FROM measurements WHERE sensor_id IN (4);

-- float add to null array rhs
SELECT vec_add(NULL::float[], floats) FROM measurements WHERE sensor_id IN (4);

-- null float add to null scalar lhs
SELECT vec_add(NULL::float, NULL::float[]) FROM measurements WHERE sensor_id IN (4);

-- null float add to null scalar rhs
SELECT vec_add(NULL::float[], NULL::float) FROM measurements WHERE sensor_id IN (4);

-- null float add to null array
SELECT vec_add(NULL::float[], NULL::float[]) FROM measurements WHERE sensor_id IN (4);

-- int add to scalar lhs
SELECT vec_add(5::int, ints) FROM measurements WHERE sensor_id IN (4);

-- int add to scalar rhs
SELECT vec_add(ints, 5::int) FROM measurements WHERE sensor_id IN (4);

-- int add to array
SELECT vec_add(ints, ints) FROM measurements WHERE sensor_id IN (4);

-- int add to null scalar lhs
SELECT vec_add(NULL::int, ints) FROM measurements WHERE sensor_id IN (4);

-- int add to null scalar rhs
SELECT vec_add(ints, NULL::int) FROM measurements WHERE sensor_id IN (4);

-- int add scalar to null array lhs
SELECT vec_add(5::int, NULL::int[]) FROM measurements WHERE sensor_id IN (4);

-- int add scalar to null array rhs
SELECT vec_add(NULL::int[], 5::int) FROM measurements WHERE sensor_id IN (4);

-- int add to null array lhs
SELECT vec_add(ints, NULL::int[]) FROM measurements WHERE sensor_id IN (4);

-- int add to null array rhs
SELECT vec_add(NULL::int[], ints) FROM measurements WHERE sensor_id IN (4);

-- null int add to null scalar lhs
SELECT vec_add(NULL::int, NULL::int[]) FROM measurements WHERE sensor_id IN (4);

-- null int add to null scalar rhs
SELECT vec_add(NULL::int[], NULL::int) FROM measurements WHERE sensor_id IN (4);

-- null int add to null array
SELECT vec_add(NULL::int[], NULL::int[]) FROM measurements WHERE sensor_id IN (4);
