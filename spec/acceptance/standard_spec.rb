require 'spec_helper_acceptance'

describe 'hashi_stack::repo class' do

  context 'default parameters' do
    # Using puppet_apply as a helper
    it 'should work with no errors based on the example' do
      pp = <<-EOS
        include hashi_stack::repo
        package { 'packer':
          ensure  => installed,
          require => Class['Hashi_stack::Repo'],
        }
      EOS

      # Run it twice and test for idempotency
      apply_manifest(pp, catch_failures: true)
      apply_manifest(pp, catch_changes: true)
    end
  end
end
