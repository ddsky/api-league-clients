# \TextAPI

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CorrectSpellingAPI**](TextAPI.md#CorrectSpellingAPI) | **Get** /correct-spelling | Correct Spelling API
[**DetectGenderByNameAPI**](TextAPI.md#DetectGenderByNameAPI) | **Get** /detect-gender | Detect Gender by Name API
[**DetectLanguageAPI**](TextAPI.md#DetectLanguageAPI) | **Get** /detect-language | Detect Language API
[**DetectSentimentAPI**](TextAPI.md#DetectSentimentAPI) | **Get** /detect-sentiment | Detect Sentiment API
[**ExtractDatesAPI**](TextAPI.md#ExtractDatesAPI) | **Get** /extract-dates | Extract Dates API
[**ExtractEntitiesAPI**](TextAPI.md#ExtractEntitiesAPI) | **Get** /extract-entities | Extract Entities API
[**ListWordSynonymsAPI**](TextAPI.md#ListWordSynonymsAPI) | **Get** /list-synonyms | List Word Synonyms API
[**PluralizeWordAPI**](TextAPI.md#PluralizeWordAPI) | **Get** /pluralize-word | Pluralize Word API
[**ScoreReadabilityAPI**](TextAPI.md#ScoreReadabilityAPI) | **Get** /score-readability | Score Readability API
[**ScoreTextAPI**](TextAPI.md#ScoreTextAPI) | **Get** /score-text | Score Text API
[**SingularizeWordAPI**](TextAPI.md#SingularizeWordAPI) | **Get** /singularize-word | Singularize Word API
[**StemTextAPI**](TextAPI.md#StemTextAPI) | **Get** /stem-text | Stem Text API
[**TagPartOfSpeechAPI**](TextAPI.md#TagPartOfSpeechAPI) | **Get** /tag-pos | Tag Part of Speech API



## CorrectSpellingAPI

> CorrectSpellingAPI200Response CorrectSpellingAPI(ctx).Text(text).Language(language).Execute()

Correct Spelling API



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
	text := "Driving carss is fun." // string | The text to be corrected.
	language := "en" // string | The language of the text, one of en, de, es, fr, or it.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TextAPI.CorrectSpellingAPI(context.Background()).Text(text).Language(language).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.CorrectSpellingAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CorrectSpellingAPI`: CorrectSpellingAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.CorrectSpellingAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCorrectSpellingAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text to be corrected. | 
 **language** | **string** | The language of the text, one of en, de, es, fr, or it. | 

### Return type

[**CorrectSpellingAPI200Response**](CorrectSpellingAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DetectGenderByNameAPI

> DetectGenderByNameAPI200Response DetectGenderByNameAPI(ctx).Name(name).Execute()

Detect Gender by Name API



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
	name := "Alex" // string | The name of the perso for which the sentiment should be detected.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TextAPI.DetectGenderByNameAPI(context.Background()).Name(name).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.DetectGenderByNameAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DetectGenderByNameAPI`: DetectGenderByNameAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.DetectGenderByNameAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDetectGenderByNameAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string** | The name of the perso for which the sentiment should be detected. | 

### Return type

[**DetectGenderByNameAPI200Response**](DetectGenderByNameAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DetectLanguageAPI

> []DetectLanguageAPI200ResponseInner DetectLanguageAPI(ctx).Text(text).Execute()

Detect Language API



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
	text := "Das ist ein Text." // string | The text for which the language should be detected.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TextAPI.DetectLanguageAPI(context.Background()).Text(text).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.DetectLanguageAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DetectLanguageAPI`: []DetectLanguageAPI200ResponseInner
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.DetectLanguageAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDetectLanguageAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text for which the language should be detected. | 

### Return type

[**[]DetectLanguageAPI200ResponseInner**](DetectLanguageAPI200ResponseInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DetectSentimentAPI

> DetectSentimentAPI200Response DetectSentimentAPI(ctx).Text(text).Execute()

Detect Sentiment API



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
	text := "Happy times feel so good." // string | The text for which the sentiment should be detected.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TextAPI.DetectSentimentAPI(context.Background()).Text(text).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.DetectSentimentAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DetectSentimentAPI`: DetectSentimentAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.DetectSentimentAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDetectSentimentAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text for which the sentiment should be detected. | 

### Return type

[**DetectSentimentAPI200Response**](DetectSentimentAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExtractDatesAPI

> ExtractDatesAPI200Response ExtractDatesAPI(ctx).Text(text).Execute()

Extract Dates API



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
	text := "On 5th or April, 2035 there will be flying cars - 2023-02-12." // string | The text from which dates should be extracted.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TextAPI.ExtractDatesAPI(context.Background()).Text(text).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.ExtractDatesAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ExtractDatesAPI`: ExtractDatesAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.ExtractDatesAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiExtractDatesAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text from which dates should be extracted. | 

### Return type

[**ExtractDatesAPI200Response**](ExtractDatesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExtractEntitiesAPI

> ExtractEntitiesAPI200Response ExtractEntitiesAPI(ctx).Text(text).Execute()

Extract Entities API



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
	text := "Jim Carrey is an actor from Canada" // string | The text from which entities should be extracted.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TextAPI.ExtractEntitiesAPI(context.Background()).Text(text).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.ExtractEntitiesAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ExtractEntitiesAPI`: ExtractEntitiesAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.ExtractEntitiesAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiExtractEntitiesAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text from which entities should be extracted. | 

### Return type

[**ExtractEntitiesAPI200Response**](ExtractEntitiesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListWordSynonymsAPI

> ListWordSynonymsAPI200Response ListWordSynonymsAPI(ctx).Word(word).Execute()

List Word Synonyms API



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
	word := "airplane" // string | The (noun) word for which a list of synonyms should be returned.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TextAPI.ListWordSynonymsAPI(context.Background()).Word(word).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.ListWordSynonymsAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListWordSynonymsAPI`: ListWordSynonymsAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.ListWordSynonymsAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiListWordSynonymsAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **string** | The (noun) word for which a list of synonyms should be returned. | 

### Return type

[**ListWordSynonymsAPI200Response**](ListWordSynonymsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PluralizeWordAPI

> PluralizeWordAPI200Response PluralizeWordAPI(ctx).Word(word).Execute()

Pluralize Word API



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
	word := "party" // string | The (noun) word for which the plural form should be found.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TextAPI.PluralizeWordAPI(context.Background()).Word(word).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.PluralizeWordAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PluralizeWordAPI`: PluralizeWordAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.PluralizeWordAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiPluralizeWordAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **string** | The (noun) word for which the plural form should be found. | 

### Return type

[**PluralizeWordAPI200Response**](PluralizeWordAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScoreReadabilityAPI

> ScoreReadabilityAPI200Response ScoreReadabilityAPI(ctx).Text(text).Execute()

Score Readability API



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
	text := "A rather complex text, hard to read, and highly convoluted using acronym TERMS." // string | The text to score for readability.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TextAPI.ScoreReadabilityAPI(context.Background()).Text(text).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.ScoreReadabilityAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScoreReadabilityAPI`: ScoreReadabilityAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.ScoreReadabilityAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiScoreReadabilityAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text to score for readability. | 

### Return type

[**ScoreReadabilityAPI200Response**](ScoreReadabilityAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScoreTextAPI

> ScoreTextAPI200Response ScoreTextAPI(ctx).Title(title).Text(text).Execute()

Score Text API



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
	title := "A short story" // string | The title of the text to score.
	text := "A nice short story to be analyzed" // string | The text to score for multiple metrics.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TextAPI.ScoreTextAPI(context.Background()).Title(title).Text(text).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.ScoreTextAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScoreTextAPI`: ScoreTextAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.ScoreTextAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiScoreTextAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **string** | The title of the text to score. | 
 **text** | **string** | The text to score for multiple metrics. | 

### Return type

[**ScoreTextAPI200Response**](ScoreTextAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SingularizeWordAPI

> SingularizeWordAPI200Response SingularizeWordAPI(ctx).Word(word).Execute()

Singularize Word API



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
	word := "airplanes" // string | The (noun) word for which the singular form should be found.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TextAPI.SingularizeWordAPI(context.Background()).Word(word).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.SingularizeWordAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SingularizeWordAPI`: SingularizeWordAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.SingularizeWordAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSingularizeWordAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **string** | The (noun) word for which the singular form should be found. | 

### Return type

[**SingularizeWordAPI200Response**](SingularizeWordAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## StemTextAPI

> StemTextAPI200Response StemTextAPI(ctx).Text(text).Execute()

Stem Text API



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
	text := "The laziest dogs are jumping over the quicker brown foxes." // string | The text to be stemmed.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TextAPI.StemTextAPI(context.Background()).Text(text).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.StemTextAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `StemTextAPI`: StemTextAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.StemTextAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiStemTextAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text to be stemmed. | 

### Return type

[**StemTextAPI200Response**](StemTextAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TagPartOfSpeechAPI

> TagPartOfSpeechAPI200Response TagPartOfSpeechAPI(ctx).Text(text).Execute()

Tag Part of Speech API



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
	text := "The lazy dog jumps over the quick brown fox." // string | The text to tag the part of speech.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TextAPI.TagPartOfSpeechAPI(context.Background()).Text(text).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.TagPartOfSpeechAPI``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TagPartOfSpeechAPI`: TagPartOfSpeechAPI200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.TagPartOfSpeechAPI`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiTagPartOfSpeechAPIRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text to tag the part of speech. | 

### Return type

[**TagPartOfSpeechAPI200Response**](TagPartOfSpeechAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

