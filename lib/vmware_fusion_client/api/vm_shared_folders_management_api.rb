=begin
#VMware Fusion API 1.2.0

#REST API Explorer

OpenAPI spec version: 1.2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module VMWareFusionClient
  class VMSharedFoldersManagementApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Mounts a new shared folder in the VM
    # @param id ID of VM
    # @param parameters Parameters of the shared folder to mount
    # @param [Hash] opts the optional parameters
    # @return [SharedFolders]
    def create_shared_folder(id, parameters, opts = {})
      data, _status_code, _headers = create_shared_folder_with_http_info(id, parameters, opts)
      data
    end

    # Mounts a new shared folder in the VM
    # @param id ID of VM
    # @param parameters Parameters of the shared folder to mount
    # @param [Hash] opts the optional parameters
    # @return [Array<(SharedFolders, Fixnum, Hash)>] SharedFolders data, response status code and response headers
    def create_shared_folder_with_http_info(id, parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VMSharedFoldersManagementApi.create_shared_folder ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VMSharedFoldersManagementApi.create_shared_folder"
      end
      # verify the required parameter 'parameters' is set
      if @api_client.config.client_side_validation && parameters.nil?
        fail ArgumentError, "Missing the required parameter 'parameters' when calling VMSharedFoldersManagementApi.create_shared_folder"
      end
      # resource path
      local_var_path = '/vms/{id}/sharedfolders'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'SharedFolders')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VMSharedFoldersManagementApi#create_shared_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deletes a shared folder
    # @param id ID of VM
    # @param folder_id ID of shared folder
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_shared_folder(id, folder_id, opts = {})
      delete_shared_folder_with_http_info(id, folder_id, opts)
      nil
    end

    # Deletes a shared folder
    # @param id ID of VM
    # @param folder_id ID of shared folder
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_shared_folder_with_http_info(id, folder_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VMSharedFoldersManagementApi.delete_shared_folder ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VMSharedFoldersManagementApi.delete_shared_folder"
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling VMSharedFoldersManagementApi.delete_shared_folder"
      end
      # resource path
      local_var_path = '/vms/{id}/sharedfolders/{folder id}'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'folder id' + '}', folder_id.to_s)

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
        @api_client.config.logger.debug "API called: VMSharedFoldersManagementApi#delete_shared_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns all shared folders mounted in the VM
    # @param id ID of VM
    # @param [Hash] opts the optional parameters
    # @return [SharedFolders]
    def get_all_shared_folders(id, opts = {})
      data, _status_code, _headers = get_all_shared_folders_with_http_info(id, opts)
      data
    end

    # Returns all shared folders mounted in the VM
    # @param id ID of VM
    # @param [Hash] opts the optional parameters
    # @return [Array<(SharedFolders, Fixnum, Hash)>] SharedFolders data, response status code and response headers
    def get_all_shared_folders_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VMSharedFoldersManagementApi.get_all_shared_folders ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VMSharedFoldersManagementApi.get_all_shared_folders"
      end
      # resource path
      local_var_path = '/vms/{id}/sharedfolders'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'SharedFolders')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VMSharedFoldersManagementApi#get_all_shared_folders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Updates a shared folder mounted in the VM
    # @param id ID of VM
    # @param folder_id ID of VM shared folder
    # @param parameters Parameters of the shared folder to update to
    # @param [Hash] opts the optional parameters
    # @return [SharedFolders]
    def updata_shared_folder(id, folder_id, parameters, opts = {})
      data, _status_code, _headers = updata_shared_folder_with_http_info(id, folder_id, parameters, opts)
      data
    end

    # Updates a shared folder mounted in the VM
    # @param id ID of VM
    # @param folder_id ID of VM shared folder
    # @param parameters Parameters of the shared folder to update to
    # @param [Hash] opts the optional parameters
    # @return [Array<(SharedFolders, Fixnum, Hash)>] SharedFolders data, response status code and response headers
    def updata_shared_folder_with_http_info(id, folder_id, parameters, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VMSharedFoldersManagementApi.updata_shared_folder ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VMSharedFoldersManagementApi.updata_shared_folder"
      end
      # verify the required parameter 'folder_id' is set
      if @api_client.config.client_side_validation && folder_id.nil?
        fail ArgumentError, "Missing the required parameter 'folder_id' when calling VMSharedFoldersManagementApi.updata_shared_folder"
      end
      # verify the required parameter 'parameters' is set
      if @api_client.config.client_side_validation && parameters.nil?
        fail ArgumentError, "Missing the required parameter 'parameters' when calling VMSharedFoldersManagementApi.updata_shared_folder"
      end
      # resource path
      local_var_path = '/vms/{id}/sharedfolders/{folder id}'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'folder id' + '}', folder_id.to_s)

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
        :return_type => 'SharedFolders')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VMSharedFoldersManagementApi#updata_shared_folder\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
