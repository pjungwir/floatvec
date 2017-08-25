MODULES = floatvec
EXTENSION = floatvec
DATA = floatvec--1.0.sql

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

test:
	./test/setup.sh
	PATH="./test/bats:$$PATH" bats test

.PHONY: test

