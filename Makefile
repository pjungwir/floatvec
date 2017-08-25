MODULES = floatvec
EXTENSION = floatvec
EXTENSION_VERSION = 1.0.0
DATA = floatvec--$(EXTENSION_VERSION).sql

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

test:
	./test/setup.sh
	PATH="./test/bats:$$PATH" bats test

release:
	git archive --format zip --prefix=$(EXTENSION)-$(EXTENSION_VERSION)/ --output $(EXTENSION)-$(EXTENSION_VERSION).zip master

.PHONY: test release

