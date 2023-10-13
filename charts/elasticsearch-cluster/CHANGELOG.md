# Changelog

## [1.0.0](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v2.4.2...elasticsearch-cluster-v1.0.0) (2023-10-13)


### Features

* first release ([6800aa0](https://github.com/ptonini/helm-charts/commit/6800aa0d530083e7ba378e8a23b1961ebe364346))

## [2.4.2](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v2.4.1...elasticsearch-cluster-v2.4.2) (2023-10-11)


### Bug Fixes

* fixed context generation login im elasticsearch.http template calls ([5343856](https://github.com/ptonini/helm-charts/commit/53438563d5eee7897de367532ab378f89b0b1406))

## [2.4.1](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v2.4.0...elasticsearch-cluster-v2.4.1) (2023-10-11)


### Bug Fixes

* fixed elastic ingress port number ([3b0491c](https://github.com/ptonini/helm-charts/commit/3b0491c6848c513168e973e8bfde99675bb797b6))

## [2.4.0](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v2.3.4...elasticsearch-cluster-v2.4.0) (2023-10-11)


### Features

* added ingress templates ([f99ba0b](https://github.com/ptonini/helm-charts/commit/f99ba0bf2c1071c7cd32a718af85a79437454e16))

## [2.3.4](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v2.3.3...elasticsearch-cluster-v2.3.4) (2023-10-11)


### Bug Fixes

* split agent and fleet template files ([1018f16](https://github.com/ptonini/helm-charts/commit/1018f16f6fc7e5a341a62f5440280f42a8d5c78c))

## [2.3.3](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v2.3.2...elasticsearch-cluster-v2.3.3) (2023-10-11)


### Bug Fixes

* fixed serviceAccountName parameter value in agent.yaml ([29805f8](https://github.com/ptonini/helm-charts/commit/29805f852a26c53fe17934b2dd87c93c5603cbcc))

## [2.3.2](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v2.3.1...elasticsearch-cluster-v2.3.2) (2023-10-11)


### Bug Fixes

* fixed metadata indentation on elasticsearch.http template ([cc18d12](https://github.com/ptonini/helm-charts/commit/cc18d12fac66d7c31efaa9660f57c0a960560760))

## [2.3.1](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v2.3.0...elasticsearch-cluster-v2.3.1) (2023-10-11)


### Bug Fixes

* updated default tls value ([cb261c0](https://github.com/ptonini/helm-charts/commit/cb261c04f390d47360b7fd3d5918f0b8047981b2))

## [2.3.0](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v2.2.3...elasticsearch-cluster-v2.3.0) (2023-10-11)


### Features

* updated tls block in elasticsearch.html template ([b03043c](https://github.com/ptonini/helm-charts/commit/b03043c0db45e66728013f16f403a6f232939fc6))

## [2.2.3](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v2.2.2...elasticsearch-cluster-v2.2.3) (2023-10-10)


### Bug Fixes

* updated fleet server serviceaccount permissions ([2486000](https://github.com/ptonini/helm-charts/commit/2486000a11cd10b3cd9adfbbb343b0651d357a50))

## [2.2.2](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v2.2.1...elasticsearch-cluster-v2.2.2) (2023-10-09)


### Bug Fixes

* added host path volumes to agent template ([b85fcee](https://github.com/ptonini/helm-charts/commit/b85fcee331a50ab86f60211e99b8bf59f44d1953))

## [2.2.1](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v2.2.0...elasticsearch-cluster-v2.2.1) (2023-10-09)


### Bug Fixes

* updated default agent service account cluster role ([bfa7d53](https://github.com/ptonini/helm-charts/commit/bfa7d5304df9c30c422171a86201a35daf4a1347))

## [2.2.0](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v2.1.0...elasticsearch-cluster-v2.2.0) (2023-10-08)


### Features

* added env parameter to agent template ([19fd069](https://github.com/ptonini/helm-charts/commit/19fd0693fadf77abf2e0fdbc7967f40a7482097d))

## [2.1.0](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v2.0.2...elasticsearch-cluster-v2.1.0) (2023-10-08)


### Features

* added new fields to agent template ([a37616c](https://github.com/ptonini/helm-charts/commit/a37616cfa5030e7d0fc2a48bf5c3677a60db9d7f))


### Bug Fixes

* altered tolerations indentation on agent template ([a84a4ef](https://github.com/ptonini/helm-charts/commit/a84a4efffd1b71f95be5092cfa1a3f1ee3e68a7d))

## [2.0.2](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v2.0.1...elasticsearch-cluster-v2.0.2) (2023-10-08)


### Bug Fixes

* fixed agent deployment mode ([bd6c902](https://github.com/ptonini/helm-charts/commit/bd6c902024286e1d5f0c3d095ece103c4ac3d27e))

## [2.0.1](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v2.0.0...elasticsearch-cluster-v2.0.1) (2023-10-08)


### Bug Fixes

* added fleetServerRef to agent template ([e86934d](https://github.com/ptonini/helm-charts/commit/e86934d358dc4e77f9eb342435d844aa3c7478ab))

## [2.0.0](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v1.3.0...elasticsearch-cluster-v2.0.0) (2023-10-08)


### ⚠ BREAKING CHANGES

* added fleet server and agent templates

### Features

* added fleet server and agent templates ([c546375](https://github.com/ptonini/helm-charts/commit/c546375eabe0325ad3bc22091f37b633e34e0fcd))

## [1.3.0](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v1.2.0...elasticsearch-cluster-v1.3.0) (2023-10-08)


### Features

* added kibana.config parameter ([fbcdab2](https://github.com/ptonini/helm-charts/commit/fbcdab22eacd76a65fa012975753d5c03f08a659))

## [1.2.0](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v1.1.3...elasticsearch-cluster-v1.2.0) (2023-10-08)


### Features

* added env, volume and volumeMounts to elasticsearch pod spec ([59ec5e3](https://github.com/ptonini/helm-charts/commit/59ec5e310aa19e5d987d2d531f78dcb2fffcf7a3))

## [1.1.3](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v1.1.2...elasticsearch-cluster-v1.1.3) (2023-10-07)


### Bug Fixes

* updated lib-default to 2.2.0 ([1890ce8](https://github.com/ptonini/helm-charts/commit/1890ce828c2d0b062e0fbcc7b44667cfcc2b4932))

## [1.1.2](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v1.1.1...elasticsearch-cluster-v1.1.2) (2023-10-07)


### Bug Fixes

* removed extra templates ([55a027c](https://github.com/ptonini/helm-charts/commit/55a027ca056c40ab767d3bf5db86e82cc6c9c951))

## [1.1.1](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v1.1.0...elasticsearch-cluster-v1.1.1) (2023-10-07)


### Bug Fixes

* corrected http template loading ([e45c6d4](https://github.com/ptonini/helm-charts/commit/e45c6d486cf2d97bcb051418100e960dec35b720))

## [1.1.0](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v1.0.1...elasticsearch-cluster-v1.1.0) (2022-10-27)


### Features

* **elasticsearch-cluster:** added support for cert-manager certificates ([c88ab95](https://github.com/ptonini/helm-charts/commit/c88ab95e017bb49ed5501aa519a0028daf7cac1e))

## [1.0.1](https://github.com/ptonini/helm-charts/compare/elasticsearch-cluster-v1.0.0...elasticsearch-cluster-v1.0.1) (2022-10-04)


### Bug Fixes

* normalized shared vaules to camelCase ([eca5730](https://github.com/ptonini/helm-charts/commit/eca5730cd50a1cd4b2d8226f54046b0bba4e5a86))

## 1.0.0 (2022-10-04)


### ⚠ BREAKING CHANGES

* added elasticsearch-cluster chart

### Miscellaneous Chores

* added elasticsearch-cluster chart ([3e32282](https://github.com/ptonini/helm-charts/commit/3e32282b4556228b0db8b809ce71b62f2d738a7a))
