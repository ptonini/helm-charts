# Changelog

## [2.0.0](https://github.com/ptonini/helm-charts/compare/ingress-v1.2.4...ingress-v2.0.0) (2023-12-10)


### ⚠ BREAKING CHANGES

* **serviceaccount:** major refactoring, replaced template library

### Features

* **serviceaccount:** major refactoring, replaced template library ([caf383c](https://github.com/ptonini/helm-charts/commit/caf383c01d575c1fcd2e21dafc7897abd43f5b92))

## [1.2.4](https://github.com/ptonini/helm-charts/compare/ingress-v1.2.3...ingress-v1.2.4) (2023-05-23)


### Bug Fixes

* corrected path iterator in ingress template ([0bdc958](https://github.com/ptonini/helm-charts/commit/0bdc958b6b9e87c7dead112fed4bca672a0a8926))

## [1.2.3](https://github.com/ptonini/helm-charts/compare/ingress-v1.2.2...ingress-v1.2.3) (2023-04-29)


### Bug Fixes

* restored missing path property in ingress path rules template ([2bbf347](https://github.com/ptonini/helm-charts/commit/2bbf3472203d8b9b2f788c483bb8d5252531039d))

## [1.2.2](https://github.com/ptonini/helm-charts/compare/ingress-v1.2.1...ingress-v1.2.2) (2023-04-24)


### Bug Fixes

* removed hosts key from default values ([0e0f17b](https://github.com/ptonini/helm-charts/commit/0e0f17b7d00b9ede3a0298db0299db2fc05a5cd9))

## [1.2.1](https://github.com/ptonini/helm-charts/compare/ingress-v1.2.0...ingress-v1.2.1) (2023-04-24)


### Bug Fixes

* corrected paths object builder in _ingress.yaml ([e9b78b9](https://github.com/ptonini/helm-charts/commit/e9b78b9c8364b2cb48bb4473a802f6501f2081a9))

## [1.2.0](https://github.com/ptonini/helm-charts/compare/ingress-v1.1.0...ingress-v1.2.0) (2023-04-22)


### Features

* **ingress:** added ingressClassName property to ingress spec template (updated lib-default to 1.11.0) ([560b3ea](https://github.com/ptonini/helm-charts/commit/560b3ea564311532f3d28cc445d957ce4ad10dbe))

## [1.1.0](https://github.com/ptonini/helm-charts/compare/ingress-v1.0.0...ingress-v1.1.0) (2023-04-18)


### Features

* **ingress:** removed KongIngress creation ([9cf1218](https://github.com/ptonini/helm-charts/commit/9cf121876446c09834549808c839a7c14a99e031))

## 1.0.0 (2022-10-03)


### ⚠ BREAKING CHANGES

* added basic charts

### Miscellaneous Chores

* added basic charts ([418eaa0](https://github.com/ptonini/helm-charts/commit/418eaa0d04b5ec8fd2b5f6c664e20fddf9eedb56))
