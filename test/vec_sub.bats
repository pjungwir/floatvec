load test_helper

@test "float sub to scalar lhs" {
  result="$(query "SELECT vec_sub(5::float, floats) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{4,NULL,3}" ]
}

@test "float sub to scalar rhs" {
  result="$(query "SELECT vec_sub(floats, 5::float) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{-4,NULL,-3}" ]
}

@test "float sub to array" {
  result="$(query "SELECT vec_sub(floats, floats) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{0,NULL,0}" ]
}


@test "float sub to null scalar lhs" {
  result="$(query "SELECT vec_sub(NULL::float, floats) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{NULL,NULL,NULL}" ]
}

@test "float sub to null scalar rhs" {
  result="$(query "SELECT vec_sub(floats, NULL::float) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{NULL,NULL,NULL}" ]
}

@test "float sub scalar to null array lhs" {
  result="$(query "SELECT vec_sub(5::float, NULL::float[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "float sub scalar to null array rhs" {
  result="$(query "SELECT vec_sub(NULL::float[], 5::float) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "float sub to null array lhs" {
  result="$(query "SELECT vec_sub(floats, NULL::float[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "float sub to null array rhs" {
  result="$(query "SELECT vec_sub(NULL::float[], floats) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}


@test "null float sub to null scalar lhs" {
  result="$(query "SELECT vec_sub(NULL::float, NULL::float[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "null float sub to null scalar rhs" {
  result="$(query "SELECT vec_sub(NULL::float[], NULL::float) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "null float sub to null array" {
  result="$(query "SELECT vec_sub(NULL::float[], NULL::float[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}


@test "int sub to scalar lhs" {
  result="$(query "SELECT vec_sub(5::int, ints) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{4,NULL,3}" ]
}

@test "int sub to scalar rhs" {
  result="$(query "SELECT vec_sub(ints, 5::int) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{-4,NULL,-3}" ]
}

@test "int sub to array" {
  result="$(query "SELECT vec_sub(ints, ints) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{0,NULL,0}" ]
}


@test "int sub to null scalar lhs" {
  result="$(query "SELECT vec_sub(NULL::int, ints) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{NULL,NULL,NULL}" ]
}

@test "int sub to null scalar rhs" {
  result="$(query "SELECT vec_sub(ints, NULL::int) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{NULL,NULL,NULL}" ]
}

@test "int sub scalar to null array lhs" {
  result="$(query "SELECT vec_sub(5::int, NULL::int[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "int sub scalar to null array rhs" {
  result="$(query "SELECT vec_sub(NULL::int[], 5::int) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "int sub to null array lhs" {
  result="$(query "SELECT vec_sub(ints, NULL::int[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "int sub to null array rhs" {
  result="$(query "SELECT vec_sub(NULL::int[], ints) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}


@test "null int sub to null scalar lhs" {
  result="$(query "SELECT vec_sub(NULL::int, NULL::int[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "null int sub to null scalar rhs" {
  result="$(query "SELECT vec_sub(NULL::int[], NULL::int) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "null int sub to null array" {
  result="$(query "SELECT vec_sub(NULL::int[], NULL::int[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}


