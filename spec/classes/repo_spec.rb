# frozen_string_literal: true

require 'spec_helper'

describe 'hashi_stack::repo' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile.with_all_deps }

      case os_facts[:os]['family']
      when 'Debian'
        it { is_expected.to contain_apt__source('HashiCorp') }
      when 'RedHat'
        it {
          expect(subject).to contain_yumrepo('HashiCorp').with(
            baseurl: 'https://rpm.releases.hashicorp.com/RHEL/$releasever/$basearch/stable'
          )
        }

        context 'with custom Yum base url' do
          let(:params) do
            {
              rpm_base: 'https://somewhere.else'
            }
          end

          it {
            expect(subject).to contain_yumrepo('HashiCorp').with(
              baseurl: 'https://somewhere.else/RHEL/$releasever/$basearch/stable'
            )
          }
        end
      end
    end
  end
end
