=begin
#VMware Fusion API 1.2.0

#REST API Explorer

OpenAPI spec version: 1.2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module VMWareFusionClient
  class HostNetworksManagementApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a virtual network
    # @param parameters Host network to be created
    # @param [Hash] opts the optional parameters
    # @return [Network]
    def create_network(parameters, opts = {})
      data, _status_code, _headers = create_network_with_http_info(parameters, opts)
      data
    end

    # Creates a virtual network
    # @param parameters Host network to be created
    # @param [Hash] opts the optional parameters
    # @return [Array<(Network, Fixnum, Hash)>] Network data, response status code and response headers
    def create_network_with_http_info(parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostNetworksManagementApi.create_network ...'
      end
      # verify the required parameter 'parameters' is set
      if @api_client.config.client_side_validation && parameters.nil?
        fail ArgumentError, "Missing the required parameter 'parameters' when calling HostNetworksManagementApi.create_network"
      end
      # resource path
      local_var_path = '/vmnets'

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Network')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostNetworksManagementApi#create_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes port forwarding
    # @param vmnet NAT type of virtual network
    # @param protocol Protocol type: tcp, udp
    # @param port Host port number
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_portforward(vmnet, protocol, port, opts = {})
      delete_portforward_with_http_info(vmnet, protocol, port, opts)
      nil
    end

    # Deletes port forwarding
    # @param vmnet NAT type of virtual network
    # @param protocol Protocol type: tcp, udp
    # @param port Host port number
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_portforward_with_http_info(vmnet, protocol, port, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostNetworksManagementApi.delete_portforward ...'
      end
      # verify the required parameter 'vmnet' is set
      if @api_client.config.client_side_validation && vmnet.nil?
        fail ArgumentError, "Missing the required parameter 'vmnet' when calling HostNetworksManagementApi.delete_portforward"
      end
      # verify the required parameter 'protocol' is set
      if @api_client.config.client_side_validation && protocol.nil?
        fail ArgumentError, "Missing the required parameter 'protocol' when calling HostNetworksManagementApi.delete_portforward"
      end
      # verify the required parameter 'port' is set
      if @api_client.config.client_side_validation && port.nil?
        fail ArgumentError, "Missing the required parameter 'port' when calling HostNetworksManagementApi.delete_portforward"
      end
      # resource path
      local_var_path = '/vmnet/{vmnet}/portforward/{protocol}/{port}'.sub('{' + 'vmnet' + '}', vmnet.to_s).sub('{' + 'protocol' + '}', protocol.to_s).sub('{' + 'port' + '}', port.to_s)

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostNetworksManagementApi#delete_portforward\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns all virtual networks
    # @param [Hash] opts the optional parameters
    # @return [Networks]
    def get_all_networks(opts = {})
      data, _status_code, _headers = get_all_networks_with_http_info(opts)
      data
    end

    # Returns all virtual networks
    # @param [Hash] opts the optional parameters
    # @return [Array<(Networks, Fixnum, Hash)>] Networks data, response status code and response headers
    def get_all_networks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostNetworksManagementApi.get_all_networks ...'
      end
      # resource path
      local_var_path = '/vmnet'

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Networks')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostNetworksManagementApi#get_all_networks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns all MAC-to-IP settings for DHCP service
    # @param vmnet Virtual network that has DHCP enabled
    # @param [Hash] opts the optional parameters
    # @return [MACToIPs]
    def get_mac_to_i_ps(vmnet, opts = {})
      data, _status_code, _headers = get_mac_to_i_ps_with_http_info(vmnet, opts)
      data
    end

    # Returns all MAC-to-IP settings for DHCP service
    # @param vmnet Virtual network that has DHCP enabled
    # @param [Hash] opts the optional parameters
    # @return [Array<(MACToIPs, Fixnum, Hash)>] MACToIPs data, response status code and response headers
    def get_mac_to_i_ps_with_http_info(vmnet, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostNetworksManagementApi.get_mac_to_i_ps ...'
      end
      # verify the required parameter 'vmnet' is set
      if @api_client.config.client_side_validation && vmnet.nil?
        fail ArgumentError, "Missing the required parameter 'vmnet' when calling HostNetworksManagementApi.get_mac_to_i_ps"
      end
      # resource path
      local_var_path = '/vmnet/{vmnet}/mactoip'.sub('{' + 'vmnet' + '}', vmnet.to_s)

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MACToIPs')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostNetworksManagementApi#get_mac_to_i_ps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns all port forwardings
    # @param vmnet NAT type of virtual network
    # @param [Hash] opts the optional parameters
    # @return [Portforwards]
    def get_portforwards(vmnet, opts = {})
      data, _status_code, _headers = get_portforwards_with_http_info(vmnet, opts)
      data
    end

    # Returns all port forwardings
    # @param vmnet NAT type of virtual network
    # @param [Hash] opts the optional parameters
    # @return [Array<(Portforwards, Fixnum, Hash)>] Portforwards data, response status code and response headers
    def get_portforwards_with_http_info(vmnet, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostNetworksManagementApi.get_portforwards ...'
      end
      # verify the required parameter 'vmnet' is set
      if @api_client.config.client_side_validation && vmnet.nil?
        fail ArgumentError, "Missing the required parameter 'vmnet' when calling HostNetworksManagementApi.get_portforwards"
      end
      # resource path
      local_var_path = '/vmnet/{vmnet}/portforward'.sub('{' + 'vmnet' + '}', vmnet.to_s)

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Portforwards')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostNetworksManagementApi#get_portforwards\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates the MAC-to-IP binding
    # @param vmnet Virtual network that enabled DHCP
    # @param mac Mac address that want to be mapped with a given IP
    # @param parameters IP that will be assigned to given Mac address. If empty IP, the original Mac to IP binding will be deleted
    # @param [Hash] opts the optional parameters
    # @return [ErrorModel]
    def update_mac_to_ip(vmnet, mac, parameters, opts = {})
      data, _status_code, _headers = update_mac_to_ip_with_http_info(vmnet, mac, parameters, opts)
      data
    end

    # Updates the MAC-to-IP binding
    # @param vmnet Virtual network that enabled DHCP
    # @param mac Mac address that want to be mapped with a given IP
    # @param parameters IP that will be assigned to given Mac address. If empty IP, the original Mac to IP binding will be deleted
    # @param [Hash] opts the optional parameters
    # @return [Array<(ErrorModel, Fixnum, Hash)>] ErrorModel data, response status code and response headers
    def update_mac_to_ip_with_http_info(vmnet, mac, parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostNetworksManagementApi.update_mac_to_ip ...'
      end
      # verify the required parameter 'vmnet' is set
      if @api_client.config.client_side_validation && vmnet.nil?
        fail ArgumentError, "Missing the required parameter 'vmnet' when calling HostNetworksManagementApi.update_mac_to_ip"
      end
      # verify the required parameter 'mac' is set
      if @api_client.config.client_side_validation && mac.nil?
        fail ArgumentError, "Missing the required parameter 'mac' when calling HostNetworksManagementApi.update_mac_to_ip"
      end
      # verify the required parameter 'parameters' is set
      if @api_client.config.client_side_validation && parameters.nil?
        fail ArgumentError, "Missing the required parameter 'parameters' when calling HostNetworksManagementApi.update_mac_to_ip"
      end
      # resource path
      local_var_path = '/vmnet/{vmnet}/mactoip/{mac}'.sub('{' + 'vmnet' + '}', vmnet.to_s).sub('{' + 'mac' + '}', mac.to_s)

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ErrorModel')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostNetworksManagementApi#update_mac_to_ip\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates port forwarding
    # @param vmnet NAT type of virtual network
    # @param protocol Protocol type: tcp, udp
    # @param port Host port number
    # @param parameters Guest to forward to
    # @param [Hash] opts the optional parameters
    # @return [ErrorModel]
    def update_portforward(vmnet, protocol, port, parameters, opts = {})
      data, _status_code, _headers = update_portforward_with_http_info(vmnet, protocol, port, parameters, opts)
      data
    end

    # Updates port forwarding
    # @param vmnet NAT type of virtual network
    # @param protocol Protocol type: tcp, udp
    # @param port Host port number
    # @param parameters Guest to forward to
    # @param [Hash] opts the optional parameters
    # @return [Array<(ErrorModel, Fixnum, Hash)>] ErrorModel data, response status code and response headers
    def update_portforward_with_http_info(vmnet, protocol, port, parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HostNetworksManagementApi.update_portforward ...'
      end
      # verify the required parameter 'vmnet' is set
      if @api_client.config.client_side_validation && vmnet.nil?
        fail ArgumentError, "Missing the required parameter 'vmnet' when calling HostNetworksManagementApi.update_portforward"
      end
      # verify the required parameter 'protocol' is set
      if @api_client.config.client_side_validation && protocol.nil?
        fail ArgumentError, "Missing the required parameter 'protocol' when calling HostNetworksManagementApi.update_portforward"
      end
      # verify the required parameter 'port' is set
      if @api_client.config.client_side_validation && port.nil?
        fail ArgumentError, "Missing the required parameter 'port' when calling HostNetworksManagementApi.update_portforward"
      end
      # verify the required parameter 'parameters' is set
      if @api_client.config.client_side_validation && parameters.nil?
        fail ArgumentError, "Missing the required parameter 'parameters' when calling HostNetworksManagementApi.update_portforward"
      end
      # resource path
      local_var_path = '/vmnet/{vmnet}/portforward/{protocol}/{port}'.sub('{' + 'vmnet' + '}', vmnet.to_s).sub('{' + 'protocol' + '}', protocol.to_s).sub('{' + 'port' + '}', port.to_s)

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ErrorModel')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HostNetworksManagementApi#update_portforward\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
