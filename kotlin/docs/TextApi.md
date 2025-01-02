# TextApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**correctSpellingAPI**](TextApi.md#correctSpellingAPI) | **GET** /correct-spelling | Correct Spelling API |
| [**detectGenderByNameAPI**](TextApi.md#detectGenderByNameAPI) | **GET** /detect-gender | Detect Gender by Name API |
| [**detectLanguageAPI**](TextApi.md#detectLanguageAPI) | **GET** /detect-language | Detect Language API |
| [**detectSentimentAPI**](TextApi.md#detectSentimentAPI) | **GET** /detect-sentiment | Detect Sentiment API |
| [**extractDatesAPI**](TextApi.md#extractDatesAPI) | **GET** /extract-dates | Extract Dates API |
| [**extractEntitiesAPI**](TextApi.md#extractEntitiesAPI) | **GET** /extract-entities | Extract Entities API |
| [**listWordSynonymsAPI**](TextApi.md#listWordSynonymsAPI) | **GET** /list-synonyms | List Word Synonyms API |
| [**pluralizeWordAPI**](TextApi.md#pluralizeWordAPI) | **GET** /pluralize-word | Pluralize Word API |
| [**scoreReadabilityAPI**](TextApi.md#scoreReadabilityAPI) | **GET** /score-readability | Score Readability API |
| [**scoreTextAPI**](TextApi.md#scoreTextAPI) | **GET** /score-text | Score Text API |
| [**singularizeWordAPI**](TextApi.md#singularizeWordAPI) | **GET** /singularize-word | Singularize Word API |
| [**stemTextAPI**](TextApi.md#stemTextAPI) | **GET** /stem-text | Stem Text API |
| [**tagPartOfSpeechAPI**](TextApi.md#tagPartOfSpeechAPI) | **GET** /tag-pos | Tag Part of Speech API |


<a id="correctSpellingAPI"></a>
# **correctSpellingAPI**
> CorrectSpellingAPI200Response correctSpellingAPI(text, language)

Correct Spelling API

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
    val result : CorrectSpellingAPI200Response = apiInstance.correctSpellingAPI(text, language)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#correctSpellingAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#correctSpellingAPI")
    e.printStackTrace()
}
```

### Parameters
| **text** | **kotlin.String**| The text to be corrected. | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **language** | **kotlin.String**| The language of the text, one of en, de, es, fr, or it. | |

### Return type

[**CorrectSpellingAPI200Response**](CorrectSpellingAPI200Response.md)

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

<a id="detectGenderByNameAPI"></a>
# **detectGenderByNameAPI**
> DetectGenderByNameAPI200Response detectGenderByNameAPI(name)

Detect Gender by Name API

Detect the likelihood that a name is given to a male or female (aka to \&quot;genderize\&quot; a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val name : kotlin.String = Alex // kotlin.String | The name of the perso for which the sentiment should be detected.
try {
    val result : DetectGenderByNameAPI200Response = apiInstance.detectGenderByNameAPI(name)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#detectGenderByNameAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#detectGenderByNameAPI")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **name** | **kotlin.String**| The name of the perso for which the sentiment should be detected. | |

### Return type

[**DetectGenderByNameAPI200Response**](DetectGenderByNameAPI200Response.md)

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

<a id="detectLanguageAPI"></a>
# **detectLanguageAPI**
> kotlin.collections.List&lt;DetectLanguageAPI200ResponseInner&gt; detectLanguageAPI(text)

Detect Language API

Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val text : kotlin.String = Das ist ein Text. // kotlin.String | The text for which the language should be detected.
try {
    val result : kotlin.collections.List<DetectLanguageAPI200ResponseInner> = apiInstance.detectLanguageAPI(text)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#detectLanguageAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#detectLanguageAPI")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **text** | **kotlin.String**| The text for which the language should be detected. | |

### Return type

[**kotlin.collections.List&lt;DetectLanguageAPI200ResponseInner&gt;**](DetectLanguageAPI200ResponseInner.md)

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

<a id="detectSentimentAPI"></a>
# **detectSentimentAPI**
> DetectSentimentAPI200Response detectSentimentAPI(text)

Detect Sentiment API

Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val text : kotlin.String = Happy times feel so good. // kotlin.String | The text for which the sentiment should be detected.
try {
    val result : DetectSentimentAPI200Response = apiInstance.detectSentimentAPI(text)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#detectSentimentAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#detectSentimentAPI")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **text** | **kotlin.String**| The text for which the sentiment should be detected. | |

### Return type

[**DetectSentimentAPI200Response**](DetectSentimentAPI200Response.md)

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

<a id="extractDatesAPI"></a>
# **extractDatesAPI**
> ExtractDatesAPI200Response extractDatesAPI(text)

Extract Dates API

Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \&quot;April 5th, 2035\&quot;, \&quot;04/05/2035\&quot;, or \&quot;05.04.2035\&quot;. The normalized date is the date in the form of a timestamp (milliseconds since 1970).

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val text : kotlin.String = On 5th or April, 2035 there will be flying cars - 2023-02-12. // kotlin.String | The text from which dates should be extracted.
try {
    val result : ExtractDatesAPI200Response = apiInstance.extractDatesAPI(text)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#extractDatesAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#extractDatesAPI")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **text** | **kotlin.String**| The text from which dates should be extracted. | |

### Return type

[**ExtractDatesAPI200Response**](ExtractDatesAPI200Response.md)

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

<a id="extractEntitiesAPI"></a>
# **extractEntitiesAPI**
> ExtractEntitiesAPI200Response extractEntitiesAPI(text)

Extract Entities API

Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \&quot;Canada\&quot; represents the concept of a country. The word \&quot;Jim Carrey\&quot; represents the concept of a person. The word \&quot;Tesla\&quot; represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val text : kotlin.String = Jim Carrey is an actor from Canada // kotlin.String | The text from which entities should be extracted.
try {
    val result : ExtractEntitiesAPI200Response = apiInstance.extractEntitiesAPI(text)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#extractEntitiesAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#extractEntitiesAPI")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **text** | **kotlin.String**| The text from which entities should be extracted. | |

### Return type

[**ExtractEntitiesAPI200Response**](ExtractEntitiesAPI200Response.md)

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

<a id="listWordSynonymsAPI"></a>
# **listWordSynonymsAPI**
> ListWordSynonymsAPI200Response listWordSynonymsAPI(word)

List Word Synonyms API

Return synonyms of a word.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val word : kotlin.String = airplane // kotlin.String | The (noun) word for which a list of synonyms should be returned.
try {
    val result : ListWordSynonymsAPI200Response = apiInstance.listWordSynonymsAPI(word)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#listWordSynonymsAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#listWordSynonymsAPI")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **word** | **kotlin.String**| The (noun) word for which a list of synonyms should be returned. | |

### Return type

[**ListWordSynonymsAPI200Response**](ListWordSynonymsAPI200Response.md)

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

<a id="pluralizeWordAPI"></a>
# **pluralizeWordAPI**
> PluralizeWordAPI200Response pluralizeWordAPI(word)

Pluralize Word API

Find the plural form of a word.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val word : kotlin.String = party // kotlin.String | The (noun) word for which the plural form should be found.
try {
    val result : PluralizeWordAPI200Response = apiInstance.pluralizeWordAPI(word)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#pluralizeWordAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#pluralizeWordAPI")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **word** | **kotlin.String**| The (noun) word for which the plural form should be found. | |

### Return type

[**PluralizeWordAPI200Response**](PluralizeWordAPI200Response.md)

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

<a id="scoreReadabilityAPI"></a>
# **scoreReadabilityAPI**
> ScoreReadabilityAPI200Response scoreReadabilityAPI(text)

Score Readability API

Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val text : kotlin.String = A rather complex text, hard to read, and highly convoluted using acronym TERMS. // kotlin.String | The text to score for readability.
try {
    val result : ScoreReadabilityAPI200Response = apiInstance.scoreReadabilityAPI(text)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#scoreReadabilityAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#scoreReadabilityAPI")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **text** | **kotlin.String**| The text to score for readability. | |

### Return type

[**ScoreReadabilityAPI200Response**](ScoreReadabilityAPI200Response.md)

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

<a id="scoreTextAPI"></a>
# **scoreTextAPI**
> ScoreTextAPI200Response scoreTextAPI(title, text)

Score Text API

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
    val result : ScoreTextAPI200Response = apiInstance.scoreTextAPI(title, text)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#scoreTextAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#scoreTextAPI")
    e.printStackTrace()
}
```

### Parameters
| **title** | **kotlin.String**| The title of the text to score. | |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **text** | **kotlin.String**| The text to score for multiple metrics. | |

### Return type

[**ScoreTextAPI200Response**](ScoreTextAPI200Response.md)

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

<a id="singularizeWordAPI"></a>
# **singularizeWordAPI**
> SingularizeWordAPI200Response singularizeWordAPI(word)

Singularize Word API

Find the singular form of a word.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val word : kotlin.String = airplanes // kotlin.String | The (noun) word for which the singular form should be found.
try {
    val result : SingularizeWordAPI200Response = apiInstance.singularizeWordAPI(word)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#singularizeWordAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#singularizeWordAPI")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **word** | **kotlin.String**| The (noun) word for which the singular form should be found. | |

### Return type

[**SingularizeWordAPI200Response**](SingularizeWordAPI200Response.md)

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

<a id="stemTextAPI"></a>
# **stemTextAPI**
> StemTextAPI200Response stemTextAPI(text)

Stem Text API

The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val text : kotlin.String = The laziest dogs are jumping over the quicker brown foxes. // kotlin.String | The text to be stemmed.
try {
    val result : StemTextAPI200Response = apiInstance.stemTextAPI(text)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#stemTextAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#stemTextAPI")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **text** | **kotlin.String**| The text to be stemmed. | |

### Return type

[**StemTextAPI200Response**](StemTextAPI200Response.md)

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

<a id="tagPartOfSpeechAPI"></a>
# **tagPartOfSpeechAPI**
> TagPartOfSpeechAPI200Response tagPartOfSpeechAPI(text)

Tag Part of Speech API

Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.

### Example
```kotlin
// Import classes:
//import apileague.infrastructure.*
//import com.apileague.client.model.*

val apiInstance = TextApi()
val text : kotlin.String = The lazy dog jumps over the quick brown fox. // kotlin.String | The text to tag the part of speech.
try {
    val result : TagPartOfSpeechAPI200Response = apiInstance.tagPartOfSpeechAPI(text)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TextApi#tagPartOfSpeechAPI")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TextApi#tagPartOfSpeechAPI")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **text** | **kotlin.String**| The text to tag the part of speech. | |

### Return type

[**TagPartOfSpeechAPI200Response**](TagPartOfSpeechAPI200Response.md)

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

