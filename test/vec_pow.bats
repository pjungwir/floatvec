load test_helper

@test "float pow to scalar lhs" {
  result="$(query "SELECT vec_pow(5::float, floats) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{5,NULL,25}" ]
}

@test "float pow to scalar rhs" {
  result="$(query "SELECT vec_pow(floats, 5::float) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{1,NULL,32}" ]
}

@test "float pow to array" {
  result="$(query "SELECT vec_pow(floats, floats) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{1,NULL,4}" ]
}


@test "float pow to null scalar lhs" {
  result="$(query "SELECT vec_pow(NULL::float, floats) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{NULL,NULL,NULL}" ]
}

@test "float pow to null scalar rhs" {
  result="$(query "SELECT vec_pow(floats, NULL::float) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{NULL,NULL,NULL}" ]
}

@test "float pow scalar to null array lhs" {
  result="$(query "SELECT vec_pow(5::float, NULL::float[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "float pow scalar to null array rhs" {
  result="$(query "SELECT vec_pow(NULL::float[], 5::float) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "float pow to null array lhs" {
  result="$(query "SELECT vec_pow(floats, NULL::float[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "float pow to null array rhs" {
  result="$(query "SELECT vec_pow(NULL::float[], floats) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}


@test "null float pow to null scalar lhs" {
  result="$(query "SELECT vec_pow(NULL::float, NULL::float[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "null float pow to null scalar rhs" {
  result="$(query "SELECT vec_pow(NULL::float[], NULL::float) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "null float pow to null array" {
  result="$(query "SELECT vec_pow(NULL::float[], NULL::float[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}


@test "int pow to scalar lhs" {
  result="$(query "SELECT vec_pow(5::int, ints) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{5,NULL,25}" ]
}

@test "int pow to scalar rhs" {
  result="$(query "SELECT vec_pow(ints, 5::int) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{1,NULL,32}" ]
}

@test "int pow to array" {
  result="$(query "SELECT vec_pow(ints, ints) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{1,NULL,4}" ]
}


@test "int pow to null scalar lhs" {
  result="$(query "SELECT vec_pow(NULL::int, ints) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{NULL,NULL,NULL}" ]
}

@test "int pow to null scalar rhs" {
  result="$(query "SELECT vec_pow(ints, NULL::int) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{NULL,NULL,NULL}" ]
}

@test "int pow scalar to null array lhs" {
  result="$(query "SELECT vec_pow(5::int, NULL::int[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "int pow scalar to null array rhs" {
  result="$(query "SELECT vec_pow(NULL::int[], 5::int) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "int pow to null array lhs" {
  result="$(query "SELECT vec_pow(ints, NULL::int[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "int pow to null array rhs" {
  result="$(query "SELECT vec_pow(NULL::int[], ints) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}


@test "null int pow to null scalar lhs" {
  result="$(query "SELECT vec_pow(NULL::int, NULL::int[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "null int pow to null scalar rhs" {
  result="$(query "SELECT vec_pow(NULL::int[], NULL::int) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "null int pow to null array" {
  result="$(query "SELECT vec_pow(NULL::int[], NULL::int[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}


