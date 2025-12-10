# puppet-hashi_stack

[![Puppet Forge](https://img.shields.io/puppetforge/v/puppet/hashi_stack.svg)](https://forge.puppetlabs.com/puppet/hashi_stack)
[![Puppet Forge - downloads](https://img.shields.io/puppetforge/dt/puppet/hashi_stack.svg)](https://forge.puppetlabs.com/puppet/hashi_stack)
[![Puppet Forge - endorsement](https://img.shields.io/puppetforge/e/puppet/hashi_stack.svg)](https://forge.puppetlabs.com/puppet/hashi_stack)
[![Puppet Forge - scores](https://img.shields.io/puppetforge/f/puppet/hashi_stack.svg)](https://forge.puppetlabs.com/puppet/hashi_stack)
[![puppetmodule.info docs](http://www.puppetmodule.info/images/badge.png)](http://www.puppetmodule.info/m/puppet-hashi_stack)
[![AGPL-3.0 License](https://img.shields.io/github/license/voxpupuli/puppet-hashi_stack.svg)](LICENSE)

### What This Module Affects

* Installs the hashicorp repositories

With the 4.1.0 release, the apt HashiCorp repo will be configured with a priority of 500.
As a result, the packages will have a higher priority than the debian.org default repos.

In the past, the HashiCorp repos were preferred by accident, because they usually contain newer releases than debian.org.

## Reference

See [REFERENCE](REFERENCE.md).

## Limitations

The list of tested OpenVox major versions and OS versions is listed in the metadata.json.

## Development

Vox Pupuli welcomes new contributions to this module, especially those that include documentation and rspec tests.
We are happy to provide guidance if necessary.

Open an [issue](https://github.com/voxpupuli/puppet-hashi_stack/issues) or [fork](https://github.com/voxpupuli/puppet-hashi_stack/fork) and open a [Pull Request](https://github.com/voxpupuli/puppet-hashi_stack/pulls)
