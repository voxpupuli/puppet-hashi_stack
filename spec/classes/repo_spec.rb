require 'spec_helper'

describe 'hashi_stack::repo' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      case os_facts[:os]['family']
      when 'Debian'
        it { is_expected.to contain_apt__source('HashiCorp') }
      when 'RedHat'
        it {
          is_expected.to contain_yumrepo('HashiCorp').with(
            baseurl: 'https://rpm.releases.hashicorp.com/RHEL/$releasever/$basearch/stable',
          )
        }
        context "with custom Yum base url" do
          let(:params) do
            {
              rpm_base: 'https://somewhere.else'
            }
          end

          it {
            is_expected.to contain_yumrepo('HashiCorp').with(
              baseurl: 'https://somewhere.else/RHEL/$releasever/$basearch/stable',
            )
          }
        end
      end
    end
  end
end
