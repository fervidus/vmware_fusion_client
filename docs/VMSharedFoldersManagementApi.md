# VMWareFusionClient::VMSharedFoldersManagementApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_shared_folder**](VMSharedFoldersManagementApi.md#create_shared_folder) | **POST** /vms/{id}/sharedfolders | Mounts a new shared folder in the VM
[**delete_shared_folder**](VMSharedFoldersManagementApi.md#delete_shared_folder) | **DELETE** /vms/{id}/sharedfolders/{folder id} | Deletes a shared folder
[**get_all_shared_folders**](VMSharedFoldersManagementApi.md#get_all_shared_folders) | **GET** /vms/{id}/sharedfolders | Returns all shared folders mounted in the VM
[**updata_shared_folder**](VMSharedFoldersManagementApi.md#updata_shared_folder) | **PUT** /vms/{id}/sharedfolders/{folder id} | Updates a shared folder mounted in the VM


# **create_shared_folder**
> SharedFolders create_shared_folder(id, parameters)

Mounts a new shared folder in the VM

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::VMSharedFoldersManagementApi.new

id = 'id_example' # String | ID of VM

parameters = VMWareFusionClient::SharedFolder.new # SharedFolder | Parameters of the shared folder to mount


begin
  #Mounts a new shared folder in the VM
  result = api_instance.create_shared_folder(id, parameters)
  p result
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling VMSharedFoldersManagementApi->create_shared_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of VM | 
 **parameters** | [**SharedFolder**](SharedFolder.md)| Parameters of the shared folder to mount | 

### Return type

[**SharedFolders**](SharedFolders.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



# **delete_shared_folder**
> delete_shared_folder(id, folder_id)

Deletes a shared folder

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::VMSharedFoldersManagementApi.new

id = 'id_example' # String | ID of VM

folder_id = 'folder_id_example' # String | ID of shared folder


begin
  #Deletes a shared folder
  api_instance.delete_shared_folder(id, folder_id)
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling VMSharedFoldersManagementApi->delete_shared_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of VM | 
 **folder_id** | **String**| ID of shared folder | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



# **get_all_shared_folders**
> SharedFolders get_all_shared_folders(id)

Returns all shared folders mounted in the VM

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::VMSharedFoldersManagementApi.new

id = 'id_example' # String | ID of VM


begin
  #Returns all shared folders mounted in the VM
  result = api_instance.get_all_shared_folders(id)
  p result
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling VMSharedFoldersManagementApi->get_all_shared_folders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of VM | 

### Return type

[**SharedFolders**](SharedFolders.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



# **updata_shared_folder**
> SharedFolders updata_shared_folder(id, folder_id, parameters)

Updates a shared folder mounted in the VM

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::VMSharedFoldersManagementApi.new

id = 'id_example' # String | ID of VM

folder_id = 'folder_id_example' # String | ID of VM shared folder

parameters = VMWareFusionClient::SharedFolderParameter.new # SharedFolderParameter | Parameters of the shared folder to update to


begin
  #Updates a shared folder mounted in the VM
  result = api_instance.updata_shared_folder(id, folder_id, parameters)
  p result
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling VMSharedFoldersManagementApi->updata_shared_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of VM | 
 **folder_id** | **String**| ID of VM shared folder | 
 **parameters** | [**SharedFolderParameter**](SharedFolderParameter.md)| Parameters of the shared folder to update to | 

### Return type

[**SharedFolders**](SharedFolders.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



