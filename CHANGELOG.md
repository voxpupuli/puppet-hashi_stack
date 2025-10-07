# Changelog

All notable changes to this project will be documented in this file.
Each new release typically also includes the latest modulesync defaults.
These should not affect the functionality of the module.

## [v4.0.0](https://github.com/voxpupuli/puppet-hashi_stack/tree/v4.0.0) (2025-10-07)

[Full Changelog](https://github.com/voxpupuli/puppet-hashi_stack/compare/v3.3.0...v4.0.0)

**Breaking changes:**

- Drop puppet, update openvox minimum version to 8.19 [\#53](https://github.com/voxpupuli/puppet-hashi_stack/pull/53) ([TheMeier](https://github.com/TheMeier))

**Implemented enhancements:**

- apt::source: Switch from apt-key to new keyrings [\#60](https://github.com/voxpupuli/puppet-hashi_stack/pull/60) ([bastelfreak](https://github.com/bastelfreak))
- Add Debian 13 support [\#59](https://github.com/voxpupuli/puppet-hashi_stack/pull/59) ([bastelfreak](https://github.com/bastelfreak))
- puppetlabs/apt: Allow 12.x [\#57](https://github.com/voxpupuli/puppet-hashi_stack/pull/57) ([bastelfreak](https://github.com/bastelfreak))
- metadata.json: Add OpenVox [\#49](https://github.com/voxpupuli/puppet-hashi_stack/pull/49) ([jstraw](https://github.com/jstraw))

## [v3.3.0](https://github.com/voxpupuli/puppet-hashi_stack/tree/v3.3.0) (2025-02-11)

[Full Changelog](https://github.com/voxpupuli/puppet-hashi_stack/compare/v3.2.0...v3.3.0)

**Merged pull requests:**

- Add Ubuntu 24.04 support [\#47](https://github.com/voxpupuli/puppet-hashi_stack/pull/47) ([bastelfreak](https://github.com/bastelfreak))
- puppetlabs/apt: Allow 10.x [\#45](https://github.com/voxpupuli/puppet-hashi_stack/pull/45) ([bastelfreak](https://github.com/bastelfreak))

## [v3.2.0](https://github.com/voxpupuli/puppet-hashi_stack/tree/v3.2.0) (2024-03-24)

[Full Changelog](https://github.com/voxpupuli/puppet-hashi_stack/compare/v3.1.0...v3.2.0)

**Implemented enhancements:**

- Add support for AArch64/ARM64 binaries [\#36](https://github.com/voxpupuli/puppet-hashi_stack/pull/36) ([rgrizzell](https://github.com/rgrizzell))

## [v3.1.0](https://github.com/voxpupuli/puppet-hashi_stack/tree/v3.1.0) (2023-11-19)

[Full Changelog](https://github.com/voxpupuli/puppet-hashi_stack/compare/v3.0.0...v3.1.0)

**Implemented enhancements:**

- Add Debian 12 support [\#34](https://github.com/voxpupuli/puppet-hashi_stack/pull/34) ([bastelfreak](https://github.com/bastelfreak))

## [v3.0.0](https://github.com/voxpupuli/puppet-hashi_stack/tree/v3.0.0) (2023-08-19)

[Full Changelog](https://github.com/voxpupuli/puppet-hashi_stack/compare/v2.2.0...v3.0.0)

**Breaking changes:**

- Drop Puppet 6 support [\#28](https://github.com/voxpupuli/puppet-hashi_stack/pull/28) ([bastelfreak](https://github.com/bastelfreak))

**Implemented enhancements:**

- Add Ubuntu 22.04 support [\#32](https://github.com/voxpupuli/puppet-hashi_stack/pull/32) ([bastelfreak](https://github.com/bastelfreak))
- Add Debian 11 support [\#31](https://github.com/voxpupuli/puppet-hashi_stack/pull/31) ([bastelfreak](https://github.com/bastelfreak))
- Add EL9 support [\#30](https://github.com/voxpupuli/puppet-hashi_stack/pull/30) ([bastelfreak](https://github.com/bastelfreak))
- Add AlmaLinux/Rocky/OracleLinux support [\#29](https://github.com/voxpupuli/puppet-hashi_stack/pull/29) ([bastelfreak](https://github.com/bastelfreak))
- Add Puppet 8 support [\#27](https://github.com/voxpupuli/puppet-hashi_stack/pull/27) ([bastelfreak](https://github.com/bastelfreak))
- puppetlabs/stdlib: Allow 9.x [\#26](https://github.com/voxpupuli/puppet-hashi_stack/pull/26) ([bastelfreak](https://github.com/bastelfreak))

## [v2.2.0](https://github.com/voxpupuli/puppet-hashi_stack/tree/v2.2.0) (2023-01-27)

[Full Changelog](https://github.com/voxpupuli/puppet-hashi_stack/compare/v2.1.0...v2.2.0)

**Implemented enhancements:**

- add toggle for enabling yum repo [\#21](https://github.com/voxpupuli/puppet-hashi_stack/pull/21) ([wimkorevaar](https://github.com/wimkorevaar))

**Merged pull requests:**

- use new gpg key [\#22](https://github.com/voxpupuli/puppet-hashi_stack/pull/22) ([BDelacour](https://github.com/BDelacour))

## [v2.1.0](https://github.com/voxpupuli/puppet-hashi_stack/tree/v2.1.0) (2022-08-28)

[Full Changelog](https://github.com/voxpupuli/puppet-hashi_stack/compare/v2.0.1...v2.1.0)

**Implemented enhancements:**

- Add support for repo\_gpgcheck to the hashicorp yum repo [\#15](https://github.com/voxpupuli/puppet-hashi_stack/pull/15) ([hammondr](https://github.com/hammondr))

**Merged pull requests:**

- puppetlabs/apt: Allow 9.x [\#17](https://github.com/voxpupuli/puppet-hashi_stack/pull/17) ([bastelfreak](https://github.com/bastelfreak))
- Fix Ubuntu18/puppet6 CI job [\#16](https://github.com/voxpupuli/puppet-hashi_stack/pull/16) ([bastelfreak](https://github.com/bastelfreak))

## [v2.0.1](https://github.com/voxpupuli/puppet-hashi_stack/tree/v2.0.1) (2021-08-27)

[Full Changelog](https://github.com/voxpupuli/puppet-hashi_stack/compare/v2.0.0...v2.0.1)

**Merged pull requests:**

- Release 2.0.1 [\#10](https://github.com/voxpupuli/puppet-hashi_stack/pull/10) ([smortex](https://github.com/smortex))
- Allow stdlib 8.0.0 [\#8](https://github.com/voxpupuli/puppet-hashi_stack/pull/8) ([smortex](https://github.com/smortex))

## [v2.0.0](https://github.com/voxpupuli/puppet-hashi_stack/tree/v2.0.0) (2021-05-11)

[Full Changelog](https://github.com/voxpupuli/puppet-hashi_stack/compare/v1.0.0...v2.0.0)

**Breaking changes:**

- Drop EoL Debian, adjust deps for Puppet 6 & 7 [\#6](https://github.com/voxpupuli/puppet-hashi_stack/pull/6) ([genebean](https://github.com/genebean))

**Implemented enhancements:**

- Allow customising the base URL of the Yum repository [\#5](https://github.com/voxpupuli/puppet-hashi_stack/pull/5) ([nbarrientos](https://github.com/nbarrientos))
- Enable Puppet 7 support/testing [\#4](https://github.com/voxpupuli/puppet-hashi_stack/pull/4) ([bastelfreak](https://github.com/bastelfreak))

## [v1.0.0](https://github.com/voxpupuli/puppet-hashi_stack/tree/v1.0.0) (2021-01-17)

[Full Changelog](https://github.com/voxpupuli/puppet-hashi_stack/compare/d9ceffd75b1f222e1145d58cceaf3a9bcb41b360...v1.0.0)

**Implemented enhancements:**

- moving parameters into appropriate place, adding meaning unit test, f… [\#2](https://github.com/voxpupuli/puppet-hashi_stack/pull/2) ([attachmentgenie](https://github.com/attachmentgenie))



\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*
