# Real-Time Billing Usage Invariant Aggregation

**Moniversive Invariant Static (MIS)** — Creator **Chandler William Ferguson**

MIS-only (`.mis`). Kernel compiler `bin/misc`. Settlement **clrty-1 / 1202**. Embed gates **3..=6**.

Backlinked to [moniversive_invariant_static_ML](https://github.com/clarity-fintech/moniversive_invariant_static_ML) and all MIS catalogs under `CLRTY_SUBSTRATE/boot/`.

## Layout

- `mis/kernel/` — domain kernel
- `mis/packs/` — 5 packs × 20 invariants = **100** MIS invariants
- `mis/sections/` — backlinks to MIS data surfaces
- `mis/backlinks/MisBacklinkIndex.mis`
- `manifests/`

## Compile

```bash
bin/misc mis/kernel/RealtimeBillingUsageAggregationKernel.mis --check --compact-letters
find mis -name '*.mis' -print0 | xargs -0 -n1 bin/misc --check --compact-letters
```


## Learning guides

- [Static ML backlinks (GitBook)](https://github.com/clarity-fintech/gitbook/blob/main/moniversive/guides/static-ml-backlinks.md) — domain mesh, kernel, and Moniversive learning path\n