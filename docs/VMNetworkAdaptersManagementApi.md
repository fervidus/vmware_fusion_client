# VMWareFusionClient::VMNetworkAdaptersManagementApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_nic_device**](VMNetworkAdaptersManagementApi.md#create_nic_device) | **POST** /vms/{id}/nic | Creates a network adapter in the VM
[**delete_nic_device**](VMNetworkAdaptersManagementApi.md#delete_nic_device) | **DELETE** /vms/{id}/nic/{index} | Deletes a VM network adapter
[**get_all_nic_devices**](VMNetworkAdaptersManagementApi.md#get_all_nic_devices) | **GET** /vms/{id}/nic | Returns all network adapters in the VM
[**get_ip_address**](VMNetworkAdaptersManagementApi.md#get_ip_address) | **GET** /vms/{id}/ip | Returns the IP address of a VM
[**update_nic_device**](VMNetworkAdaptersManagementApi.md#update_nic_device) | **PUT** /vms/{id}/nic/{index} | Updates a network adapter in the VM


# **create_nic_device**
> NICDevice create_nic_device(id, parameters)

Creates a network adapter in the VM

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::VMNetworkAdaptersManagementApi.new

id = 'id_example' # String | ID of VM

parameters = VMWareFusionClient::NICDeviceParameter.new # NICDeviceParameter | Parameters of network adapter to create


begin
  #Creates a network adapter in the VM
  result = api_instance.create_nic_device(id, parameters)
  p result
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling VMNetworkAdaptersManagementApi->create_nic_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of VM | 
 **parameters** | [**NICDeviceParameter**](NICDeviceParameter.md)| Parameters of network adapter to create | 

### Return type

[**NICDevice**](NICDevice.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



# **delete_nic_device**
> delete_nic_device(id, index)

Deletes a VM network adapter

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::VMNetworkAdaptersManagementApi.new

id = 'id_example' # String | ID of VM

index = 'index_example' # String | Index of VM network adapter


begin
  #Deletes a VM network adapter
  api_instance.delete_nic_device(id, index)
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling VMNetworkAdaptersManagementApi->delete_nic_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of VM | 
 **index** | **String**| Index of VM network adapter | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



# **get_all_nic_devices**
> NICDevices get_all_nic_devices(id)

Returns all network adapters in the VM

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::VMNetworkAdaptersManagementApi.new

id = 'id_example' # String | ID of VM


begin
  #Returns all network adapters in the VM
  result = api_instance.get_all_nic_devices(id)
  p result
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling VMNetworkAdaptersManagementApi->get_all_nic_devices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of VM | 

### Return type

[**NICDevices**](NICDevices.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



# **get_ip_address**
> InlineResponse200 get_ip_address(id)

Returns the IP address of a VM

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::VMNetworkAdaptersManagementApi.new

id = 'id_example' # String | ID of VM


begin
  #Returns the IP address of a VM
  result = api_instance.get_ip_address(id)
  p result
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling VMNetworkAdaptersManagementApi->get_ip_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of VM | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



# **update_nic_device**
> NICDevice update_nic_device(id, index, parameters)

Updates a network adapter in the VM

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::VMNetworkAdaptersManagementApi.new

id = 'id_example' # String | ID of VM

index = 'index_example' # String | Index of VM network adapter

parameters = VMWareFusionClient::NICDeviceParameter.new # NICDeviceParameter | Parameters of network adapter to update to


begin
  #Updates a network adapter in the VM
  result = api_instance.update_nic_device(id, index, parameters)
  p result
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling VMNetworkAdaptersManagementApi->update_nic_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of VM | 
 **index** | **String**| Index of VM network adapter | 
 **parameters** | [**NICDeviceParameter**](NICDeviceParameter.md)| Parameters of network adapter to update to | 

### Return type

[**NICDevice**](NICDevice.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



