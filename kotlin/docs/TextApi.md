# TextApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**correctSpelling**](TextApi.md#correctSpelling) | **GET** /correct-spelling | Correct Spelling
[**detectGenderByName**](TextApi.md#detectGenderByName) | **GET** /detect-gender | Detect Gender by Name
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


<a id="correctSpelling"></a>
# **correctSpelling**
> CorrectSpelling200Response correctSpelling(text, language)

Correct Spelling

The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val text : kotlin.String = Driving carss is fun. // kotlin.String | The text to be corrected.
val language : kotlin.String = en // kotlin.String | The language of the text, one of en, de, es, fr, or it.
try {
    val result : CorrectSpelling200Response = apiInstance.correctSpelling(text, language)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#correctSpelling")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#correctSpelling")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **kotlin.String**| The text to be corrected. |
 **language** | **kotlin.String**| The language of the text, one of en, de, es, fr, or it. |

### Return type

[**CorrectSpelling200Response**](CorrectSpelling200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="detectGenderByName"></a>
# **detectGenderByName**
> DetectGenderByName200Response detectGenderByName(name)

Detect Gender by Name

Detect the likelihood that a name is given to a male or female (aka to \&quot;genderize\&quot; a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val name : kotlin.String = Alex // kotlin.String | The name of the perso for which the sentiment should be detected.
try {
    val result : DetectGenderByName200Response = apiInstance.detectGenderByName(name)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#detectGenderByName")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#detectGenderByName")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **kotlin.String**| The name of the perso for which the sentiment should be detected. |

### Return type

[**DetectGenderByName200Response**](DetectGenderByName200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="detectLanguage"></a>
# **detectLanguage**
> kotlin.collections.List&lt;DetectLanguage200ResponseInner&gt; detectLanguage(text)

Detect Language

Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val text : kotlin.String = Das ist ein Text. // kotlin.String | The text for which the language should be detected.
try {
    val result : kotlin.collections.List<DetectLanguage200ResponseInner> = apiInstance.detectLanguage(text)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#detectLanguage")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#detectLanguage")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **kotlin.String**| The text for which the language should be detected. |

### Return type

[**kotlin.collections.List&lt;DetectLanguage200ResponseInner&gt;**](DetectLanguage200ResponseInner.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="detectSentiment"></a>
# **detectSentiment**
> DetectSentiment200Response detectSentiment(text)

Detect Sentiment

Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val text : kotlin.String = Happy times feel so good. // kotlin.String | The text for which the sentiment should be detected.
try {
    val result : DetectSentiment200Response = apiInstance.detectSentiment(text)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#detectSentiment")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#detectSentiment")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **kotlin.String**| The text for which the sentiment should be detected. |

### Return type

[**DetectSentiment200Response**](DetectSentiment200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="extractDates"></a>
# **extractDates**
> ExtractDates200Response extractDates(text)

Extract Dates

Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \&quot;April 5th, 2035\&quot;, \&quot;04/05/2035\&quot;, or \&quot;05.04.2035\&quot;. The normalized date is the date in the form of a timestamp (milliseconds since 1970).

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val text : kotlin.String = On 5th or April, 2035 there will be flying cars - 2023-02-12. // kotlin.String | The text from which dates should be extracted.
try {
    val result : ExtractDates200Response = apiInstance.extractDates(text)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#extractDates")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#extractDates")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **kotlin.String**| The text from which dates should be extracted. |

### Return type

[**ExtractDates200Response**](ExtractDates200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="extractEntities"></a>
# **extractEntities**
> ExtractEntities200Response extractEntities(text)

Extract Entities

Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \&quot;Canada\&quot; represents the concept of a country. The word \&quot;Jim Carrey\&quot; represents the concept of a person. The word \&quot;Tesla\&quot; represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val text : kotlin.String = Jim Carrey is an actor from Canada // kotlin.String | The text from which entities should be extracted.
try {
    val result : ExtractEntities200Response = apiInstance.extractEntities(text)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#extractEntities")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#extractEntities")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **kotlin.String**| The text from which entities should be extracted. |

### Return type

[**ExtractEntities200Response**](ExtractEntities200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="listWordSynonyms"></a>
# **listWordSynonyms**
> ListWordSynonyms200Response listWordSynonyms(word)

List Word Synonyms

Return synonyms of a word.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val word : kotlin.String = airplane // kotlin.String | The (noun) word for which a list of synonyms should be returned.
try {
    val result : ListWordSynonyms200Response = apiInstance.listWordSynonyms(word)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#listWordSynonyms")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#listWordSynonyms")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **kotlin.String**| The (noun) word for which a list of synonyms should be returned. |

### Return type

[**ListWordSynonyms200Response**](ListWordSynonyms200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="pluralizeWord"></a>
# **pluralizeWord**
> PluralizeWord200Response pluralizeWord(word)

Pluralize Word

Find the plural form of a word.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val word : kotlin.String = party // kotlin.String | The (noun) word for which the plural form should be found.
try {
    val result : PluralizeWord200Response = apiInstance.pluralizeWord(word)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#pluralizeWord")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#pluralizeWord")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **kotlin.String**| The (noun) word for which the plural form should be found. |

### Return type

[**PluralizeWord200Response**](PluralizeWord200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="scoreReadability"></a>
# **scoreReadability**
> ScoreReadability200Response scoreReadability(text)

Score Readability

Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val text : kotlin.String = A rather complex text, hard to read, and highly convoluted using acronym TERMS. // kotlin.String | The text to score for readability.
try {
    val result : ScoreReadability200Response = apiInstance.scoreReadability(text)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#scoreReadability")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#scoreReadability")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **kotlin.String**| The text to score for readability. |

### Return type

[**ScoreReadability200Response**](ScoreReadability200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="scoreText"></a>
# **scoreText**
> ScoreText200Response scoreText(title, text)

Score Text

Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val title : kotlin.String = A short story // kotlin.String | The title of the text to score.
val text : kotlin.String = A nice short story to be analyzed // kotlin.String | The text to score for multiple metrics.
try {
    val result : ScoreText200Response = apiInstance.scoreText(title, text)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#scoreText")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#scoreText")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **kotlin.String**| The title of the text to score. |
 **text** | **kotlin.String**| The text to score for multiple metrics. |

### Return type

[**ScoreText200Response**](ScoreText200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="singularizeWord"></a>
# **singularizeWord**
> SingularizeWord200Response singularizeWord(word)

Singularize Word

Find the singular form of a word.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val word : kotlin.String = airplanes // kotlin.String | The (noun) word for which the singular form should be found.
try {
    val result : SingularizeWord200Response = apiInstance.singularizeWord(word)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#singularizeWord")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#singularizeWord")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **kotlin.String**| The (noun) word for which the singular form should be found. |

### Return type

[**SingularizeWord200Response**](SingularizeWord200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="stemText"></a>
# **stemText**
> StemText200Response stemText(text)

Stem Text

The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val text : kotlin.String = The laziest dogs are jumping over the quicker brown foxes. // kotlin.String | The text to be stemmed.
try {
    val result : StemText200Response = apiInstance.stemText(text)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#stemText")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#stemText")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **kotlin.String**| The text to be stemmed. |

### Return type

[**StemText200Response**](StemText200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="tagPartOfSpeech"></a>
# **tagPartOfSpeech**
> TagPartOfSpeech200Response tagPartOfSpeech(text)

Tag Part of Speech

Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val text : kotlin.String = The lazy dog jumps over the quick brown fox. // kotlin.String | The text to tag the part of speech.
try {
    val result : TagPartOfSpeech200Response = apiInstance.tagPartOfSpeech(text)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#tagPartOfSpeech")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#tagPartOfSpeech")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **kotlin.String**| The text to tag the part of speech. |

### Return type

[**TagPartOfSpeech200Response**](TagPartOfSpeech200Response.md)

### Authorization


Configure apiKey:
    ApiClient.apiKey["api-key"] = ""
    ApiClient.apiKeyPrefix["api-key"] = ""
Configure headerApiKey:
    ApiClient.apiKey["x-api-key"] = ""
    ApiClient.apiKeyPrefix["x-api-key"] = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

