load test_helper

@test "float add to scalar lhs" {
  result="$(query "SELECT vec_add(5::float, floats) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{6,NULL,7}" ]
}

@test "float add to scalar rhs" {
  result="$(query "SELECT vec_add(floats, 5::float) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{6,NULL,7}" ]
}

@test "float add to array" {
  result="$(query "SELECT vec_add(floats, floats) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{2,NULL,4}" ]
}


@test "float add to null scalar lhs" {
  result="$(query "SELECT vec_add(NULL::float, floats) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{NULL,NULL,NULL}" ]
}

@test "float add to null scalar rhs" {
  result="$(query "SELECT vec_add(floats, NULL::float) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{NULL,NULL,NULL}" ]
}

@test "float add scalar to null array lhs" {
  result="$(query "SELECT vec_add(5::float, NULL::float[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "float add scalar to null array rhs" {
  result="$(query "SELECT vec_add(NULL::float[], 5::float) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "float add to null array lhs" {
  result="$(query "SELECT vec_add(floats, NULL::float[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "float add to null array rhs" {
  result="$(query "SELECT vec_add(NULL::float[], floats) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}


@test "null float add to null scalar lhs" {
  result="$(query "SELECT vec_add(NULL::float, NULL::float[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "null float add to null scalar rhs" {
  result="$(query "SELECT vec_add(NULL::float[], NULL::float) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "null float add to null array" {
  result="$(query "SELECT vec_add(NULL::float[], NULL::float[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}


@test "int add to scalar lhs" {
  result="$(query "SELECT vec_add(5::int, ints) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{6,NULL,7}" ]
}

@test "int add to scalar rhs" {
  result="$(query "SELECT vec_add(ints, 5::int) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{6,NULL,7}" ]
}

@test "int add to array" {
  result="$(query "SELECT vec_add(ints, ints) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{2,NULL,4}" ]
}


@test "int add to null scalar lhs" {
  result="$(query "SELECT vec_add(NULL::int, ints) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{NULL,NULL,NULL}" ]
}

@test "int add to null scalar rhs" {
  result="$(query "SELECT vec_add(ints, NULL::int) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{NULL,NULL,NULL}" ]
}

@test "int add scalar to null array lhs" {
  result="$(query "SELECT vec_add(5::int, NULL::int[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "int add scalar to null array rhs" {
  result="$(query "SELECT vec_add(NULL::int[], 5::int) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "int add to null array lhs" {
  result="$(query "SELECT vec_add(ints, NULL::int[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "int add to null array rhs" {
  result="$(query "SELECT vec_add(NULL::int[], ints) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}


@test "null int add to null scalar lhs" {
  result="$(query "SELECT vec_add(NULL::int, NULL::int[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "null int add to null scalar rhs" {
  result="$(query "SELECT vec_add(NULL::int[], NULL::int) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "null int add to null array" {
  result="$(query "SELECT vec_add(NULL::int[], NULL::int[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}


