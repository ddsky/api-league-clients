# apileague.TextApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**correct_spelling**](TextApi.md#correct_spelling) | **GET** /correct-spelling | Correct Spelling
[**detect_gender_by_name**](TextApi.md#detect_gender_by_name) | **GET** /detect-gender | Detect Gender by Name
[**extract_dates**](TextApi.md#extract_dates) | **GET** /extract-dates | Extract Dates
[**extract_entities**](TextApi.md#extract_entities) | **GET** /extract-entities | Extract Entities
[**list_word_synonyms**](TextApi.md#list_word_synonyms) | **GET** /list-synonyms | List Word Synonyms
[**pluralize_word**](TextApi.md#pluralize_word) | **GET** /pluralize-word | Pluralize Word
[**score_readability**](TextApi.md#score_readability) | **GET** /score-readability | Score Readability
[**score_text**](TextApi.md#score_text) | **GET** /score-text | Score Text
[**singularize_word**](TextApi.md#singularize_word) | **GET** /singularize-word | Singularize Word
[**stem_text**](TextApi.md#stem_text) | **GET** /stem-text | Stem Text
[**tag_part_of_speech**](TextApi.md#tag_part_of_speech) | **GET** /tag-pos | Tag Part of Speech


# **correct_spelling**
> CorrectSpelling200Response correct_spelling(text, language)

Correct Spelling

The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.correct_spelling200_response import CorrectSpelling200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.TextApi(api_client)
    text = 'Driving carss is fun.' # str | The text to be corrected.
    language = 'en' # str | The language of the text, one of en, de, es, fr, or it.

    try:
        # Correct Spelling
        api_response = api_instance.correct_spelling(text, language)
        print("The response of TextApi->correct_spelling:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TextApi->correct_spelling: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **str**| The text to be corrected. | 
 **language** | **str**| The language of the text, one of en, de, es, fr, or it. | 

### Return type

[**CorrectSpelling200Response**](CorrectSpelling200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **detect_gender_by_name**
> DetectGenderByName200Response detect_gender_by_name(name)

Detect Gender by Name

Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.detect_gender_by_name200_response import DetectGenderByName200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.TextApi(api_client)
    name = 'Alex' # str | The name of the perso for which the sentiment should be detected.

    try:
        # Detect Gender by Name
        api_response = api_instance.detect_gender_by_name(name)
        print("The response of TextApi->detect_gender_by_name:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TextApi->detect_gender_by_name: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The name of the perso for which the sentiment should be detected. | 

### Return type

[**DetectGenderByName200Response**](DetectGenderByName200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extract_dates**
> ExtractDates200Response extract_dates(text)

Extract Dates

Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.extract_dates200_response import ExtractDates200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.TextApi(api_client)
    text = 'On 5th or April, 2035 there will be flying cars - 2023-02-12.' # str | The text from which dates should be extracted.

    try:
        # Extract Dates
        api_response = api_instance.extract_dates(text)
        print("The response of TextApi->extract_dates:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TextApi->extract_dates: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **str**| The text from which dates should be extracted. | 

### Return type

[**ExtractDates200Response**](ExtractDates200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extract_entities**
> ExtractEntities200Response extract_entities(text)

Extract Entities

Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.extract_entities200_response import ExtractEntities200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.TextApi(api_client)
    text = 'Jim Carrey is an actor from Canada' # str | The text from which entities should be extracted.

    try:
        # Extract Entities
        api_response = api_instance.extract_entities(text)
        print("The response of TextApi->extract_entities:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TextApi->extract_entities: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **str**| The text from which entities should be extracted. | 

### Return type

[**ExtractEntities200Response**](ExtractEntities200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_word_synonyms**
> ListWordSynonyms200Response list_word_synonyms(word)

List Word Synonyms

Return synonyms of a word.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.list_word_synonyms200_response import ListWordSynonyms200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.TextApi(api_client)
    word = 'airplane' # str | The (noun) word for which a list of synonyms should be returned.

    try:
        # List Word Synonyms
        api_response = api_instance.list_word_synonyms(word)
        print("The response of TextApi->list_word_synonyms:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TextApi->list_word_synonyms: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **str**| The (noun) word for which a list of synonyms should be returned. | 

### Return type

[**ListWordSynonyms200Response**](ListWordSynonyms200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluralize_word**
> PluralizeWord200Response pluralize_word(word)

Pluralize Word

Find the plural form of a word.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.pluralize_word200_response import PluralizeWord200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.TextApi(api_client)
    word = 'party' # str | The (noun) word for which the plural form should be found.

    try:
        # Pluralize Word
        api_response = api_instance.pluralize_word(word)
        print("The response of TextApi->pluralize_word:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TextApi->pluralize_word: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **str**| The (noun) word for which the plural form should be found. | 

### Return type

[**PluralizeWord200Response**](PluralizeWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **score_readability**
> ScoreReadability200Response score_readability(text)

Score Readability

Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.score_readability200_response import ScoreReadability200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.TextApi(api_client)
    text = 'A rather complex text, hard to read, and highly convoluted using acronym TERMS.' # str | The text to score for readability.

    try:
        # Score Readability
        api_response = api_instance.score_readability(text)
        print("The response of TextApi->score_readability:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TextApi->score_readability: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **str**| The text to score for readability. | 

### Return type

[**ScoreReadability200Response**](ScoreReadability200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **score_text**
> ScoreText200Response score_text(title, text)

Score Text

Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.score_text200_response import ScoreText200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.TextApi(api_client)
    title = 'A short story' # str | The title of the text to score.
    text = 'A nice short story to be analyzed' # str | The text to score for multiple metrics.

    try:
        # Score Text
        api_response = api_instance.score_text(title, text)
        print("The response of TextApi->score_text:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TextApi->score_text: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **str**| The title of the text to score. | 
 **text** | **str**| The text to score for multiple metrics. | 

### Return type

[**ScoreText200Response**](ScoreText200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **singularize_word**
> SingularizeWord200Response singularize_word(word)

Singularize Word

Find the singular form of a word.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.singularize_word200_response import SingularizeWord200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.TextApi(api_client)
    word = 'airplanes' # str | The (noun) word for which the singular form should be found.

    try:
        # Singularize Word
        api_response = api_instance.singularize_word(word)
        print("The response of TextApi->singularize_word:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TextApi->singularize_word: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **str**| The (noun) word for which the singular form should be found. | 

### Return type

[**SingularizeWord200Response**](SingularizeWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stem_text**
> StemText200Response stem_text(text)

Stem Text

The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.stem_text200_response import StemText200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.TextApi(api_client)
    text = 'The laziest dogs are jumping over the quicker brown foxes.' # str | The text to be stemmed.

    try:
        # Stem Text
        api_response = api_instance.stem_text(text)
        print("The response of TextApi->stem_text:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TextApi->stem_text: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **str**| The text to be stemmed. | 

### Return type

[**StemText200Response**](StemText200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tag_part_of_speech**
> TagPartOfSpeech200Response tag_part_of_speech(text)

Tag Part of Speech

Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.

### Example

* Api Key Authentication (apiKey):
* Api Key Authentication (headerApiKey):

```python
import apileague
from apileague.models.tag_part_of_speech200_response import TagPartOfSpeech200Response
from apileague.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.apileague.com
# See configuration.py for a list of all supported configuration parameters.
configuration = apileague.Configuration(
    host = "https://api.apileague.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKey
configuration.api_key['apiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKey'] = 'Bearer'

# Configure API key authorization: headerApiKey
configuration.api_key['headerApiKey'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['headerApiKey'] = 'Bearer'

# Enter a context with an instance of the API client
with apileague.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = apileague.TextApi(api_client)
    text = 'The lazy dog jumps over the quick brown fox.' # str | The text to tag the part of speech.

    try:
        # Tag Part of Speech
        api_response = api_instance.tag_part_of_speech(text)
        print("The response of TextApi->tag_part_of_speech:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TextApi->tag_part_of_speech: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **str**| The text to tag the part of speech. | 

### Return type

[**TagPartOfSpeech200Response**](TagPartOfSpeech200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

