# VMWareFusionClient::VMPowerManagementApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**change_power_state**](VMPowerManagementApi.md#change_power_state) | **PUT** /vms/{id}/power | Changes the VM power state
[**get_power_state**](VMPowerManagementApi.md#get_power_state) | **GET** /vms/{id}/power | Returns the power state of the VM


# **change_power_state**
> VMPowerState change_power_state(id, operation)

Changes the VM power state

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::VMPowerManagementApi.new

id = 'id_example' # String | ID of VM

operation = VMWareFusionClient::VMPowerOperation.new # VMPowerOperation | VM power operation: on, off, shutdown, suspend, pause, unpause


begin
  #Changes the VM power state
  result = api_instance.change_power_state(id, operation)
  p result
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling VMPowerManagementApi->change_power_state: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of VM | 
 **operation** | [**VMPowerOperation**](VMPowerOperation.md)| VM power operation: on, off, shutdown, suspend, pause, unpause | 

### Return type

[**VMPowerState**](VMPowerState.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



# **get_power_state**
> VMPowerState get_power_state(id)

Returns the power state of the VM

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::VMPowerManagementApi.new

id = 'id_example' # String | ID of VM


begin
  #Returns the power state of the VM
  result = api_instance.get_power_state(id)
  p result
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling VMPowerManagementApi->get_power_state: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of VM | 

### Return type

[**VMPowerState**](VMPowerState.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



