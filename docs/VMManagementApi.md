# VMWareFusionClient::VMManagementApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_vm**](VMManagementApi.md#create_vm) | **POST** /vms | Creates a copy of the VM
[**delete_vm**](VMManagementApi.md#delete_vm) | **DELETE** /vms/{id} | Deletes a VM
[**get_all_v_ms**](VMManagementApi.md#get_all_v_ms) | **GET** /vms | Returns a list of VM IDs and paths for all VMs
[**get_vm**](VMManagementApi.md#get_vm) | **GET** /vms/{id} | Returns the VM setting information of a VM
[**update_vm**](VMManagementApi.md#update_vm) | **PUT** /vms/{id} | Updates the VM settings


# **create_vm**
> VMInformation create_vm(params)

Creates a copy of the VM

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::VMManagementApi.new

params = VMWareFusionClient::VMCloneParameter.new # VMCloneParameter | Parameters of VM to create


begin
  #Creates a copy of the VM
  result = api_instance.create_vm(params)
  p result
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling VMManagementApi->create_vm: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | [**VMCloneParameter**](VMCloneParameter.md)| Parameters of VM to create | 

### Return type

[**VMInformation**](VMInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



# **delete_vm**
> delete_vm(id)

Deletes a VM

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::VMManagementApi.new

id = 'id_example' # String | ID of VM


begin
  #Deletes a VM
  api_instance.delete_vm(id)
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling VMManagementApi->delete_vm: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of VM | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



# **get_all_v_ms**
> Array&lt;VMID&gt; get_all_v_ms

Returns a list of VM IDs and paths for all VMs

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::VMManagementApi.new

begin
  #Returns a list of VM IDs and paths for all VMs
  result = api_instance.get_all_v_ms
  p result
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling VMManagementApi->get_all_v_ms: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;VMID&gt;**](VMID.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



# **get_vm**
> VMInformation get_vm(id)

Returns the VM setting information of a VM

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::VMManagementApi.new

id = 'id_example' # String | ID of VM


begin
  #Returns the VM setting information of a VM
  result = api_instance.get_vm(id)
  p result
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling VMManagementApi->get_vm: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of VM | 

### Return type

[**VMInformation**](VMInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



# **update_vm**
> VMInformation update_vm(id, parameters)

Updates the VM settings

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::VMManagementApi.new

id = 'id_example' # String | ID of VM

parameters = VMWareFusionClient::VMParameter.new # VMParameter | VM definition


begin
  #Updates the VM settings
  result = api_instance.update_vm(id, parameters)
  p result
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling VMManagementApi->update_vm: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of VM | 
 **parameters** | [**VMParameter**](VMParameter.md)| VM definition | 

### Return type

[**VMInformation**](VMInformation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



