# Changelog

## [1.6.0](https://github.com/ptonini/helm-charts/compare/lib-default-v1.5.0...lib-default-v1.6.0) (2022-10-13)


### ⚠ BREAKING CHANGES

* added default library

### Features

* added extraContainers to pode template ([78c975a](https://github.com/ptonini/helm-charts/commit/78c975acbf972e3180d4a6307c706576b2825fc0))
* added lifecycle to _container.yaml ([b04ea4a](https://github.com/ptonini/helm-charts/commit/b04ea4a08e6f3337929b7adfac5e0bc81d16c18c))
* **lib-default:** added containerSecurityContext to container template ([0ce1a92](https://github.com/ptonini/helm-charts/commit/0ce1a920c9c1efd81ccbfd4c56771374c0e98963))
* **lib-default:** added map type support for extraContainers value ([8aa9e26](https://github.com/ptonini/helm-charts/commit/8aa9e26d8a32da347db4ae6ec7d6479b36697b8d))
* **lib-default:** added support for image name in string format ([12ef044](https://github.com/ptonini/helm-charts/commit/12ef04449459a2f9bee6646080da894501a46f04))


### Bug Fixes

* corrected imagePullSecrets generator on _pod.yaml ([4147a6b](https://github.com/ptonini/helm-charts/commit/4147a6b659139dc7b6c6d99f77e7cc6bc8956cec))
* normalized shared vaules to camelCase ([b413f6e](https://github.com/ptonini/helm-charts/commit/b413f6e91f82ed1178e56c5f8ba33f5f465c6c09))
* removed typing error from _container.yaml ([1594aa1](https://github.com/ptonini/helm-charts/commit/1594aa19f8ae37d64a720719d2f1c88e143edaeb))


### Miscellaneous Chores

* added default library ([4dbbac7](https://github.com/ptonini/helm-charts/commit/4dbbac73bfe95e625cf3a5928d93ec209d6466ce))
* **lib-default:** release improvements ([945c80e](https://github.com/ptonini/helm-charts/commit/945c80ea6026bc9bce7e221c97c343e26793f69f))
* **lib-default:** removed support for 'containers' key in pod template ([78e52f0](https://github.com/ptonini/helm-charts/commit/78e52f0408615d9672c46797d4882b4d67e2ba94))

## [1.5.0](https://github.com/ptonini/helm-charts/compare/lib-default-v1.4.1...lib-default-v1.5.0) (2022-10-11)


### Features

* **lib-default:** added map type support for extraContainers value ([8aa9e26](https://github.com/ptonini/helm-charts/commit/8aa9e26d8a32da347db4ae6ec7d6479b36697b8d))

## [1.4.1](https://github.com/ptonini/helm-charts/compare/lib-default-v1.4.0...lib-default-v1.4.1) (2022-10-11)


### Miscellaneous Chores

* **lib-default:** removed support for 'containers' key in pod template ([78e52f0](https://github.com/ptonini/helm-charts/commit/78e52f0408615d9672c46797d4882b4d67e2ba94))

## [1.4.0](https://github.com/ptonini/helm-charts/compare/lib-default-v1.3.0...lib-default-v1.4.0) (2022-10-08)


### Features

* **lib-default:** added support for image name in string format ([12ef044](https://github.com/ptonini/helm-charts/commit/12ef04449459a2f9bee6646080da894501a46f04))

## [1.3.0](https://github.com/ptonini/helm-charts/compare/lib-default-v1.2.0...lib-default-v1.3.0) (2022-10-08)


### Features

* **lib-default:** added containerSecurityContext to container template ([0ce1a92](https://github.com/ptonini/helm-charts/commit/0ce1a920c9c1efd81ccbfd4c56771374c0e98963))

## [1.2.0](https://github.com/ptonini/helm-charts/compare/lib-default-v1.1.0...lib-default-v1.2.0) (2022-10-07)


### Features

* added extraContainers to pode template ([78c975a](https://github.com/ptonini/helm-charts/commit/78c975acbf972e3180d4a6307c706576b2825fc0))

## [1.1.0](https://github.com/ptonini/helm-charts/compare/lib-default-v1.0.3...lib-default-v1.1.0) (2022-10-06)


### Features

* added lifecycle to _container.yaml ([b04ea4a](https://github.com/ptonini/helm-charts/commit/b04ea4a08e6f3337929b7adfac5e0bc81d16c18c))

## [1.0.3](https://github.com/ptonini/helm-charts/compare/lib-default-v1.0.2...lib-default-v1.0.3) (2022-10-05)


### ⚠ BREAKING CHANGES

* added default library

### Bug Fixes

* corrected imagePullSecrets generator on _pod.yaml ([4147a6b](https://github.com/ptonini/helm-charts/commit/4147a6b659139dc7b6c6d99f77e7cc6bc8956cec))
* normalized shared vaules to camelCase ([b413f6e](https://github.com/ptonini/helm-charts/commit/b413f6e91f82ed1178e56c5f8ba33f5f465c6c09))
* removed typing error from _container.yaml ([1594aa1](https://github.com/ptonini/helm-charts/commit/1594aa19f8ae37d64a720719d2f1c88e143edaeb))


### Miscellaneous Chores

* added default library ([4dbbac7](https://github.com/ptonini/helm-charts/commit/4dbbac73bfe95e625cf3a5928d93ec209d6466ce))

## [1.0.2](https://github.com/ptonini/helm-charts/compare/lib-default-v1.0.1...lib-default-v1.0.2) (2022-10-04)


### Bug Fixes

* removed typing error from _container.yaml ([1594aa1](https://github.com/ptonini/helm-charts/commit/1594aa19f8ae37d64a720719d2f1c88e143edaeb))

## [1.0.1](https://github.com/ptonini/helm-charts/compare/lib-default-v1.0.0...lib-default-v1.0.1) (2022-10-04)


### Bug Fixes

* normalized shared vaules to camelCase ([b413f6e](https://github.com/ptonini/helm-charts/commit/b413f6e91f82ed1178e56c5f8ba33f5f465c6c09))

## 1.0.0 (2022-10-03)


### ⚠ BREAKING CHANGES

* added default library

### Miscellaneous Chores

* added default library ([4dbbac7](https://github.com/ptonini/helm-charts/commit/4dbbac73bfe95e625cf3a5928d93ec209d6466ce))
