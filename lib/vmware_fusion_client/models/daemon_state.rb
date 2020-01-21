=begin
#VMware Fusion API 1.2.0

#REST API Explorer

OpenAPI spec version: 1.2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'date'

module VMWareFusionClient
  class DaemonState
    
    ON = 'on'.freeze
    OFF = 'off'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = DaemonState.constants.select { |c| DaemonState::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #DaemonState" if constantValues.empty?
      value
    end
  end
end
