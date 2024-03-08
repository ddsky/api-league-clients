# \HumorAPI

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GenerateNonsenseWord**](HumorAPI.md#GenerateNonsenseWord) | **Get** /generate-nonsense-word | Generate Nonsense Word
[**RandomJoke**](HumorAPI.md#RandomJoke) | **Get** /retrieve-random-joke | Random Joke
[**RandomMeme**](HumorAPI.md#RandomMeme) | **Get** /retrieve-random-meme | Random Meme
[**SearchGifs**](HumorAPI.md#SearchGifs) | **Get** /search-gifs | Search Gifs
[**SearchJokes**](HumorAPI.md#SearchJokes) | **Get** /search-jokes | Search Jokes
[**SearchMemes**](HumorAPI.md#SearchMemes) | **Get** /search-memes | Search Memes



## GenerateNonsenseWord

> GenerateNonsenseWord200Response GenerateNonsenseWord(ctx).Execute()

Generate Nonsense Word



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
	resp, r, err := apiClient.HumorAPI.GenerateNonsenseWord(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HumorAPI.GenerateNonsenseWord``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GenerateNonsenseWord`: GenerateNonsenseWord200Response
	fmt.Fprintf(os.Stdout, "Response from `HumorAPI.GenerateNonsenseWord`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGenerateNonsenseWordRequest struct via the builder pattern


### Return type

[**GenerateNonsenseWord200Response**](GenerateNonsenseWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RandomJoke

> SearchJokes200ResponseJokesInner RandomJoke(ctx).IncludeTags(includeTags).ExcludeTags(excludeTags).MinRating(minRating).MaxLength(maxLength).Execute()

Random Joke



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
	resp, r, err := apiClient.HumorAPI.RandomJoke(context.Background()).IncludeTags(includeTags).ExcludeTags(excludeTags).MinRating(minRating).MaxLength(maxLength).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HumorAPI.RandomJoke``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RandomJoke`: SearchJokes200ResponseJokesInner
	fmt.Fprintf(os.Stdout, "Response from `HumorAPI.RandomJoke`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRandomJokeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeTags** | **string** | A comma-separated list of tags the jokes should have. | 
 **excludeTags** | **string** | A comma-separated list of tags the jokes must not have. | 
 **minRating** | **float64** | The minimum rating in range [0.0,1.0] of the jokes. | 
 **maxLength** | **int32** | The maximum length of the joke in letters. | 

### Return type

[**SearchJokes200ResponseJokesInner**](SearchJokes200ResponseJokesInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RandomMeme

> RandomMeme200Response RandomMeme(ctx).Keywords(keywords).KeywordsInImage(keywordsInImage).MediaType(mediaType).MinRating(minRating).MaxAgeDays(maxAgeDays).Execute()

Random Meme



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
	minRating := float64(0) // float64 | The minimum rating in range [0.0-1.0] of the meme. (optional)
	maxAgeDays := int32(30) // int32 | The maximum age of the meme in days. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.HumorAPI.RandomMeme(context.Background()).Keywords(keywords).KeywordsInImage(keywordsInImage).MediaType(mediaType).MinRating(minRating).MaxAgeDays(maxAgeDays).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HumorAPI.RandomMeme``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `RandomMeme`: RandomMeme200Response
	fmt.Fprintf(os.Stdout, "Response from `HumorAPI.RandomMeme`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRandomMemeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string** | A comma-separated list of words that must occur in the meme. | 
 **keywordsInImage** | **bool** | Whether the keywords must occur in the image. | 
 **mediaType** | **string** | The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | 
 **minRating** | **float64** | The minimum rating in range [0.0-1.0] of the meme. | 
 **maxAgeDays** | **int32** | The maximum age of the meme in days. | 

### Return type

[**RandomMeme200Response**](RandomMeme200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchGifs

> SearchGifs200Response SearchGifs(ctx).Query(query).Number(number).Execute()

Search Gifs



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
	resp, r, err := apiClient.HumorAPI.SearchGifs(context.Background()).Query(query).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HumorAPI.SearchGifs``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchGifs`: SearchGifs200Response
	fmt.Fprintf(os.Stdout, "Response from `HumorAPI.SearchGifs`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchGifsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **string** | The search query. | 
 **number** | **int32** | The number of gifs to return in range [1,10] | 

### Return type

[**SearchGifs200Response**](SearchGifs200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchJokes

> SearchJokes200Response SearchJokes(ctx).Keywords(keywords).IncludeTags(includeTags).ExcludeTags(excludeTags).MinRating(minRating).MaxLength(maxLength).Offset(offset).Number(number).Execute()

Search Jokes



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
	minRating := float64(0) // float64 | The minimum rating (0-10) of the jokes. (optional)
	maxLength := float64(140) // float64 | The maximum length of the joke in letters. (optional)
	offset := int32(0) // int32 | The number of jokes to skip, between 0 and 1000. (optional)
	number := int32(3) // int32 | The number of jokes, between 1 and 10. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.HumorAPI.SearchJokes(context.Background()).Keywords(keywords).IncludeTags(includeTags).ExcludeTags(excludeTags).MinRating(minRating).MaxLength(maxLength).Offset(offset).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HumorAPI.SearchJokes``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchJokes`: SearchJokes200Response
	fmt.Fprintf(os.Stdout, "Response from `HumorAPI.SearchJokes`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchJokesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string** | A comma-separated list of words that must occur in the joke. | 
 **includeTags** | **string** | A comma-separated list of tags the jokes should have. | 
 **excludeTags** | **string** | A comma-separated list of tags the jokes must not have. | 
 **minRating** | **float64** | The minimum rating (0-10) of the jokes. | 
 **maxLength** | **float64** | The maximum length of the joke in letters. | 
 **offset** | **int32** | The number of jokes to skip, between 0 and 1000. | 
 **number** | **int32** | The number of jokes, between 1 and 10. | 

### Return type

[**SearchJokes200Response**](SearchJokes200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchMemes

> SearchMemes200Response SearchMemes(ctx).Keywords(keywords).KeywordsInImage(keywordsInImage).MediaType(mediaType).MinRating(minRating).MaxAgeDays(maxAgeDays).Offset(offset).Number(number).Execute()

Search Memes



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
	number := int32(3) // int32 | The number of memes, between 0 and 10. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.HumorAPI.SearchMemes(context.Background()).Keywords(keywords).KeywordsInImage(keywordsInImage).MediaType(mediaType).MinRating(minRating).MaxAgeDays(maxAgeDays).Offset(offset).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `HumorAPI.SearchMemes``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchMemes`: SearchMemes200Response
	fmt.Fprintf(os.Stdout, "Response from `HumorAPI.SearchMemes`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchMemesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keywords** | **string** | A comma-separated list of words that must occur in the meme. | 
 **keywordsInImage** | **bool** | Whether the keywords must occur in the image. | 
 **mediaType** | **string** | The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;). | 
 **minRating** | **float64** | The minimum rating in range [0.0,1.0] of the meme. | 
 **maxAgeDays** | **int32** | The maximum age of the meme in days. | 
 **offset** | **int32** | The number of memes to skip, between 0 and 1000. | 
 **number** | **int32** | The number of memes, between 0 and 10. | 

### Return type

[**SearchMemes200Response**](SearchMemes200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

