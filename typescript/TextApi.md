# .TextApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**correctSpellingAPI**](TextApi.md#correctSpellingAPI) | **GET** /correct-spelling | Correct Spelling API
[**detectGenderByNameAPI**](TextApi.md#detectGenderByNameAPI) | **GET** /detect-gender | Detect Gender by Name API
[**detectLanguageAPI**](TextApi.md#detectLanguageAPI) | **GET** /detect-language | Detect Language API
[**detectSentimentAPI**](TextApi.md#detectSentimentAPI) | **GET** /detect-sentiment | Detect Sentiment API
[**extractDatesAPI**](TextApi.md#extractDatesAPI) | **GET** /extract-dates | Extract Dates API
[**extractEntitiesAPI**](TextApi.md#extractEntitiesAPI) | **GET** /extract-entities | Extract Entities API
[**listWordSynonymsAPI**](TextApi.md#listWordSynonymsAPI) | **GET** /list-synonyms | List Word Synonyms API
[**pluralizeWordAPI**](TextApi.md#pluralizeWordAPI) | **GET** /pluralize-word | Pluralize Word API
[**scoreReadabilityAPI**](TextApi.md#scoreReadabilityAPI) | **GET** /score-readability | Score Readability API
[**scoreTextAPI**](TextApi.md#scoreTextAPI) | **GET** /score-text | Score Text API
[**singularizeWordAPI**](TextApi.md#singularizeWordAPI) | **GET** /singularize-word | Singularize Word API
[**stemTextAPI**](TextApi.md#stemTextAPI) | **GET** /stem-text | Stem Text API
[**tagPartOfSpeechAPI**](TextApi.md#tagPartOfSpeechAPI) | **GET** /tag-pos | Tag Part of Speech API


# **correctSpellingAPI**
> CorrectSpellingAPI200Response correctSpellingAPI()

The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .TextApi(configuration);

let body:.TextApiCorrectSpellingAPIRequest = {
  // string | The text to be corrected.
  text: "Driving carss is fun.",
  // string | The language of the text, one of en, de, es, fr, or it.
  language: "en",
};

apiInstance.correctSpellingAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | [**string**] | The text to be corrected. | defaults to undefined
 **language** | [**string**] | The language of the text, one of en, de, es, fr, or it. | defaults to undefined


### Return type

**CorrectSpellingAPI200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **detectGenderByNameAPI**
> DetectGenderByNameAPI200Response detectGenderByNameAPI()

Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .TextApi(configuration);

let body:.TextApiDetectGenderByNameAPIRequest = {
  // string | The name of the perso for which the sentiment should be detected.
  name: "Alex",
};

apiInstance.detectGenderByNameAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | [**string**] | The name of the perso for which the sentiment should be detected. | defaults to undefined


### Return type

**DetectGenderByNameAPI200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **detectLanguageAPI**
> Array<DetectLanguageAPI200ResponseInner> detectLanguageAPI()

Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .TextApi(configuration);

let body:.TextApiDetectLanguageAPIRequest = {
  // string | The text for which the language should be detected.
  text: "Das ist ein Text.",
};

apiInstance.detectLanguageAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | [**string**] | The text for which the language should be detected. | defaults to undefined


### Return type

**Array<DetectLanguageAPI200ResponseInner>**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **detectSentimentAPI**
> DetectSentimentAPI200Response detectSentimentAPI()

Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .TextApi(configuration);

let body:.TextApiDetectSentimentAPIRequest = {
  // string | The text for which the sentiment should be detected.
  text: "Happy times feel so good.",
};

apiInstance.detectSentimentAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | [**string**] | The text for which the sentiment should be detected. | defaults to undefined


### Return type

**DetectSentimentAPI200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **extractDatesAPI**
> ExtractDatesAPI200Response extractDatesAPI()

Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .TextApi(configuration);

let body:.TextApiExtractDatesAPIRequest = {
  // string | The text from which dates should be extracted.
  text: "On 5th or April, 2035 there will be flying cars - 2023-02-12.",
};

apiInstance.extractDatesAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | [**string**] | The text from which dates should be extracted. | defaults to undefined


### Return type

**ExtractDatesAPI200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **extractEntitiesAPI**
> ExtractEntitiesAPI200Response extractEntitiesAPI()

Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .TextApi(configuration);

let body:.TextApiExtractEntitiesAPIRequest = {
  // string | The text from which entities should be extracted.
  text: "Jim Carrey is an actor from Canada",
};

apiInstance.extractEntitiesAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | [**string**] | The text from which entities should be extracted. | defaults to undefined


### Return type

**ExtractEntitiesAPI200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **listWordSynonymsAPI**
> ListWordSynonymsAPI200Response listWordSynonymsAPI()

Return synonyms of a word.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .TextApi(configuration);

let body:.TextApiListWordSynonymsAPIRequest = {
  // string | The (noun) word for which a list of synonyms should be returned.
  word: "airplane",
};

apiInstance.listWordSynonymsAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | [**string**] | The (noun) word for which a list of synonyms should be returned. | defaults to undefined


### Return type

**ListWordSynonymsAPI200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **pluralizeWordAPI**
> PluralizeWordAPI200Response pluralizeWordAPI()

Find the plural form of a word.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .TextApi(configuration);

let body:.TextApiPluralizeWordAPIRequest = {
  // string | The (noun) word for which the plural form should be found.
  word: "party",
};

apiInstance.pluralizeWordAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | [**string**] | The (noun) word for which the plural form should be found. | defaults to undefined


### Return type

**PluralizeWordAPI200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **scoreReadabilityAPI**
> ScoreReadabilityAPI200Response scoreReadabilityAPI()

Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .TextApi(configuration);

let body:.TextApiScoreReadabilityAPIRequest = {
  // string | The text to score for readability.
  text: "A rather complex text, hard to read, and highly convoluted using acronym TERMS.",
};

apiInstance.scoreReadabilityAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | [**string**] | The text to score for readability. | defaults to undefined


### Return type

**ScoreReadabilityAPI200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **scoreTextAPI**
> ScoreTextAPI200Response scoreTextAPI()

Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .TextApi(configuration);

let body:.TextApiScoreTextAPIRequest = {
  // string | The title of the text to score.
  title: "A short story",
  // string | The text to score for multiple metrics.
  text: "A nice short story to be analyzed",
};

apiInstance.scoreTextAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | [**string**] | The title of the text to score. | defaults to undefined
 **text** | [**string**] | The text to score for multiple metrics. | defaults to undefined


### Return type

**ScoreTextAPI200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **singularizeWordAPI**
> SingularizeWordAPI200Response singularizeWordAPI()

Find the singular form of a word.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .TextApi(configuration);

let body:.TextApiSingularizeWordAPIRequest = {
  // string | The (noun) word for which the singular form should be found.
  word: "airplanes",
};

apiInstance.singularizeWordAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | [**string**] | The (noun) word for which the singular form should be found. | defaults to undefined


### Return type

**SingularizeWordAPI200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **stemTextAPI**
> StemTextAPI200Response stemTextAPI()

The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .TextApi(configuration);

let body:.TextApiStemTextAPIRequest = {
  // string | The text to be stemmed.
  text: "The laziest dogs are jumping over the quicker brown foxes.",
};

apiInstance.stemTextAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | [**string**] | The text to be stemmed. | defaults to undefined


### Return type

**StemTextAPI200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **tagPartOfSpeechAPI**
> TagPartOfSpeechAPI200Response tagPartOfSpeechAPI()

Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .TextApi(configuration);

let body:.TextApiTagPartOfSpeechAPIRequest = {
  // string | The text to tag the part of speech.
  text: "The lazy dog jumps over the quick brown fox.",
};

apiInstance.tagPartOfSpeechAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | [**string**] | The text to tag the part of speech. | defaults to undefined


### Return type

**TagPartOfSpeechAPI200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


