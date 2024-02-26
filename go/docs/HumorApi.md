# com.apileague.client\HumorApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GenerateNonsenseWord**](HumorApi.md#GenerateNonsenseWord) | **Get** /generate-nonsense-word | Generate Nonsense Word
[**RandomJoke**](HumorApi.md#RandomJoke) | **Get** /retrieve-random-joke | Random Joke
[**RandomMeme**](HumorApi.md#RandomMeme) | **Get** /retrieve-random-meme | Random Meme
[**SearchGifs**](HumorApi.md#SearchGifs) | **Get** /search-gifs | Search Gifs
[**SearchJokes**](HumorApi.md#SearchJokes) | **Get** /search-jokes | Search Jokes
[**SearchMemes**](HumorApi.md#SearchMemes) | **Get** /search-memes | Search Memes



## GenerateNonsenseWord

> InlineResponse2008 GenerateNonsenseWord(ctx).Execute()

Generate Nonsense Word



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.HumorApi.GenerateNonsenseWord(context.Background()).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `HumorApi.GenerateNonsenseWord``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `GenerateNonsenseWord`: InlineResponse2008
    fmt.Fprintf(os.Stdout, "Response from `HumorApi.GenerateNonsenseWord`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGenerateNonsenseWordRequest struct via the builder pattern


### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RandomJoke

> InlineResponse2004Jokes RandomJoke(ctx).IncludeTags(includeTags).ExcludeTags(excludeTags).MinRating(minRating).MaxLength(maxLength).Execute()

Random Joke



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    includeTags := "animal" // string | A comma-separated list of tags the jokes should have. (optional)
    excludeTags := "nsfw,dark" // string | A comma-separated list of tags the jokes must not have. (optional)
    minRating := float64(0) // float64 | The minimum rating in range [0.0,1.0] of the jokes. (optional)
    maxLength := int32(140) // int32 | The maximum length of the joke in letters. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.HumorApi.RandomJoke(context.Background()).IncludeTags(includeTags).ExcludeTags(excludeTags).MinRating(minRating).MaxLength(maxLength).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `HumorApi.RandomJoke``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `RandomJoke`: InlineResponse2004Jokes
    fmt.Fprintf(os.Stdout, "Response from `HumorApi.RandomJoke`: %v\n", resp)
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

[**InlineResponse2004Jokes**](InlineResponse2004Jokes.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RandomMeme

> InlineResponse2006 RandomMeme(ctx).Keywords(keywords).KeywordsInImage(keywordsInImage).MediaType(mediaType).MinRating(minRating).MaxAgeDays(maxAgeDays).Execute()

Random Meme



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    keywords := "airplane" // string | A comma-separated list of words that must occur in the meme. (optional)
    keywordsInImage := true // bool | Whether the keywords must occur in the image. (optional)
    mediaType := "image" // string | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif'). (optional)
    minRating := float64(0) // float64 | The minimum rating in range [0.0-1.0] of the meme. (optional)
    maxAgeDays := int32(30) // int32 | The maximum age of the meme in days. (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.HumorApi.RandomMeme(context.Background()).Keywords(keywords).KeywordsInImage(keywordsInImage).MediaType(mediaType).MinRating(minRating).MaxAgeDays(maxAgeDays).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `HumorApi.RandomMeme``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `RandomMeme`: InlineResponse2006
    fmt.Fprintf(os.Stdout, "Response from `HumorApi.RandomMeme`: %v\n", resp)
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

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchGifs

> InlineResponse2007 SearchGifs(ctx).Query(query).Number(number).Execute()

Search Gifs



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    query := "dogs" // string | The search query.
    number := int32(5) // int32 | The number of gifs to return in range [1,10] (optional)

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.HumorApi.SearchGifs(context.Background()).Query(query).Number(number).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `HumorApi.SearchGifs``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SearchGifs`: InlineResponse2007
    fmt.Fprintf(os.Stdout, "Response from `HumorApi.SearchGifs`: %v\n", resp)
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

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchJokes

> InlineResponse2004 SearchJokes(ctx).Keywords(keywords).IncludeTags(includeTags).ExcludeTags(excludeTags).MinRating(minRating).MaxLength(maxLength).Offset(offset).Number(number).Execute()

Search Jokes



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
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
    resp, r, err := apiClient.HumorApi.SearchJokes(context.Background()).Keywords(keywords).IncludeTags(includeTags).ExcludeTags(excludeTags).MinRating(minRating).MaxLength(maxLength).Offset(offset).Number(number).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `HumorApi.SearchJokes``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SearchJokes`: InlineResponse2004
    fmt.Fprintf(os.Stdout, "Response from `HumorApi.SearchJokes`: %v\n", resp)
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

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchMemes

> InlineResponse2005 SearchMemes(ctx).Keywords(keywords).KeywordsInImage(keywordsInImage).MediaType(mediaType).MinRating(minRating).MaxAgeDays(maxAgeDays).Offset(offset).Number(number).Execute()

Search Memes



### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
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
    resp, r, err := apiClient.HumorApi.SearchMemes(context.Background()).Keywords(keywords).KeywordsInImage(keywordsInImage).MediaType(mediaType).MinRating(minRating).MaxAgeDays(maxAgeDays).Offset(offset).Number(number).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `HumorApi.SearchMemes``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SearchMemes`: InlineResponse2005
    fmt.Fprintf(os.Stdout, "Response from `HumorApi.SearchMemes`: %v\n", resp)
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

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

