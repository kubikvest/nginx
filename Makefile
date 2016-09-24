build: buildfs
	@docker build -t kubikvest/nginx .

buildfs:
	@docker run --rm \
		-v $(CURDIR)/runner:/runner \
		-v $(CURDIR)/build:/build \
		-v $(CURDIR)/src:/src \
		imega/base-builder \
		--packages="nginx"

.PHONY: build
