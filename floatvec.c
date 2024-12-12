#include <postgres.h>
#include <fmgr.h>
#include <utils/array.h>
#include <catalog/pg_type.h>
#include <utils/lsyscache.h>
#include <math.h>

PG_MODULE_MAGIC;

#include "util.c"
#include "vec_add.c"
#include "vec_sub.c"
#include "vec_mul.c"
#include "vec_div.c"
#include "vec_pow.c"
#include "vec_elements.c"
