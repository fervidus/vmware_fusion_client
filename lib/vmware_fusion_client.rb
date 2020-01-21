=begin
#VMware Fusion API 1.2.0

#REST API Explorer

OpenAPI spec version: 1.2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

# Common files
require 'vmware_fusion_client/api_client'
require 'vmware_fusion_client/api_error'
require 'vmware_fusion_client/version'
require 'vmware_fusion_client/configuration'

# Models
require 'vmware_fusion_client/models/create_vmnet_parameter'
require 'vmware_fusion_client/models/daemon_state'
require 'vmware_fusion_client/models/error_model'
require 'vmware_fusion_client/models/inline_response_200'
require 'vmware_fusion_client/models/mac_to_ip'
require 'vmware_fusion_client/models/mac_to_i_ps'
require 'vmware_fusion_client/models/mac_to_ip_parameter'
require 'vmware_fusion_client/models/nic_device'
require 'vmware_fusion_client/models/nic_device_parameter'
require 'vmware_fusion_client/models/nic_devices'
require 'vmware_fusion_client/models/nic_index'
require 'vmware_fusion_client/models/nic_number'
require 'vmware_fusion_client/models/network'
require 'vmware_fusion_client/models/networks'
require 'vmware_fusion_client/models/number'
require 'vmware_fusion_client/models/port'
require 'vmware_fusion_client/models/portforward'
require 'vmware_fusion_client/models/portforward_guest'
require 'vmware_fusion_client/models/portforward_parameter'
require 'vmware_fusion_client/models/portforwards'
require 'vmware_fusion_client/models/shared_folder'
require 'vmware_fusion_client/models/shared_folder_parameter'
require 'vmware_fusion_client/models/shared_folders'
require 'vmware_fusion_client/models/vmcpu'
require 'vmware_fusion_client/models/vm_clone_parameter'
require 'vmware_fusion_client/models/vmid'
require 'vmware_fusion_client/models/vm_information'
require 'vmware_fusion_client/models/vm_memory'
require 'vmware_fusion_client/models/vm_parameter'
require 'vmware_fusion_client/models/vm_power_operation'
require 'vmware_fusion_client/models/vm_power_state'
require 'vmware_fusion_client/models/vm_processors'

# APIs
require 'vmware_fusion_client/api/host_networks_management_api'
require 'vmware_fusion_client/api/vm_management_api'
require 'vmware_fusion_client/api/vm_network_adapters_management_api'
require 'vmware_fusion_client/api/vm_power_management_api'
require 'vmware_fusion_client/api/vm_shared_folders_management_api'

module VMWareFusionClient
  class << self
    # Customize default settings for the SDK using block.
    #   VMWareFusionClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
