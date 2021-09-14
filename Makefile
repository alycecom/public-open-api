SPECTRAL_IMAGE_NAME = stoplight/spectral:5.9.1
SPECTRAL_RULESET_PATH = ./.spectral.yaml

validate:
	docker run --rm \
		-v $(shell git rev-parse --show-toplevel):/root \
		-w /root $(SPECTRAL_IMAGE_NAME) \
		lint --fail-severity=warn --ruleset=$(SPECTRAL_RULESET_PATH) --verbose openapi.yaml
