# frozen_string_literal: true

require 'hcl2-rb'
# @summary
#   Convert a data structure and output it as YAML
Puppet::Functions.create_function(:'hashi_stack::to_hcl') do
  # @param data
  #   The data you want to convert to YAML
  # @param options
  #   A hash of options that will be passed to Ruby's Psych library. Note, this could change between Puppet versions, but at time of writing these are `line_width`, `indentation`, and `canonical`.
  #
  # @example Output YAML to a file
  #   file { '/tmp/my.yaml':
  #     ensure  => file,
  #     content => hashi_stack::to_hcl($myhash),
  #   }
  # @example Use options to control the output format
  #   file { '/tmp/my.yaml':
  #     ensure  => file,
  #     content => hashi_stack::to_hcl($myhash, {spaces => 2, tab => 0})
  #   }
  #
  # @return [String] The YAML document
  dispatch :to_hcl do
    param 'Any', :data
    optional_param 'Hash', :options
  end

  def to_hcl(data, options = {})
    data.to_hcl2(options.transform_keys(&:to_sym))
  end
end
