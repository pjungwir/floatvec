load test_helper

@test "float div to scalar lhs" {
  result="$(query "SELECT vec_div(5::float, floats) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{5,NULL,2.5}" ]
}

@test "float div to scalar rhs" {
  result="$(query "SELECT vec_div(floats, 5::float) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{0.2,NULL,0.4}" ]
}

@test "float div to array" {
  result="$(query "SELECT vec_div(floats, floats) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{1,NULL,1}" ]
}


@test "float div to null scalar lhs" {
  result="$(query "SELECT vec_div(NULL::float, floats) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{NULL,NULL,NULL}" ]
}

@test "float div to null scalar rhs" {
  result="$(query "SELECT vec_div(floats, NULL::float) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{NULL,NULL,NULL}" ]
}

@test "float div scalar to null array lhs" {
  result="$(query "SELECT vec_div(5::float, NULL::float[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "float div scalar to null array rhs" {
  result="$(query "SELECT vec_div(NULL::float[], 5::float) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "float div to null array lhs" {
  result="$(query "SELECT vec_div(floats, NULL::float[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "float div to null array rhs" {
  result="$(query "SELECT vec_div(NULL::float[], floats) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}


@test "null float div to null scalar lhs" {
  result="$(query "SELECT vec_div(NULL::float, NULL::float[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "null float div to null scalar rhs" {
  result="$(query "SELECT vec_div(NULL::float[], NULL::float) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "null float div to null array" {
  result="$(query "SELECT vec_div(NULL::float[], NULL::float[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}


@test "int div to scalar lhs" {
  result="$(query "SELECT vec_div(5::int, ints) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{5,NULL,2}" ]
}

@test "int div to scalar rhs" {
  result="$(query "SELECT vec_div(ints, 5::int) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{0,NULL,0}" ]
}

@test "int div to array" {
  result="$(query "SELECT vec_div(ints, ints) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{1,NULL,1}" ]
}


@test "int div to null scalar lhs" {
  result="$(query "SELECT vec_div(NULL::int, ints) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{NULL,NULL,NULL}" ]
}

@test "int div to null scalar rhs" {
  result="$(query "SELECT vec_div(ints, NULL::int) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "{NULL,NULL,NULL}" ]
}

@test "int div scalar to null array lhs" {
  result="$(query "SELECT vec_div(5::int, NULL::int[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "int div scalar to null array rhs" {
  result="$(query "SELECT vec_div(NULL::int[], 5::int) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "int div to null array lhs" {
  result="$(query "SELECT vec_div(ints, NULL::int[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "int div to null array rhs" {
  result="$(query "SELECT vec_div(NULL::int[], ints) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}


@test "null int div to null scalar lhs" {
  result="$(query "SELECT vec_div(NULL::int, NULL::int[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "null int div to null scalar rhs" {
  result="$(query "SELECT vec_div(NULL::int[], NULL::int) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}

@test "null int div to null array" {
  result="$(query "SELECT vec_div(NULL::int[], NULL::int[]) FROM measurements WHERE sensor_id IN (4)")";
  echo $result;
  [ "$result" = "NULL" ]
}


