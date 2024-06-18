# \TextAPI

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CorrectSpelling**](TextAPI.md#CorrectSpelling) | **Get** /correct-spelling | Correct Spelling
[**DetectGenderByName**](TextAPI.md#DetectGenderByName) | **Get** /detect-gender | Detect Gender by Name
[**DetectLanguage**](TextAPI.md#DetectLanguage) | **Get** /detect-language | Detect Language
[**DetectSentiment**](TextAPI.md#DetectSentiment) | **Get** /detect-sentiment | Detect Sentiment
[**ExtractDates**](TextAPI.md#ExtractDates) | **Get** /extract-dates | Extract Dates
[**ExtractEntities**](TextAPI.md#ExtractEntities) | **Get** /extract-entities | Extract Entities
[**ListWordSynonyms**](TextAPI.md#ListWordSynonyms) | **Get** /list-synonyms | List Word Synonyms
[**PluralizeWord**](TextAPI.md#PluralizeWord) | **Get** /pluralize-word | Pluralize Word
[**ScoreReadability**](TextAPI.md#ScoreReadability) | **Get** /score-readability | Score Readability
[**ScoreText**](TextAPI.md#ScoreText) | **Get** /score-text | Score Text
[**SingularizeWord**](TextAPI.md#SingularizeWord) | **Get** /singularize-word | Singularize Word
[**StemText**](TextAPI.md#StemText) | **Get** /stem-text | Stem Text
[**TagPartOfSpeech**](TextAPI.md#TagPartOfSpeech) | **Get** /tag-pos | Tag Part of Speech



## CorrectSpelling

> CorrectSpelling200Response CorrectSpelling(ctx).Text(text).Language(language).Execute()

Correct Spelling



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
	resp, r, err := apiClient.TextAPI.CorrectSpelling(context.Background()).Text(text).Language(language).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.CorrectSpelling``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CorrectSpelling`: CorrectSpelling200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.CorrectSpelling`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCorrectSpellingRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text to be corrected. | 
 **language** | **string** | The language of the text, one of en, de, es, fr, or it. | 

### Return type

[**CorrectSpelling200Response**](CorrectSpelling200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DetectGenderByName

> DetectGenderByName200Response DetectGenderByName(ctx).Name(name).Execute()

Detect Gender by Name



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
	resp, r, err := apiClient.TextAPI.DetectGenderByName(context.Background()).Name(name).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.DetectGenderByName``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DetectGenderByName`: DetectGenderByName200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.DetectGenderByName`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDetectGenderByNameRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string** | The name of the perso for which the sentiment should be detected. | 

### Return type

[**DetectGenderByName200Response**](DetectGenderByName200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DetectLanguage

> []DetectLanguage200ResponseInner DetectLanguage(ctx).Text(text).Execute()

Detect Language



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
	resp, r, err := apiClient.TextAPI.DetectLanguage(context.Background()).Text(text).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.DetectLanguage``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DetectLanguage`: []DetectLanguage200ResponseInner
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.DetectLanguage`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDetectLanguageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text for which the language should be detected. | 

### Return type

[**[]DetectLanguage200ResponseInner**](DetectLanguage200ResponseInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DetectSentiment

> DetectSentiment200Response DetectSentiment(ctx).Text(text).Execute()

Detect Sentiment



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
	resp, r, err := apiClient.TextAPI.DetectSentiment(context.Background()).Text(text).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.DetectSentiment``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DetectSentiment`: DetectSentiment200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.DetectSentiment`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDetectSentimentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text for which the sentiment should be detected. | 

### Return type

[**DetectSentiment200Response**](DetectSentiment200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExtractDates

> ExtractDates200Response ExtractDates(ctx).Text(text).Execute()

Extract Dates



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
	resp, r, err := apiClient.TextAPI.ExtractDates(context.Background()).Text(text).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.ExtractDates``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ExtractDates`: ExtractDates200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.ExtractDates`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiExtractDatesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text from which dates should be extracted. | 

### Return type

[**ExtractDates200Response**](ExtractDates200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExtractEntities

> ExtractEntities200Response ExtractEntities(ctx).Text(text).Execute()

Extract Entities



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
	resp, r, err := apiClient.TextAPI.ExtractEntities(context.Background()).Text(text).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.ExtractEntities``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ExtractEntities`: ExtractEntities200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.ExtractEntities`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiExtractEntitiesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text from which entities should be extracted. | 

### Return type

[**ExtractEntities200Response**](ExtractEntities200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListWordSynonyms

> ListWordSynonyms200Response ListWordSynonyms(ctx).Word(word).Execute()

List Word Synonyms



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
	resp, r, err := apiClient.TextAPI.ListWordSynonyms(context.Background()).Word(word).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.ListWordSynonyms``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ListWordSynonyms`: ListWordSynonyms200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.ListWordSynonyms`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiListWordSynonymsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **string** | The (noun) word for which a list of synonyms should be returned. | 

### Return type

[**ListWordSynonyms200Response**](ListWordSynonyms200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PluralizeWord

> PluralizeWord200Response PluralizeWord(ctx).Word(word).Execute()

Pluralize Word



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
	resp, r, err := apiClient.TextAPI.PluralizeWord(context.Background()).Word(word).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.PluralizeWord``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PluralizeWord`: PluralizeWord200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.PluralizeWord`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiPluralizeWordRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **string** | The (noun) word for which the plural form should be found. | 

### Return type

[**PluralizeWord200Response**](PluralizeWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScoreReadability

> ScoreReadability200Response ScoreReadability(ctx).Text(text).Execute()

Score Readability



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
	resp, r, err := apiClient.TextAPI.ScoreReadability(context.Background()).Text(text).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.ScoreReadability``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScoreReadability`: ScoreReadability200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.ScoreReadability`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiScoreReadabilityRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text to score for readability. | 

### Return type

[**ScoreReadability200Response**](ScoreReadability200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScoreText

> ScoreText200Response ScoreText(ctx).Title(title).Text(text).Execute()

Score Text



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
	resp, r, err := apiClient.TextAPI.ScoreText(context.Background()).Title(title).Text(text).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.ScoreText``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScoreText`: ScoreText200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.ScoreText`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiScoreTextRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **string** | The title of the text to score. | 
 **text** | **string** | The text to score for multiple metrics. | 

### Return type

[**ScoreText200Response**](ScoreText200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SingularizeWord

> SingularizeWord200Response SingularizeWord(ctx).Word(word).Execute()

Singularize Word



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
	resp, r, err := apiClient.TextAPI.SingularizeWord(context.Background()).Word(word).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.SingularizeWord``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SingularizeWord`: SingularizeWord200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.SingularizeWord`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSingularizeWordRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **string** | The (noun) word for which the singular form should be found. | 

### Return type

[**SingularizeWord200Response**](SingularizeWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## StemText

> StemText200Response StemText(ctx).Text(text).Execute()

Stem Text



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
	resp, r, err := apiClient.TextAPI.StemText(context.Background()).Text(text).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.StemText``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `StemText`: StemText200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.StemText`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiStemTextRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text to be stemmed. | 

### Return type

[**StemText200Response**](StemText200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TagPartOfSpeech

> TagPartOfSpeech200Response TagPartOfSpeech(ctx).Text(text).Execute()

Tag Part of Speech



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
	resp, r, err := apiClient.TextAPI.TagPartOfSpeech(context.Background()).Text(text).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TextAPI.TagPartOfSpeech``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `TagPartOfSpeech`: TagPartOfSpeech200Response
	fmt.Fprintf(os.Stdout, "Response from `TextAPI.TagPartOfSpeech`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiTagPartOfSpeechRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text to tag the part of speech. | 

### Return type

[**TagPartOfSpeech200Response**](TagPartOfSpeech200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

