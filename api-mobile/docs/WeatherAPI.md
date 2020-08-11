# WeatherAPI

All URIs are relative to *https://www.metaweather.com/api/location*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getWeatherListByCity**](WeatherAPI.md#getweatherlistbycity) | **GET** /{id} | 


# **getWeatherListByCity**
```swift
    open class func getWeatherListByCity(id: String, completion: @escaping (_ data: CityDetailRs?, _ error: Error?) -> Void)
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | 

WeatherAPI.getWeatherListByCity(id: id) { (response, error) in
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
 **id** | **String** |  | 

### Return type

[**CityDetailRs**](CityDetailRs.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

