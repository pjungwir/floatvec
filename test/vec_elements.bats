load test_helper

@test "vec_elements with null LHS" {
  result="$(query "SELECT vec_elements(NULL::text[], '{1,2,3}'::int[])")";
  [ "$result" = "NULL" ]
}

@test "vec_elements with null RHS" {
  result="$(query "SELECT vec_elements('{a,b,c}'::text[], NULL)")";
  [ "$result" = "NULL" ]
}

@test "vec_elements with both null" {
  result="$(query "SELECT vec_elements(NULL::text[], NULL)")";
  [ "$result" = "NULL" ]
}

@test "vec_elements with negative index" {
  run query "SELECT vec_elements('{a,b,c}'::text[], '{-1,2,3}'::int[])"
  [ "${lines[0]}" = "ERROR:  vec_elements indices can't be less than 1, but got -1" ]
}

@test "vec_elements with zero index" {
  run query "SELECT vec_elements('{a,b,c}'::text[], '{0,2,3}'::int[])"
  [ "${lines[0]}" = "ERROR:  vec_elements indices can't be less than 1, but got 0" ]
}

@test "vec_elements with too-large index" {
  result="$(query "SELECT vec_elements('{a,b,c}'::text[], '{1,2,4}'::int[])")";
  [ "$result" = "{a,b,NULL}" ]
}

@test "vec_elements with same index twice" {
  result="$(query "SELECT vec_elements('{a,b,c}'::text[], '{1,2,2}'::int[])")";
  [ "$result" = "{a,b,b}" ]
}

@test "vec_elements with normal indexes" {
  result="$(query "SELECT vec_elements('{a,b,c}'::text[], '{1,2,3}'::int[])")";
  [ "$result" = "{a,b,c}" ]
}

@test "vec_elements with normal indexes backwards" {
  result="$(query "SELECT vec_elements('{a,b,c}'::text[], '{3,2,1}'::int[])")";
  [ "$result" = "{c,b,a}" ]
}

@test "vec_elements with empty array on LHS" {
  result="$(query "SELECT vec_elements('{}'::text[], '{1,2,3}'::int[])")";
  echo $result
  [ "$result" = "{NULL,NULL,NULL}" ]
}

@test "vec_elements with empty array on RHS" {
  result="$(query "SELECT vec_elements('{a,b,c}'::text[], '{}'::int[])")";
  echo $result
  [ "$result" = "{}" ]
}
