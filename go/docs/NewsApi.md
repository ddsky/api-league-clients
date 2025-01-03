# \NewsAPI

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExtractNewsAPI**](NewsAPI.md#ExtractNewsAPI) | **Get** /extract-news | Extract News API
[**SearchNewsAPI**](NewsAPI.md#SearchNewsAPI) | **Get** /search-news | Search News API
[**TopNewsAPI**](NewsAPI.md#TopNewsAPI) | **Get** /retrieve-top-news | Top News API



## ExtractNewsAPI

> ExtractNewsAPI200Response ExtractNewsAPI(ctx).Url(url).Analyze(analyze).Execute()

Extract News API



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
	url := "https://internetprotocol.co/hitech/2021/12/07/tesla-to-release-a-four-motor-cybertruck/" // string | The url of the news.
	analyze := true // bool | Whether to analyze the news (extract entities etc.)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NewsAPI.ExtractNewsAPI(context.Background()).Url(url).Analyze(analyze).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NewsAPI.ExtractNewsAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ExtractNewsAPI`: ExtractNewsAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `NewsAPI.ExtractNewsAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiExtractNewsAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **string** | The url of the news. | 
 **analyze** | **bool** | Whether to analyze the news (extract entities etc.) | 

### Return type

[**ExtractNewsAPI200Response**](ExtractNewsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchNewsAPI

> SearchNewsAPI200Response SearchNewsAPI(ctx).Text(text).SourceCountries(sourceCountries).Language(language).MinSentiment(minSentiment).MaxSentiment(maxSentiment).EarliestPublishDate(earliestPublishDate).LatestPublishDate(latestPublishDate).NewsSources(newsSources).Authors(authors).Categories(categories).Entities(entities).LocationFilter(locationFilter).Sort(sort).SortDirection(sortDirection).Offset(offset).Number(number).Execute()

Search News API



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
	text := "tesla" // string | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. (optional)
	sourceCountries := "us,uk" // string | A comma-separated list of ISO 3166 country codes from which the news should originate. (optional)
	language := "en" // string | The ISO 6391 language code of the news. (optional)
	minSentiment := float64(-0.8) // float64 | The minimal sentiment of the news in range [-1,1]. (optional)
	maxSentiment := float64(0.8) // float64 | The maximal sentiment of the news in range [-1,1]. (optional)
	earliestPublishDate := "2022-04-22 16:12:35" // string | The news must have been published after this date. (optional)
	latestPublishDate := "2022-04-22 16:12:35" // string | The news must have been published before this date. (optional)
	newsSources := "https://www.bbc.co.uk" // string | A comma-separated list of news sources from which the news should originate. (optional)
	authors := "John Doe" // string | A comma-separated list of author names. Only news from any of the given authors will be returned. (optional)
	categories := "politics,sports" // string | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. (optional)
	entities := "ORG:Tesla" // string | Filter news by entities (ORG, PER, or LOC). (optional)
	locationFilter := "51.050407, 13.737262, 100" // string | Filter news by radius around a certain location. Format is \"latitude,longitude,radius in kilometers\" (optional)
	sort := "publish-time" // string | The sorting criteria (publish-time). (optional)
	sortDirection := "ASC" // string | Whether to sort ascending or descending (ASC or DESC). (optional)
	offset := int32(0) // int32 | The number of news to skip in range [0,10000] (optional)
	number := int32(10) // int32 | The number of news to return in range [1,100] (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NewsAPI.SearchNewsAPI(context.Background()).Text(text).SourceCountries(sourceCountries).Language(language).MinSentiment(minSentiment).MaxSentiment(maxSentiment).EarliestPublishDate(earliestPublishDate).LatestPublishDate(latestPublishDate).NewsSources(newsSources).Authors(authors).Categories(categories).Entities(entities).LocationFilter(locationFilter).Sort(sort).SortDirection(sortDirection).Offset(offset).Number(number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NewsAPI.SearchNewsAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchNewsAPI`: SearchNewsAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `NewsAPI.SearchNewsAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchNewsAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford. | 
 **sourceCountries** | **string** | A comma-separated list of ISO 3166 country codes from which the news should originate. | 
 **language** | **string** | The ISO 6391 language code of the news. | 
 **minSentiment** | **float64** | The minimal sentiment of the news in range [-1,1]. | 
 **maxSentiment** | **float64** | The maximal sentiment of the news in range [-1,1]. | 
 **earliestPublishDate** | **string** | The news must have been published after this date. | 
 **latestPublishDate** | **string** | The news must have been published before this date. | 
 **newsSources** | **string** | A comma-separated list of news sources from which the news should originate. | 
 **authors** | **string** | A comma-separated list of author names. Only news from any of the given authors will be returned. | 
 **categories** | **string** | A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other. | 
 **entities** | **string** | Filter news by entities (ORG, PER, or LOC). | 
 **locationFilter** | **string** | Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot; | 
 **sort** | **string** | The sorting criteria (publish-time). | 
 **sortDirection** | **string** | Whether to sort ascending or descending (ASC or DESC). | 
 **offset** | **int32** | The number of news to skip in range [0,10000] | 
 **number** | **int32** | The number of news to return in range [1,100] | 

### Return type

[**SearchNewsAPI200Response**](SearchNewsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TopNewsAPI

> TopNewsAPI200Response TopNewsAPI(ctx).SourceCountry(sourceCountry).Language(language).Date(date).HeadlinesOnly(headlinesOnly).Execute()

Top News API



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
	sourceCountry := "us" // string | The ISO 3166 country code of the country for which top news should be retrieved.
	language := "en" // string | The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
	date := "2024-05-30" // string | The date for which the top news should be retrieved. If no date is given, the current day is assumed. (optional)
	headlinesOnly := false // bool | Whether to only return basic information such as id, title, and url of the news. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.NewsAPI.TopNewsAPI(context.Background()).SourceCountry(sourceCountry).Language(language).Date(date).HeadlinesOnly(headlinesOnly).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `NewsAPI.TopNewsAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TopNewsAPI`: TopNewsAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `NewsAPI.TopNewsAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiTopNewsAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceCountry** | **string** | The ISO 3166 country code of the country for which top news should be retrieved. | 
 **language** | **string** | The ISO 6391 language code of the top news. The language must be one spoken in the source-country. | 
 **date** | **string** | The date for which the top news should be retrieved. If no date is given, the current day is assumed. | 
 **headlinesOnly** | **bool** | Whether to only return basic information such as id, title, and url of the news. | 

### Return type

[**TopNewsAPI200Response**](TopNewsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

