# com.apileague.client\TextApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CorrectSpelling**](TextApi.md#CorrectSpelling) | **Get** /correct-spelling | Correct Spelling
[**DetectLanguage**](TextApi.md#DetectLanguage) | **Get** /detect-language | Detect Language
[**DetectSentiment**](TextApi.md#DetectSentiment) | **Get** /detect-sentiment | Detect Sentiment
[**ExtractDates**](TextApi.md#ExtractDates) | **Get** /extract-dates | Extract Dates
[**ExtractEntities**](TextApi.md#ExtractEntities) | **Get** /extract-entities | Extract Entities
[**ListWordSynonyms**](TextApi.md#ListWordSynonyms) | **Get** /list-synonyms | List Word Synonyms
[**PartOfSpeechTagging**](TextApi.md#PartOfSpeechTagging) | **Get** /tag-pos | Part of Speech Tagging
[**PluralizeWord**](TextApi.md#PluralizeWord) | **Get** /pluralize-word | Pluralize Word
[**ScoreReadability**](TextApi.md#ScoreReadability) | **Get** /score-readability | Score Readability
[**ScoreText**](TextApi.md#ScoreText) | **Get** /score-text | Score Text
[**SingularizeWord**](TextApi.md#SingularizeWord) | **Get** /singularize-word | Singularize Word
[**TextStemming**](TextApi.md#TextStemming) | **Get** /stem-text | Text Stemming



## CorrectSpelling

> InlineResponse20016 CorrectSpelling(ctx).Text(text).Language(language).Execute()

Correct Spelling



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
    text := "Driving carss is fun." // string | The text to be corrected.
    language := "en" // string | The language of the text, one of en, de, es, fr, or it.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.TextApi.CorrectSpelling(context.Background()).Text(text).Language(language).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TextApi.CorrectSpelling``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `CorrectSpelling`: InlineResponse20016
    fmt.Fprintf(os.Stdout, "Response from `TextApi.CorrectSpelling`: %v\n", resp)
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

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DetectLanguage

> []InlineResponse20017 DetectLanguage(ctx).Text(text).Execute()

Detect Language



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
    text := "Das ist ein Text." // string | The text for which the language should be detected.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.TextApi.DetectLanguage(context.Background()).Text(text).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TextApi.DetectLanguage``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DetectLanguage`: []InlineResponse20017
    fmt.Fprintf(os.Stdout, "Response from `TextApi.DetectLanguage`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDetectLanguageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text for which the language should be detected. | 

### Return type

[**[]InlineResponse20017**](InlineResponse20017.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DetectSentiment

> InlineResponse20018 DetectSentiment(ctx).Text(text).Execute()

Detect Sentiment



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
    text := "Happy times feel so good." // string | The text for which the sentiment should be detected.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.TextApi.DetectSentiment(context.Background()).Text(text).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TextApi.DetectSentiment``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `DetectSentiment`: InlineResponse20018
    fmt.Fprintf(os.Stdout, "Response from `TextApi.DetectSentiment`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDetectSentimentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text for which the sentiment should be detected. | 

### Return type

[**InlineResponse20018**](InlineResponse20018.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExtractDates

> InlineResponse20021 ExtractDates(ctx).Text(text).Execute()

Extract Dates



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
    text := "On 5th or April, 2035 there will be flying cars - 2023-02-12." // string | The text from which dates should be extracted.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.TextApi.ExtractDates(context.Background()).Text(text).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TextApi.ExtractDates``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ExtractDates`: InlineResponse20021
    fmt.Fprintf(os.Stdout, "Response from `TextApi.ExtractDates`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiExtractDatesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text from which dates should be extracted. | 

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExtractEntities

> InlineResponse20027 ExtractEntities(ctx).Text(text).Execute()

Extract Entities



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
    text := "Jim Carrey is an actor from Canada" // string | The text from which entities should be extracted.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.TextApi.ExtractEntities(context.Background()).Text(text).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TextApi.ExtractEntities``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ExtractEntities`: InlineResponse20027
    fmt.Fprintf(os.Stdout, "Response from `TextApi.ExtractEntities`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiExtractEntitiesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text from which entities should be extracted. | 

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ListWordSynonyms

> InlineResponse20022 ListWordSynonyms(ctx).Word(word).Execute()

List Word Synonyms



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
    word := "airplane" // string | The (noun) word for which a list of synonyms should be returned.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.TextApi.ListWordSynonyms(context.Background()).Word(word).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TextApi.ListWordSynonyms``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ListWordSynonyms`: InlineResponse20022
    fmt.Fprintf(os.Stdout, "Response from `TextApi.ListWordSynonyms`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiListWordSynonymsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **string** | The (noun) word for which a list of synonyms should be returned. | 

### Return type

[**InlineResponse20022**](InlineResponse20022.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PartOfSpeechTagging

> InlineResponse20023 PartOfSpeechTagging(ctx).Text(text).Execute()

Part of Speech Tagging



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
    text := "The lazy dog jumps over the quick brown fox." // string | The text to tag the part of speech.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.TextApi.PartOfSpeechTagging(context.Background()).Text(text).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TextApi.PartOfSpeechTagging``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `PartOfSpeechTagging`: InlineResponse20023
    fmt.Fprintf(os.Stdout, "Response from `TextApi.PartOfSpeechTagging`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiPartOfSpeechTaggingRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text to tag the part of speech. | 

### Return type

[**InlineResponse20023**](InlineResponse20023.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PluralizeWord

> InlineResponse20026 PluralizeWord(ctx).Word(word).Execute()

Pluralize Word



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
    word := "party" // string | The (noun) word for which the plural form should be found.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.TextApi.PluralizeWord(context.Background()).Word(word).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TextApi.PluralizeWord``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `PluralizeWord`: InlineResponse20026
    fmt.Fprintf(os.Stdout, "Response from `TextApi.PluralizeWord`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiPluralizeWordRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **string** | The (noun) word for which the plural form should be found. | 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScoreReadability

> InlineResponse20020 ScoreReadability(ctx).Text(text).Execute()

Score Readability



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
    text := "A rather complex text, hard to read, and highly convoluted using acronym TERMS." // string | The text to score for readability.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.TextApi.ScoreReadability(context.Background()).Text(text).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TextApi.ScoreReadability``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ScoreReadability`: InlineResponse20020
    fmt.Fprintf(os.Stdout, "Response from `TextApi.ScoreReadability`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiScoreReadabilityRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text to score for readability. | 

### Return type

[**InlineResponse20020**](InlineResponse20020.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScoreText

> InlineResponse20019 ScoreText(ctx).Title(title).Text(text).Execute()

Score Text



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
    title := "A short story" // string | The title of the text to score.
    text := "A nice short story to be analyzed" // string | The text to score for multiple metrics.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.TextApi.ScoreText(context.Background()).Title(title).Text(text).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TextApi.ScoreText``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ScoreText`: InlineResponse20019
    fmt.Fprintf(os.Stdout, "Response from `TextApi.ScoreText`: %v\n", resp)
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

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SingularizeWord

> InlineResponse20025 SingularizeWord(ctx).Word(word).Execute()

Singularize Word



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
    word := "airplanes" // string | The (noun) word for which the singular form should be found.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.TextApi.SingularizeWord(context.Background()).Word(word).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TextApi.SingularizeWord``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `SingularizeWord`: InlineResponse20025
    fmt.Fprintf(os.Stdout, "Response from `TextApi.SingularizeWord`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSingularizeWordRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **string** | The (noun) word for which the singular form should be found. | 

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TextStemming

> InlineResponse20024 TextStemming(ctx).Text(text).Execute()

Text Stemming



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
    text := "The laziest dogs are jumping over the quicker brown foxes." // string | The text to be stemmed.

    configuration := openapiclient.NewConfiguration()
    apiClient := openapiclient.NewAPIClient(configuration)
    resp, r, err := apiClient.TextApi.TextStemming(context.Background()).Text(text).Execute()
    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `TextApi.TextStemming``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `TextStemming`: InlineResponse20024
    fmt.Fprintf(os.Stdout, "Response from `TextApi.TextStemming`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiTextStemmingRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string** | The text to be stemmed. | 

### Return type

[**InlineResponse20024**](InlineResponse20024.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

