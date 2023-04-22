# Changelog

## [1.11.0](https://github.com/ptonini/helm-charts/compare/lib-default-v1.10.1...lib-default-v1.11.0) (2023-04-22)


### Features

* added ingressClassName to ingress template spec ([6b7fd90](https://github.com/ptonini/helm-charts/commit/6b7fd907cafd5fdc34292c623ae11b33749c5e04))

## [1.10.1](https://github.com/ptonini/helm-charts/compare/lib-default-v1.10.0...lib-default-v1.10.1) (2023-04-20)


### Bug Fixes

* **lib-default:** updated HorizontalPodAutoscaler template apiVersion to autoscaling/v2 ([1e9830e](https://github.com/ptonini/helm-charts/commit/1e9830e8e276a5d148375463366aa531b02fc248))

## [1.10.0](https://github.com/ptonini/helm-charts/compare/lib-default-v1.9.0...lib-default-v1.10.0) (2023-04-14)


### Features

* adicionado avr_memory ([#114](https://github.com/ptonini/helm-charts/issues/114)) ([8d3f9be](https://github.com/ptonini/helm-charts/commit/8d3f9bebfec98c51c8f8ed469998aef333ebbe1a))

## [1.9.0](https://github.com/ptonini/helm-charts/compare/lib-default-v1.8.0...lib-default-v1.9.0) (2023-02-27)


### Features

* **lib-default:** added headless service support to service template ([057e895](https://github.com/ptonini/helm-charts/commit/057e895be2e476e87c249843ec4d4d9b63db7cc1))
* **lib-default:** added serviceName to workload (StatefulSet) template ([5e407c2](https://github.com/ptonini/helm-charts/commit/5e407c24c6869b9f1fa50f89be66c12322ae1c10))

## [1.8.0](https://github.com/ptonini/helm-charts/compare/lib-default-v1.7.5...lib-default-v1.8.0) (2023-02-26)


### Features

* added volumeClaimTemplates to workload template ([db6b395](https://github.com/ptonini/helm-charts/commit/db6b395f98621ce6d276efe8b1fb9158dd085a4c))

## [1.7.5](https://github.com/ptonini/helm-charts/compare/lib-default-v1.7.4...lib-default-v1.7.5) (2022-11-18)


### Miscellaneous Chores

* renamed checksum field to digest and adjusted logic ([f4f7481](https://github.com/ptonini/helm-charts/commit/f4f7481e5d7c2d084720c098a83a3d86f492cd82))

## [1.7.4](https://github.com/ptonini/helm-charts/compare/lib-default-v1.7.3...lib-default-v1.7.4) (2022-10-27)


### Bug Fixes

* **lib-default:** corrected image tag call in _container.yaml ([9cb8d6f](https://github.com/ptonini/helm-charts/commit/9cb8d6f36b44b52f0e8f9a2dd26bba990439a038))

## [1.7.3](https://github.com/ptonini/helm-charts/compare/lib-default-v1.7.2...lib-default-v1.7.3) (2022-10-21)


### Miscellaneous Chores

* **lib-default:** edite webhook name in _webhook.yaml ([a0f151b](https://github.com/ptonini/helm-charts/commit/a0f151b7decb8d65b375715c41712668bb9aef93))

## [1.7.2](https://github.com/ptonini/helm-charts/compare/lib-default-v1.7.1...lib-default-v1.7.2) (2022-10-19)


### Bug Fixes

* **lib-default:** fixed env builder in _container.yaml ([a7e778b](https://github.com/ptonini/helm-charts/commit/a7e778b1f291570cdbf6cfa28cc5db9a44bf4df0))

## [1.7.1](https://github.com/ptonini/helm-charts/compare/lib-default-v1.7.0...lib-default-v1.7.1) (2022-10-19)


### Bug Fixes

* **endpoint-bots:** added 'deepCopy .Values' to root context build in collective templates ([9909439](https://github.com/ptonini/helm-charts/commit/990943913b3c03f7904ae777521082fa39b53ab5))

## [1.7.0](https://github.com/ptonini/helm-charts/compare/lib-default-v1.6.1...lib-default-v1.7.0) (2022-10-15)


### Features

* **lib-default:** added admission webhook template ([898681a](https://github.com/ptonini/helm-charts/commit/898681a6f2282be1c3603bdf0a88741ac221c234))

## [1.6.1](https://github.com/ptonini/helm-charts/compare/lib-default-v1.6.0...lib-default-v1.6.1) (2022-10-13)


### Bug Fixes

* **lib-default:** fixed token projected volume flag in _pod.yaml ([ae11d65](https://github.com/ptonini/helm-charts/commit/ae11d65e910401a9538be10b09cf6441351c10d5))

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
* **lib-default:** fixed image block in _container.yaml ([97c50f0](https://github.com/ptonini/helm-charts/commit/97c50f0090b0fa3062b95ee8c49b00807c695bbd))
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
