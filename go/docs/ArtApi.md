# \ArtAPI

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ImageToAsciiArtByURLAPI**](ArtAPI.md#ImageToAsciiArtByURLAPI) | **Get** /convert-image-to-ascii-txt | Image to Ascii Art by URL API
[**RandomPoemAPI**](ArtAPI.md#RandomPoemAPI) | **Get** /retrieve-random-poem | Random Poem API



## ImageToAsciiArtByURLAPI

> string ImageToAsciiArtByURLAPI(ctx).Url(url).Width(width).Height(height).Execute()

Image to Ascii Art by URL API



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/api-league-clients/tree/master/go/"
)

func main() {
	url := "https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png" // string | The URL to the image.
	width := int32(200) // int32 | The maximum width of the image (default 400, max. 500). (optional)
	height := int32(200) // int32 | The maximum height of the image (default 400, max. 500). (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ArtAPI.ImageToAsciiArtByURLAPI(context.Background()).Url(url).Width(width).Height(height).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ArtAPI.ImageToAsciiArtByURLAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ImageToAsciiArtByURLAPI`: string
	fmt.Fprintf(os.Stdout, "Response from `ArtAPI.ImageToAsciiArtByURLAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiImageToAsciiArtByURLAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string** | The URL to the image. | 
 **width** | **int32** | The maximum width of the image (default 400, max. 500). | 
 **height** | **int32** | The maximum height of the image (default 400, max. 500). | 

### Return type

**string**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RandomPoemAPI

> RandomPoemAPI200Response RandomPoemAPI(ctx).MinLines(minLines).MaxLines(maxLines).Execute()

Random Poem API



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/ddsky/api-league-clients/tree/master/go/"
)

func main() {
	minLines := int32(5) // int32 | The minimum number of lines of the poem. (optional)
	maxLines := int32(20) // int32 | The maximum number of lines of the poem. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ArtAPI.RandomPoemAPI(context.Background()).MinLines(minLines).MaxLines(maxLines).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ArtAPI.RandomPoemAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RandomPoemAPI`: RandomPoemAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `ArtAPI.RandomPoemAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRandomPoemAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLines** | **int32** | The minimum number of lines of the poem. | 
 **maxLines** | **int32** | The maximum number of lines of the poem. | 

### Return type

[**RandomPoemAPI200Response**](RandomPoemAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

