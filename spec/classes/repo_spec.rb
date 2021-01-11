require 'spec_helper'

describe 'nomad' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts.merge(service_provider: 'systemd') }
    end
  end
end