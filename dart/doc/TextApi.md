# openapi.api.TextApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**correctSpelling**](TextApi.md#correctspelling) | **GET** /correct-spelling | Correct Spelling
[**detectGenderByName**](TextApi.md#detectgenderbyname) | **GET** /detect-gender | Detect Gender by Name
[**extractDates**](TextApi.md#extractdates) | **GET** /extract-dates | Extract Dates
[**extractEntities**](TextApi.md#extractentities) | **GET** /extract-entities | Extract Entities
[**listWordSynonyms**](TextApi.md#listwordsynonyms) | **GET** /list-synonyms | List Word Synonyms
[**pluralizeWord**](TextApi.md#pluralizeword) | **GET** /pluralize-word | Pluralize Word
[**scoreReadability**](TextApi.md#scorereadability) | **GET** /score-readability | Score Readability
[**scoreText**](TextApi.md#scoretext) | **GET** /score-text | Score Text
[**singularizeWord**](TextApi.md#singularizeword) | **GET** /singularize-word | Singularize Word
[**stemText**](TextApi.md#stemtext) | **GET** /stem-text | Stem Text
[**tagPartOfSpeech**](TextApi.md#tagpartofspeech) | **GET** /tag-pos | Tag Part of Speech


# **correctSpelling**
> CorrectSpelling200Response correctSpelling(text, language)

Correct Spelling

The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = TextApi();
final text = Driving carss is fun.; // String | The text to be corrected.
final language = en; // String | The language of the text, one of en, de, es, fr, or it.

try {
    final result = api_instance.correctSpelling(text, language);
    print(result);
} catch (e) {
    print('Exception when calling TextApi->correctSpelling: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text to be corrected. | 
 **language** | **String**| The language of the text, one of en, de, es, fr, or it. | 

### Return type

[**CorrectSpelling200Response**](CorrectSpelling200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **detectGenderByName**
> DetectGenderByName200Response detectGenderByName(name)

Detect Gender by Name

Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = TextApi();
final name = Alex; // String | The name of the perso for which the sentiment should be detected.

try {
    final result = api_instance.detectGenderByName(name);
    print(result);
} catch (e) {
    print('Exception when calling TextApi->detectGenderByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the perso for which the sentiment should be detected. | 

### Return type

[**DetectGenderByName200Response**](DetectGenderByName200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extractDates**
> ExtractDates200Response extractDates(text)

Extract Dates

Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = TextApi();
final text = On 5th or April, 2035 there will be flying cars - 2023-02-12.; // String | The text from which dates should be extracted.

try {
    final result = api_instance.extractDates(text);
    print(result);
} catch (e) {
    print('Exception when calling TextApi->extractDates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text from which dates should be extracted. | 

### Return type

[**ExtractDates200Response**](ExtractDates200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extractEntities**
> ExtractEntities200Response extractEntities(text)

Extract Entities

Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = TextApi();
final text = Jim Carrey is an actor from Canada; // String | The text from which entities should be extracted.

try {
    final result = api_instance.extractEntities(text);
    print(result);
} catch (e) {
    print('Exception when calling TextApi->extractEntities: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text from which entities should be extracted. | 

### Return type

[**ExtractEntities200Response**](ExtractEntities200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWordSynonyms**
> ListWordSynonyms200Response listWordSynonyms(word)

List Word Synonyms

Return synonyms of a word.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = TextApi();
final word = airplane; // String | The (noun) word for which a list of synonyms should be returned.

try {
    final result = api_instance.listWordSynonyms(word);
    print(result);
} catch (e) {
    print('Exception when calling TextApi->listWordSynonyms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **String**| The (noun) word for which a list of synonyms should be returned. | 

### Return type

[**ListWordSynonyms200Response**](ListWordSynonyms200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluralizeWord**
> PluralizeWord200Response pluralizeWord(word)

Pluralize Word

Find the plural form of a word.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = TextApi();
final word = party; // String | The (noun) word for which the plural form should be found.

try {
    final result = api_instance.pluralizeWord(word);
    print(result);
} catch (e) {
    print('Exception when calling TextApi->pluralizeWord: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **String**| The (noun) word for which the plural form should be found. | 

### Return type

[**PluralizeWord200Response**](PluralizeWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scoreReadability**
> ScoreReadability200Response scoreReadability(text)

Score Readability

Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = TextApi();
final text = A rather complex text, hard to read, and highly convoluted using acronym TERMS.; // String | The text to score for readability.

try {
    final result = api_instance.scoreReadability(text);
    print(result);
} catch (e) {
    print('Exception when calling TextApi->scoreReadability: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text to score for readability. | 

### Return type

[**ScoreReadability200Response**](ScoreReadability200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scoreText**
> ScoreText200Response scoreText(title, text)

Score Text

Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = TextApi();
final title = A short story; // String | The title of the text to score.
final text = A nice short story to be analyzed; // String | The text to score for multiple metrics.

try {
    final result = api_instance.scoreText(title, text);
    print(result);
} catch (e) {
    print('Exception when calling TextApi->scoreText: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| The title of the text to score. | 
 **text** | **String**| The text to score for multiple metrics. | 

### Return type

[**ScoreText200Response**](ScoreText200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **singularizeWord**
> SingularizeWord200Response singularizeWord(word)

Singularize Word

Find the singular form of a word.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = TextApi();
final word = airplanes; // String | The (noun) word for which the singular form should be found.

try {
    final result = api_instance.singularizeWord(word);
    print(result);
} catch (e) {
    print('Exception when calling TextApi->singularizeWord: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **String**| The (noun) word for which the singular form should be found. | 

### Return type

[**SingularizeWord200Response**](SingularizeWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stemText**
> StemText200Response stemText(text)

Stem Text

The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = TextApi();
final text = The laziest dogs are jumping over the quicker brown foxes.; // String | The text to be stemmed.

try {
    final result = api_instance.stemText(text);
    print(result);
} catch (e) {
    print('Exception when calling TextApi->stemText: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text to be stemmed. | 

### Return type

[**StemText200Response**](StemText200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tagPartOfSpeech**
> TagPartOfSpeech200Response tagPartOfSpeech(text)

Tag Part of Speech

Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';
// TODO Configure API key authorization: headerApiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('headerApiKey').apiKeyPrefix = 'Bearer';

final api_instance = TextApi();
final text = The lazy dog jumps over the quick brown fox.; // String | The text to tag the part of speech.

try {
    final result = api_instance.tagPartOfSpeech(text);
    print(result);
} catch (e) {
    print('Exception when calling TextApi->tagPartOfSpeech: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text to tag the part of speech. | 

### Return type

[**TagPartOfSpeech200Response**](TagPartOfSpeech200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

