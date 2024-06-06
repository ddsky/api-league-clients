# TextApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**correctSpelling**](TextApi.md#correctSpelling) | **GET** /correct-spelling | Correct Spelling
[**detectLanguage**](TextApi.md#detectLanguage) | **GET** /detect-language | Detect Language
[**detectSentiment**](TextApi.md#detectSentiment) | **GET** /detect-sentiment | Detect Sentiment
[**extractDates**](TextApi.md#extractDates) | **GET** /extract-dates | Extract Dates
[**extractEntities**](TextApi.md#extractEntities) | **GET** /extract-entities | Extract Entities
[**listWordSynonyms**](TextApi.md#listWordSynonyms) | **GET** /list-synonyms | List Word Synonyms
[**pluralizeWord**](TextApi.md#pluralizeWord) | **GET** /pluralize-word | Pluralize Word
[**scoreReadability**](TextApi.md#scoreReadability) | **GET** /score-readability | Score Readability
[**scoreText**](TextApi.md#scoreText) | **GET** /score-text | Score Text
[**singularizeWord**](TextApi.md#singularizeWord) | **GET** /singularize-word | Singularize Word
[**stemText**](TextApi.md#stemText) | **GET** /stem-text | Stem Text
[**tagPartOfSpeech**](TextApi.md#tagPartOfSpeech) | **GET** /tag-pos | Tag Part of Speech



## correctSpelling

> CorrectSpelling200Response correctSpelling(text, language)

Correct Spelling

The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).

### Example

```java
// Import classes:
//import com.apileague.TextApi;

TextApi apiInstance = new TextApi();
String text = Driving carss is fun.; // String | The text to be corrected.
String language = en; // String | The language of the text, one of en, de, es, fr, or it.
try {
    CorrectSpelling200Response result = apiInstance.correctSpelling(text, language);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TextApi#correctSpelling");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text to be corrected. | [default to null]
 **language** | **String**| The language of the text, one of en, de, es, fr, or it. | [default to null]

### Return type

[**CorrectSpelling200Response**](CorrectSpelling200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## detectLanguage

> List&lt;DetectLanguage200ResponseInner&gt; detectLanguage(text)

Detect Language

Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.

### Example

```java
// Import classes:
//import com.apileague.TextApi;

TextApi apiInstance = new TextApi();
String text = Das ist ein Text.; // String | The text for which the language should be detected.
try {
    List<DetectLanguage200ResponseInner> result = apiInstance.detectLanguage(text);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TextApi#detectLanguage");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text for which the language should be detected. | [default to null]

### Return type

[**List&lt;DetectLanguage200ResponseInner&gt;**](DetectLanguage200ResponseInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## detectSentiment

> DetectSentiment200Response detectSentiment(text)

Detect Sentiment

Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.

### Example

```java
// Import classes:
//import com.apileague.TextApi;

TextApi apiInstance = new TextApi();
String text = Happy times feel so good.; // String | The text for which the sentiment should be detected.
try {
    DetectSentiment200Response result = apiInstance.detectSentiment(text);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TextApi#detectSentiment");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text for which the sentiment should be detected. | [default to null]

### Return type

[**DetectSentiment200Response**](DetectSentiment200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## extractDates

> ExtractDates200Response extractDates(text)

Extract Dates

Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \&quot;April 5th, 2035\&quot;, \&quot;04/05/2035\&quot;, or \&quot;05.04.2035\&quot;. The normalized date is the date in the form of a timestamp (milliseconds since 1970).

### Example

```java
// Import classes:
//import com.apileague.TextApi;

TextApi apiInstance = new TextApi();
String text = On 5th or April, 2035 there will be flying cars - 2023-02-12.; // String | The text from which dates should be extracted.
try {
    ExtractDates200Response result = apiInstance.extractDates(text);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TextApi#extractDates");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text from which dates should be extracted. | [default to null]

### Return type

[**ExtractDates200Response**](ExtractDates200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## extractEntities

> ExtractEntities200Response extractEntities(text)

Extract Entities

Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \&quot;Canada\&quot; represents the concept of a country. The word \&quot;Jim Carrey\&quot; represents the concept of a person. The word \&quot;Tesla\&quot; represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.

### Example

```java
// Import classes:
//import com.apileague.TextApi;

TextApi apiInstance = new TextApi();
String text = Jim Carrey is an actor from Canada; // String | The text from which entities should be extracted.
try {
    ExtractEntities200Response result = apiInstance.extractEntities(text);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TextApi#extractEntities");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text from which entities should be extracted. | [default to null]

### Return type

[**ExtractEntities200Response**](ExtractEntities200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## listWordSynonyms

> ListWordSynonyms200Response listWordSynonyms(word)

List Word Synonyms

Return synonyms of a word.

### Example

```java
// Import classes:
//import com.apileague.TextApi;

TextApi apiInstance = new TextApi();
String word = airplane; // String | The (noun) word for which a list of synonyms should be returned.
try {
    ListWordSynonyms200Response result = apiInstance.listWordSynonyms(word);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TextApi#listWordSynonyms");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **String**| The (noun) word for which a list of synonyms should be returned. | [default to null]

### Return type

[**ListWordSynonyms200Response**](ListWordSynonyms200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pluralizeWord

> PluralizeWord200Response pluralizeWord(word)

Pluralize Word

Find the plural form of a word.

### Example

```java
// Import classes:
//import com.apileague.TextApi;

TextApi apiInstance = new TextApi();
String word = party; // String | The (noun) word for which the plural form should be found.
try {
    PluralizeWord200Response result = apiInstance.pluralizeWord(word);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TextApi#pluralizeWord");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **String**| The (noun) word for which the plural form should be found. | [default to null]

### Return type

[**PluralizeWord200Response**](PluralizeWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## scoreReadability

> ScoreReadability200Response scoreReadability(text)

Score Readability

Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.

### Example

```java
// Import classes:
//import com.apileague.TextApi;

TextApi apiInstance = new TextApi();
String text = A rather complex text, hard to read, and highly convoluted using acronym TERMS.; // String | The text to score for readability.
try {
    ScoreReadability200Response result = apiInstance.scoreReadability(text);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TextApi#scoreReadability");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text to score for readability. | [default to null]

### Return type

[**ScoreReadability200Response**](ScoreReadability200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## scoreText

> ScoreText200Response scoreText(title, text)

Score Text

Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.

### Example

```java
// Import classes:
//import com.apileague.TextApi;

TextApi apiInstance = new TextApi();
String title = A short story; // String | The title of the text to score.
String text = A nice short story to be analyzed; // String | The text to score for multiple metrics.
try {
    ScoreText200Response result = apiInstance.scoreText(title, text);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TextApi#scoreText");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**| The title of the text to score. | [default to null]
 **text** | **String**| The text to score for multiple metrics. | [default to null]

### Return type

[**ScoreText200Response**](ScoreText200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## singularizeWord

> SingularizeWord200Response singularizeWord(word)

Singularize Word

Find the singular form of a word.

### Example

```java
// Import classes:
//import com.apileague.TextApi;

TextApi apiInstance = new TextApi();
String word = airplanes; // String | The (noun) word for which the singular form should be found.
try {
    SingularizeWord200Response result = apiInstance.singularizeWord(word);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TextApi#singularizeWord");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **String**| The (noun) word for which the singular form should be found. | [default to null]

### Return type

[**SingularizeWord200Response**](SingularizeWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## stemText

> StemText200Response stemText(text)

Stem Text

The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.

### Example

```java
// Import classes:
//import com.apileague.TextApi;

TextApi apiInstance = new TextApi();
String text = The laziest dogs are jumping over the quicker brown foxes.; // String | The text to be stemmed.
try {
    StemText200Response result = apiInstance.stemText(text);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TextApi#stemText");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text to be stemmed. | [default to null]

### Return type

[**StemText200Response**](StemText200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tagPartOfSpeech

> TagPartOfSpeech200Response tagPartOfSpeech(text)

Tag Part of Speech

Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.

### Example

```java
// Import classes:
//import com.apileague.TextApi;

TextApi apiInstance = new TextApi();
String text = The lazy dog jumps over the quick brown fox.; // String | The text to tag the part of speech.
try {
    TagPartOfSpeech200Response result = apiInstance.tagPartOfSpeech(text);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TextApi#tagPartOfSpeech");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String**| The text to tag the part of speech. | [default to null]

### Return type

[**TagPartOfSpeech200Response**](TagPartOfSpeech200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

