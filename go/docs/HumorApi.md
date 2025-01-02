# \HumorAPI

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GenerateNonsenseWordAPI**](HumorAPI.md#GenerateNonsenseWordAPI) | **Get** /generate-nonsense-word | Generate Nonsense Word API
[**RandomJokeAPI**](HumorAPI.md#RandomJokeAPI) | **Get** /retrieve-random-joke | Random Joke API
[**RandomMemeAPI**](HumorAPI.md#RandomMemeAPI) | **Get** /retrieve-random-meme | Random Meme API
[**SearchGifsAPI**](HumorAPI.md#SearchGifsAPI) | **Get** /search-gifs | Search Gifs API
[**SearchJokesAPI**](HumorAPI.md#SearchJokesAPI) | **Get** /search-jokes | Search Jokes API
[**SearchMemesAPI**](HumorAPI.md#SearchMemesAPI) | **Get** /search-memes | Search Memes API



## GenerateNonsenseWordAPI

> GenerateNonsenseWordAPI200Response GenerateNonsenseWordAPI(ctx).Execute()

Generate Nonsense Word API



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

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.HumorAPI.GenerateNonsenseWordAPI(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HumorAPI.GenerateNonsenseWordAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GenerateNonsenseWordAPI`: GenerateNonsenseWordAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `HumorAPI.GenerateNonsenseWordAPI`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGenerateNonsenseWordAPIRequest struct via the builder pattern


### Return type

[**GenerateNonsenseWordAPI200Response**](GenerateNonsenseWordAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RandomJokeAPI

> SearchJokesAPI200ResponseJokesInner RandomJokeAPI(ctx).IncludeTags(includeTags).ExcludeTags(excludeTags).MinRating(minRating).MaxLength(maxLength).Execute()

Random Joke API



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
	includeTags := "animal" // string | A comma-separated list of tags the jokes should have. (optional)
	excludeTags := "nsfw,dark" // string | A comma-separated list of tags the jokes must not have. (optional)
	minRating := float64(0) // float64 | The minimum rating in range [0.0,1.0] of the jokes. (optional)
	maxLength := int32(140) // int32 | The maximum length of the joke in letters. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.HumorAPI.RandomJokeAPI(context.Background()).IncludeTags(includeTags).ExcludeTags(excludeTags).MinRating(minRating).MaxLength(maxLength).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HumorAPI.RandomJokeAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RandomJokeAPI`: SearchJokesAPI200ResponseJokesInner
	fmt.Fprintf(os.Stdout, "Response from `HumorAPI.RandomJokeAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRandomJokeAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeTags** | **string** | A comma-separated list of tags the jokes should have. | 
 **excludeTags** | **string** | A comma-separated list of tags the jokes must not have. | 
 **minRating** | **float64** | The minimum rating in range [0.0,1.0] of the jokes. | 
 **maxLength** | **int32** | The maximum length of the joke in letters. | 

### Return type

[**SearchJokesAPI200ResponseJokesInner**](SearchJokesAPI200ResponseJokesInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RandomMemeAPI

> RandomMemeAPI200Response RandomMemeAPI(ctx).Keywords(keywords).KeywordsInImage(keywordsInImage).MediaType(mediaType).MinRating(minRating).MaxAgeDays(maxAgeDays).Execute()

Random Meme API



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
	keywords := "airplane" // string | A comma-separated list of words that must occur in the meme. (optional)
	keywordsInImage := true // bool | Whether the keywords must occur in the image. (optional)
	mediaType := "image" // string | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif'). (optional)
	minRating := float64(0) // float64 | The minimum rating in range [0.0,1.0] of the meme. (optional)
	maxAgeDays := int32(30) // int32 | The maximum age of the meme in days. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.HumorAPI.RandomMemeAPI(context.Background()).Keywords(keywords).KeywordsInImage(keywordsInImage).MediaType(mediaType).MinRating(minRating).MaxAgeDays(maxAgeDays).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HumorAPI.RandomMemeAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RandomMemeAPI`: RandomMemeAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `HumorAPI.RandomMemeAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRandomMemeAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string** | A comma-separated list of words that must occur in the meme. | 
 **keywordsInImage** | **bool** | Whether the keywords must occur in the image. | 
 **mediaType** | **string** | The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | 
 **minRating** | **float64** | The minimum rating in range [0.0,1.0] of the meme. | 
 **maxAgeDays** | **int32** | The maximum age of the meme in days. | 

### Return type

[**RandomMemeAPI200Response**](RandomMemeAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchGifsAPI

> SearchGifsAPI200Response SearchGifsAPI(ctx).Query(query).Number(number).Execute()

Search Gifs API



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
	query := "dogs" // string | The search query.
	number := int32(5) // int32 | The number of gifs to return in range [1,10] (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.HumorAPI.SearchGifsAPI(context.Background()).Query(query).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HumorAPI.SearchGifsAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchGifsAPI`: SearchGifsAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `HumorAPI.SearchGifsAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchGifsAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The search query. | 
 **number** | **int32** | The number of gifs to return in range [1,10] | 

### Return type

[**SearchGifsAPI200Response**](SearchGifsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchJokesAPI

> SearchJokesAPI200Response SearchJokesAPI(ctx).Keywords(keywords).IncludeTags(includeTags).ExcludeTags(excludeTags).MinRating(minRating).MaxLength(maxLength).Offset(offset).Number(number).Execute()

Search Jokes API



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
	keywords := "horse,man" // string | A comma-separated list of words that must occur in the joke. (optional)
	includeTags := "animal" // string | A comma-separated list of tags the jokes should have. (optional)
	excludeTags := "nsfw,dark" // string | A comma-separated list of tags the jokes must not have. (optional)
	minRating := float64(0) // float64 | The minimum rating in range [0.0,1.0] of the jokes. (optional)
	maxLength := float64(140) // float64 | The maximum length of the joke in letters. (optional)
	offset := int32(0) // int32 | The number of jokes to skip, between 0 and 1000. (optional)
	number := int32(3) // int32 | The number of jokes, between 1 and 10. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.HumorAPI.SearchJokesAPI(context.Background()).Keywords(keywords).IncludeTags(includeTags).ExcludeTags(excludeTags).MinRating(minRating).MaxLength(maxLength).Offset(offset).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HumorAPI.SearchJokesAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchJokesAPI`: SearchJokesAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `HumorAPI.SearchJokesAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchJokesAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string** | A comma-separated list of words that must occur in the joke. | 
 **includeTags** | **string** | A comma-separated list of tags the jokes should have. | 
 **excludeTags** | **string** | A comma-separated list of tags the jokes must not have. | 
 **minRating** | **float64** | The minimum rating in range [0.0,1.0] of the jokes. | 
 **maxLength** | **float64** | The maximum length of the joke in letters. | 
 **offset** | **int32** | The number of jokes to skip, between 0 and 1000. | 
 **number** | **int32** | The number of jokes, between 1 and 10. | 

### Return type

[**SearchJokesAPI200Response**](SearchJokesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchMemesAPI

> SearchMemesAPI200Response SearchMemesAPI(ctx).Keywords(keywords).KeywordsInImage(keywordsInImage).MediaType(mediaType).MinRating(minRating).MaxAgeDays(maxAgeDays).Offset(offset).Number(number).Execute()

Search Memes API



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
	keywords := "rocket" // string | A comma-separated list of words that must occur in the meme. (optional)
	keywordsInImage := true // bool | Whether the keywords must occur in the image. (optional)
	mediaType := "image" // string | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif'). (optional)
	minRating := float64(0) // float64 | The minimum rating in range [0.0,1.0] of the meme. (optional)
	maxAgeDays := int32(30) // int32 | The maximum age of the meme in days. (optional)
	offset := int32(0) // int32 | The number of memes to skip, between 0 and 1000. (optional)
	number := int32(3) // int32 | The number of memes, between 1 and 10. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.HumorAPI.SearchMemesAPI(context.Background()).Keywords(keywords).KeywordsInImage(keywordsInImage).MediaType(mediaType).MinRating(minRating).MaxAgeDays(maxAgeDays).Offset(offset).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HumorAPI.SearchMemesAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchMemesAPI`: SearchMemesAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `HumorAPI.SearchMemesAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchMemesAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string** | A comma-separated list of words that must occur in the meme. | 
 **keywordsInImage** | **bool** | Whether the keywords must occur in the image. | 
 **mediaType** | **string** | The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | 
 **minRating** | **float64** | The minimum rating in range [0.0,1.0] of the meme. | 
 **maxAgeDays** | **int32** | The maximum age of the meme in days. | 
 **offset** | **int32** | The number of memes to skip, between 0 and 1000. | 
 **number** | **int32** | The number of memes, between 1 and 10. | 

### Return type

[**SearchMemesAPI200Response**](SearchMemesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

