# CitiesAPI

All URIs are relative to *https://www.metaweather.com/api/location*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findCitiesByLattlong**](CitiesAPI.md#findcitiesbylattlong) | **GET** /search/ | Finds cities by lattlong


# **findCitiesByLattlong**
```swift
    open class func findCitiesByLattlong(lattlong: String? = nil, completion: @escaping (_ data: [City]?, _ error: Error?) -> Void)
```

Finds cities by lattlong

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let lattlong = "lattlong_example" // String | lattlong (optional)

// Finds cities by lattlong
CitiesAPI.findCitiesByLattlong(lattlong: lattlong) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lattlong** | **String** | lattlong | [optional] 

### Return type

[**[City]**](City.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

