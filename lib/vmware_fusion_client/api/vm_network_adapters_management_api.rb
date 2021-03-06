=begin
#VMware Fusion API 1.2.0

#REST API Explorer

OpenAPI spec version: 1.2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module VMWareFusionClient
  class VMNetworkAdaptersManagementApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a network adapter in the VM
    # @param id ID of VM
    # @param parameters Parameters of network adapter to create
    # @param [Hash] opts the optional parameters
    # @return [NICDevice]
    def create_nic_device(id, parameters, opts = {})
      data, _status_code, _headers = create_nic_device_with_http_info(id, parameters, opts)
      data
    end

    # Creates a network adapter in the VM
    # @param id ID of VM
    # @param parameters Parameters of network adapter to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(NICDevice, Fixnum, Hash)>] NICDevice data, response status code and response headers
    def create_nic_device_with_http_info(id, parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VMNetworkAdaptersManagementApi.create_nic_device ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VMNetworkAdaptersManagementApi.create_nic_device"
      end
      # verify the required parameter 'parameters' is set
      if @api_client.config.client_side_validation && parameters.nil?
        fail ArgumentError, "Missing the required parameter 'parameters' when calling VMNetworkAdaptersManagementApi.create_nic_device"
      end
      # resource path
      local_var_path = '/vms/{id}/nic'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.vmware.vmw.rest-v1+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/vnd.vmware.vmw.rest-v1+json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(parameters)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NICDevice')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VMNetworkAdaptersManagementApi#create_nic_device\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes a VM network adapter
    # @param id ID of VM
    # @param index Index of VM network adapter
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_nic_device(id, index, opts = {})
      delete_nic_device_with_http_info(id, index, opts)
      nil
    end

    # Deletes a VM network adapter
    # @param id ID of VM
    # @param index Index of VM network adapter
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_nic_device_with_http_info(id, index, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VMNetworkAdaptersManagementApi.delete_nic_device ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VMNetworkAdaptersManagementApi.delete_nic_device"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling VMNetworkAdaptersManagementApi.delete_nic_device"
      end
      # resource path
      local_var_path = '/vms/{id}/nic/{index}'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'index' + '}', index.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.vmware.vmw.rest-v1+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/vnd.vmware.vmw.rest-v1+json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VMNetworkAdaptersManagementApi#delete_nic_device\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns all network adapters in the VM
    # @param id ID of VM
    # @param [Hash] opts the optional parameters
    # @return [NICDevices]
    def get_all_nic_devices(id, opts = {})
      data, _status_code, _headers = get_all_nic_devices_with_http_info(id, opts)
      data
    end

    # Returns all network adapters in the VM
    # @param id ID of VM
    # @param [Hash] opts the optional parameters
    # @return [Array<(NICDevices, Fixnum, Hash)>] NICDevices data, response status code and response headers
    def get_all_nic_devices_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VMNetworkAdaptersManagementApi.get_all_nic_devices ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VMNetworkAdaptersManagementApi.get_all_nic_devices"
      end
      # resource path
      local_var_path = '/vms/{id}/nic'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.vmware.vmw.rest-v1+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/vnd.vmware.vmw.rest-v1+json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NICDevices')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VMNetworkAdaptersManagementApi#get_all_nic_devices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the IP address of a VM
    # @param id ID of VM
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse200]
    def get_ip_address(id, opts = {})
      data, _status_code, _headers = get_ip_address_with_http_info(id, opts)
      data
    end

    # Returns the IP address of a VM
    # @param id ID of VM
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse200, Fixnum, Hash)>] InlineResponse200 data, response status code and response headers
    def get_ip_address_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VMNetworkAdaptersManagementApi.get_ip_address ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VMNetworkAdaptersManagementApi.get_ip_address"
      end
      # resource path
      local_var_path = '/vms/{id}/ip'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.vmware.vmw.rest-v1+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/vnd.vmware.vmw.rest-v1+json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse200')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VMNetworkAdaptersManagementApi#get_ip_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates a network adapter in the VM
    # @param id ID of VM
    # @param index Index of VM network adapter
    # @param parameters Parameters of network adapter to update to
    # @param [Hash] opts the optional parameters
    # @return [NICDevice]
    def update_nic_device(id, index, parameters, opts = {})
      data, _status_code, _headers = update_nic_device_with_http_info(id, index, parameters, opts)
      data
    end

    # Updates a network adapter in the VM
    # @param id ID of VM
    # @param index Index of VM network adapter
    # @param parameters Parameters of network adapter to update to
    # @param [Hash] opts the optional parameters
    # @return [Array<(NICDevice, Fixnum, Hash)>] NICDevice data, response status code and response headers
    def update_nic_device_with_http_info(id, index, parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VMNetworkAdaptersManagementApi.update_nic_device ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VMNetworkAdaptersManagementApi.update_nic_device"
      end
      # verify the required parameter 'index' is set
      if @api_client.config.client_side_validation && index.nil?
        fail ArgumentError, "Missing the required parameter 'index' when calling VMNetworkAdaptersManagementApi.update_nic_device"
      end
      # verify the required parameter 'parameters' is set
      if @api_client.config.client_side_validation && parameters.nil?
        fail ArgumentError, "Missing the required parameter 'parameters' when calling VMNetworkAdaptersManagementApi.update_nic_device"
      end
      # resource path
      local_var_path = '/vms/{id}/nic/{index}'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'index' + '}', index.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.vmware.vmw.rest-v1+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/vnd.vmware.vmw.rest-v1+json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(parameters)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NICDevice')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VMNetworkAdaptersManagementApi#update_nic_device\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
