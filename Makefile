# MIS-only check — Moniversive Invariant Static
MISC ?= ../../bin/misc
ifeq ($(wildcard $(MISC)),)
  MISC := bin/misc
endif

.PHONY: check
check:
	@test -x $(MISC) || (echo "need bin/misc"; exit 1)
	$(MISC) mis/kernel/RealtimeBillingUsageAggregationKernel.mis --check --compact-letters
	@find mis -name '*.mis' | while read f; do $(MISC) "$$f" --check --compact-letters || exit 1; done
	@echo OK Real-Time-Billing-Usage-Invariant-Aggregation
