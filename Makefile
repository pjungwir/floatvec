MODULES = floatvec
EXTENSION = floatvec
EXTENSION_VERSION = 1.1.1
DATA = floatvec--$(EXTENSION_VERSION).sql

REGRESS = setup \
					vec_add \
					vec_div \
					vec_elements \
					vec_mul \
					vec_pow \
					vec_sub

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
REGRESS_OPTS = --dbname=$(EXTENSION)_regression	# This must come *after* the include since we override the build-in --dbname.

test:
	echo "Run make installcheck to run tests"
	exit 1

release:
	git tag v$(EXTENSION_VERSION)
	git archive --format zip --prefix=$(EXTENSION)-$(EXTENSION_VERSION)/ --output $(EXTENSION)-$(EXTENSION_VERSION).zip master

.PHONY: test release

