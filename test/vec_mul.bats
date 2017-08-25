load test_helper

@test "float mul to scalar lhs" {
  result="$(query "SELECT vec_mul(5::float, floats) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{5,NULL,10}" ]
}

@test "float mul to scalar rhs" {
  result="$(query "SELECT vec_mul(floats, 5::float) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{5,NULL,10}" ]
}

@test "float mul to array" {
  result="$(query "SELECT vec_mul(floats, floats) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{1,NULL,4}" ]
}


@test "float mul to null scalar lhs" {
  result="$(query "SELECT vec_mul(NULL::float, floats) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{NULL,NULL,NULL}" ]
}

@test "float mul to null scalar rhs" {
  result="$(query "SELECT vec_mul(floats, NULL::float) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{NULL,NULL,NULL}" ]
}

@test "float mul scalar to null array lhs" {
  result="$(query "SELECT vec_mul(5::float, NULL::float[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "float mul scalar to null array rhs" {
  result="$(query "SELECT vec_mul(NULL::float[], 5::float) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "float mul to null array lhs" {
  result="$(query "SELECT vec_mul(floats, NULL::float[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "float mul to null array rhs" {
  result="$(query "SELECT vec_mul(NULL::float[], floats) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}


@test "null float mul to null scalar lhs" {
  result="$(query "SELECT vec_mul(NULL::float, NULL::float[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "null float mul to null scalar rhs" {
  result="$(query "SELECT vec_mul(NULL::float[], NULL::float) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "null float mul to null array" {
  result="$(query "SELECT vec_mul(NULL::float[], NULL::float[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}


@test "int mul to scalar lhs" {
  result="$(query "SELECT vec_mul(5::int, ints) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{5,NULL,10}" ]
}

@test "int mul to scalar rhs" {
  result="$(query "SELECT vec_mul(ints, 5::int) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{5,NULL,10}" ]
}

@test "int mul to array" {
  result="$(query "SELECT vec_mul(ints, ints) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{1,NULL,4}" ]
}


@test "int mul to null scalar lhs" {
  result="$(query "SELECT vec_mul(NULL::int, ints) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{NULL,NULL,NULL}" ]
}

@test "int mul to null scalar rhs" {
  result="$(query "SELECT vec_mul(ints, NULL::int) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{NULL,NULL,NULL}" ]
}

@test "int mul scalar to null array lhs" {
  result="$(query "SELECT vec_mul(5::int, NULL::int[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "int mul scalar to null array rhs" {
  result="$(query "SELECT vec_mul(NULL::int[], 5::int) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "int mul to null array lhs" {
  result="$(query "SELECT vec_mul(ints, NULL::int[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "int mul to null array rhs" {
  result="$(query "SELECT vec_mul(NULL::int[], ints) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}


@test "null int mul to null scalar lhs" {
  result="$(query "SELECT vec_mul(NULL::int, NULL::int[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "null int mul to null scalar rhs" {
  result="$(query "SELECT vec_mul(NULL::int[], NULL::int) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "null int mul to null array" {
  result="$(query "SELECT vec_mul(NULL::int[], NULL::int[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}


