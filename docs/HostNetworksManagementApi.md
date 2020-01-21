# VMWareFusionClient::HostNetworksManagementApi

All URIs are relative to *http://localhost/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_network**](HostNetworksManagementApi.md#create_network) | **POST** /vmnets | Creates a virtual network
[**delete_portforward**](HostNetworksManagementApi.md#delete_portforward) | **DELETE** /vmnet/{vmnet}/portforward/{protocol}/{port} | Deletes port forwarding
[**get_all_networks**](HostNetworksManagementApi.md#get_all_networks) | **GET** /vmnet | Returns all virtual networks
[**get_mac_to_i_ps**](HostNetworksManagementApi.md#get_mac_to_i_ps) | **GET** /vmnet/{vmnet}/mactoip | Returns all MAC-to-IP settings for DHCP service
[**get_portforwards**](HostNetworksManagementApi.md#get_portforwards) | **GET** /vmnet/{vmnet}/portforward | Returns all port forwardings
[**update_mac_to_ip**](HostNetworksManagementApi.md#update_mac_to_ip) | **PUT** /vmnet/{vmnet}/mactoip/{mac} | Updates the MAC-to-IP binding
[**update_portforward**](HostNetworksManagementApi.md#update_portforward) | **PUT** /vmnet/{vmnet}/portforward/{protocol}/{port} | Updates port forwarding


# **create_network**
> Network create_network(parameters)

Creates a virtual network

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::HostNetworksManagementApi.new

parameters = VMWareFusionClient::CreateVmnetParameter.new # CreateVmnetParameter | Host network to be created


begin
  #Creates a virtual network
  result = api_instance.create_network(parameters)
  p result
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling HostNetworksManagementApi->create_network: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**CreateVmnetParameter**](CreateVmnetParameter.md)| Host network to be created | 

### Return type

[**Network**](Network.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



# **delete_portforward**
> delete_portforward(vmnet, protocol, port)

Deletes port forwarding

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::HostNetworksManagementApi.new

vmnet = 'vmnet_example' # String | NAT type of virtual network

protocol = 'protocol_example' # String | Protocol type: tcp, udp

port = 56 # Integer | Host port number


begin
  #Deletes port forwarding
  api_instance.delete_portforward(vmnet, protocol, port)
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling HostNetworksManagementApi->delete_portforward: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vmnet** | **String**| NAT type of virtual network | 
 **protocol** | **String**| Protocol type: tcp, udp | 
 **port** | **Integer**| Host port number | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



# **get_all_networks**
> Networks get_all_networks

Returns all virtual networks

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::HostNetworksManagementApi.new

begin
  #Returns all virtual networks
  result = api_instance.get_all_networks
  p result
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling HostNetworksManagementApi->get_all_networks: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Networks**](Networks.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



# **get_mac_to_i_ps**
> MACToIPs get_mac_to_i_ps(vmnet)

Returns all MAC-to-IP settings for DHCP service

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::HostNetworksManagementApi.new

vmnet = 'vmnet_example' # String | Virtual network that has DHCP enabled


begin
  #Returns all MAC-to-IP settings for DHCP service
  result = api_instance.get_mac_to_i_ps(vmnet)
  p result
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling HostNetworksManagementApi->get_mac_to_i_ps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vmnet** | **String**| Virtual network that has DHCP enabled | 

### Return type

[**MACToIPs**](MACToIPs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



# **get_portforwards**
> Portforwards get_portforwards(vmnet)

Returns all port forwardings

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::HostNetworksManagementApi.new

vmnet = 'vmnet_example' # String | NAT type of virtual network


begin
  #Returns all port forwardings
  result = api_instance.get_portforwards(vmnet)
  p result
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling HostNetworksManagementApi->get_portforwards: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vmnet** | **String**| NAT type of virtual network | 

### Return type

[**Portforwards**](Portforwards.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



# **update_mac_to_ip**
> ErrorModel update_mac_to_ip(vmnet, mac, parameters)

Updates the MAC-to-IP binding

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::HostNetworksManagementApi.new

vmnet = 'vmnet_example' # String | Virtual network that enabled DHCP

mac = 'mac_example' # String | Mac address that want to be mapped with a given IP

parameters = VMWareFusionClient::MacToIPParameter.new # MacToIPParameter | IP that will be assigned to given Mac address. If empty IP, the original Mac to IP binding will be deleted


begin
  #Updates the MAC-to-IP binding
  result = api_instance.update_mac_to_ip(vmnet, mac, parameters)
  p result
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling HostNetworksManagementApi->update_mac_to_ip: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vmnet** | **String**| Virtual network that enabled DHCP | 
 **mac** | **String**| Mac address that want to be mapped with a given IP | 
 **parameters** | [**MacToIPParameter**](MacToIPParameter.md)| IP that will be assigned to given Mac address. If empty IP, the original Mac to IP binding will be deleted | 

### Return type

[**ErrorModel**](ErrorModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



# **update_portforward**
> ErrorModel update_portforward(vmnet, protocol, port, parameters)

Updates port forwarding

### Example
```ruby
# load the gem
require 'vmware_fusion_client'

api_instance = VMWareFusionClient::HostNetworksManagementApi.new

vmnet = 'vmnet_example' # String | NAT type of virtual network

protocol = 'protocol_example' # String | Protocol type: tcp, udp

port = 56 # Integer | Host port number

parameters = VMWareFusionClient::PortforwardParameter.new # PortforwardParameter | Guest to forward to


begin
  #Updates port forwarding
  result = api_instance.update_portforward(vmnet, protocol, port, parameters)
  p result
rescue VMWareFusionClient::ApiError => e
  puts "Exception when calling HostNetworksManagementApi->update_portforward: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vmnet** | **String**| NAT type of virtual network | 
 **protocol** | **String**| Protocol type: tcp, udp | 
 **port** | **Integer**| Host port number | 
 **parameters** | [**PortforwardParameter**](PortforwardParameter.md)| Guest to forward to | 

### Return type

[**ErrorModel**](ErrorModel.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/vnd.vmware.vmw.rest-v1+json
 - **Accept**: application/vnd.vmware.vmw.rest-v1+json



