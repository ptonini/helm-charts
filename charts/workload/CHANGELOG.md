# Changelog

## [1.5.1](https://github.com/ptonini/helm-charts/compare/workload-v1.5.0...workload-v1.5.1) (2023-02-27)


### Bug Fixes

* **workload:** removed annotations from headless service ([0aae7a3](https://github.com/ptonini/helm-charts/commit/0aae7a36da38ccb3a83b692c9cf203be32f6100b))

## [1.5.0](https://github.com/ptonini/helm-charts/compare/workload-v1.4.0...workload-v1.5.0) (2023-02-27)


### Features

* **workload:** added headless service factory to StatefulSet template ([a0857db](https://github.com/ptonini/helm-charts/commit/a0857db652bbfd532d514757c740185dcf6bd215))

## [1.4.0](https://github.com/ptonini/helm-charts/compare/workload-v1.3.4...workload-v1.4.0) (2023-02-26)


### Features

* **workload:** added volumeClaimTemplates to template (updated lib-default to 1.8.0) ([0bc4734](https://github.com/ptonini/helm-charts/commit/0bc473488fdd792c686d4710a0ca695ce2146ca8))

## [1.3.4](https://github.com/ptonini/helm-charts/compare/workload-v1.3.3...workload-v1.3.4) (2022-11-18)


### Miscellaneous Chores

* updated lib-default to 1.7.5 ([33afbff](https://github.com/ptonini/helm-charts/commit/33afbfffcaa4a2c89fd42ec29bf226110a42a809))

## [1.3.3](https://github.com/ptonini/helm-charts/compare/workload-v1.3.2...workload-v1.3.3) (2022-11-01)


### Bug Fixes

* updated lib-default to 1.7.4 ([a01f14e](https://github.com/ptonini/helm-charts/commit/a01f14e4b0fa2e9c5b4cc3882b40903e215cb356))

## [1.3.2](https://github.com/ptonini/helm-charts/compare/workload-v1.3.1...workload-v1.3.2) (2022-10-25)


### dep

* **workload:** updated lib-default to 1.7.3 ([3dfaba2](https://github.com/ptonini/helm-charts/commit/3dfaba2cdba670b75b380dda96065dba7e0b43b8))

## [1.3.1](https://github.com/ptonini/helm-charts/compare/workload-v1.3.0...workload-v1.3.1) (2022-10-11)


### dep

* **workflow:** updated lib-kong to 1.1.0 ([772c080](https://github.com/ptonini/helm-charts/commit/772c08077989f66b2744ecab03993cae08f8bee8))

## [1.3.0](https://github.com/ptonini/helm-charts/compare/workload-v1.2.0...workload-v1.3.0) (2022-10-08)


### Features

* **workflow:** updated lib-default to 1.4.0, refactored values.yaml ([3cd985e](https://github.com/ptonini/helm-charts/commit/3cd985e176b861e94f37a81e06515864c743c7ad))

## [1.2.0](https://github.com/ptonini/helm-charts/compare/workload-v1.1.0...workload-v1.2.0) (2022-10-07)


### Features

* added sidecar containers support ([1283a94](https://github.com/ptonini/helm-charts/commit/1283a949ca7e679b11cdf8090610e8c63e6c805b))

## [1.1.0](https://github.com/ptonini/helm-charts/compare/workload-v1.0.4...workload-v1.1.0) (2022-10-06)


### Features

* added lifecycle field to container template ([d950fc8](https://github.com/ptonini/helm-charts/commit/d950fc8e6f784e515b3a86a2cc3f2028e6185f4d))

## [1.0.4](https://github.com/ptonini/helm-charts/compare/workload-v1.0.3...workload-v1.0.4) (2022-10-05)


### Bug Fixes

* corrected imagePullSecrets generator on _pod.yaml ([500d3ad](https://github.com/ptonini/helm-charts/commit/500d3ad3d1ce56a42b94bc70283c901d37082b38))

## [1.0.3](https://github.com/ptonini/helm-charts/compare/workload-v1.0.2...workload-v1.0.3) (2022-10-04)


### Bug Fixes

* removed typing error from container template ([d273761](https://github.com/ptonini/helm-charts/commit/d2737611de5010e9c4da27c326e7672f7509ec8c))

## [1.0.2](https://github.com/ptonini/helm-charts/compare/workload-v1.0.1...workload-v1.0.2) (2022-10-04)


### Bug Fixes

* normalized shared vaules to camelCase ([eca5730](https://github.com/ptonini/helm-charts/commit/eca5730cd50a1cd4b2d8226f54046b0bba4e5a86))

## [1.0.1](https://github.com/ptonini/helm-charts/compare/workload-v1.0.0...workload-v1.0.1) (2022-10-04)


### Bug Fixes

* renamed library.workload template ([5552b34](https://github.com/ptonini/helm-charts/commit/5552b34e36cb8dc2f2d52d8b54a08249bcc72fe4))

## 1.0.0 (2022-10-03)


### ⚠ BREAKING CHANGES

* added basic charts

### Miscellaneous Chores

* added basic charts ([418eaa0](https://github.com/ptonini/helm-charts/commit/418eaa0d04b5ec8fd2b5f6c664e20fddf9eedb56))
