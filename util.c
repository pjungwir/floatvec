/*
 * check to see if a float4/8 val has underflowed or overflowed
 * (copied from backend/utils/adt/float.c)
 */
#define CHECKFLOATVAL(val, inf_is_valid, zero_is_valid)     \
do {                              \
  if (isinf(val) && !(inf_is_valid))              \
    ereport(ERROR,                      \
        (errcode(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE), \
      errmsg("value out of range: overflow")));       \
                                \
  if ((val) == 0.0 && !(zero_is_valid))           \
    ereport(ERROR,                      \
        (errcode(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE), \
      errmsg("value out of range: underflow")));      \
} while(0)

typedef union pgnum {
  int16 i16;
  int32 i32;
  int64 i64;
  float4 f4;
  float8 f8;
} pgnum;
