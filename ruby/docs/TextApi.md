# OpenapiClient::TextApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**correct_spelling_api**](TextApi.md#correct_spelling_api) | **GET** /correct-spelling | Correct Spelling API |
| [**detect_gender_by_name_api**](TextApi.md#detect_gender_by_name_api) | **GET** /detect-gender | Detect Gender by Name API |
| [**detect_language_api**](TextApi.md#detect_language_api) | **GET** /detect-language | Detect Language API |
| [**detect_sentiment_api**](TextApi.md#detect_sentiment_api) | **GET** /detect-sentiment | Detect Sentiment API |
| [**extract_dates_api**](TextApi.md#extract_dates_api) | **GET** /extract-dates | Extract Dates API |
| [**extract_entities_api**](TextApi.md#extract_entities_api) | **GET** /extract-entities | Extract Entities API |
| [**list_word_synonyms_api**](TextApi.md#list_word_synonyms_api) | **GET** /list-synonyms | List Word Synonyms API |
| [**pluralize_word_api**](TextApi.md#pluralize_word_api) | **GET** /pluralize-word | Pluralize Word API |
| [**score_readability_api**](TextApi.md#score_readability_api) | **GET** /score-readability | Score Readability API |
| [**score_text_api**](TextApi.md#score_text_api) | **GET** /score-text | Score Text API |
| [**singularize_word_api**](TextApi.md#singularize_word_api) | **GET** /singularize-word | Singularize Word API |
| [**stem_text_api**](TextApi.md#stem_text_api) | **GET** /stem-text | Stem Text API |
| [**tag_part_of_speech_api**](TextApi.md#tag_part_of_speech_api) | **GET** /tag-pos | Tag Part of Speech API |


## correct_spelling_api

> <CorrectSpellingAPI200Response> correct_spelling_api(text, language)

Correct Spelling API

The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::TextApi.new
text = 'Driving carss is fun.' # String | The text to be corrected.
language = 'en' # String | The language of the text, one of en, de, es, fr, or it.

begin
  # Correct Spelling API
  result = api_instance.correct_spelling_api(text, language)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->correct_spelling_api: #{e}"
end
```

#### Using the correct_spelling_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CorrectSpellingAPI200Response>, Integer, Hash)> correct_spelling_api_with_http_info(text, language)

```ruby
begin
  # Correct Spelling API
  data, status_code, headers = api_instance.correct_spelling_api_with_http_info(text, language)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CorrectSpellingAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->correct_spelling_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text to be corrected. |  |
| **language** | **String** | The language of the text, one of en, de, es, fr, or it. |  |

### Return type

[**CorrectSpellingAPI200Response**](CorrectSpellingAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## detect_gender_by_name_api

> <DetectGenderByNameAPI200Response> detect_gender_by_name_api(name)

Detect Gender by Name API

Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::TextApi.new
name = 'Alex' # String | The name of the perso for which the sentiment should be detected.

begin
  # Detect Gender by Name API
  result = api_instance.detect_gender_by_name_api(name)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->detect_gender_by_name_api: #{e}"
end
```

#### Using the detect_gender_by_name_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectGenderByNameAPI200Response>, Integer, Hash)> detect_gender_by_name_api_with_http_info(name)

```ruby
begin
  # Detect Gender by Name API
  data, status_code, headers = api_instance.detect_gender_by_name_api_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectGenderByNameAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->detect_gender_by_name_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the perso for which the sentiment should be detected. |  |

### Return type

[**DetectGenderByNameAPI200Response**](DetectGenderByNameAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## detect_language_api

> <Array<DetectLanguageAPI200ResponseInner>> detect_language_api(text)

Detect Language API

Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::TextApi.new
text = 'Das ist ein Text.' # String | The text for which the language should be detected.

begin
  # Detect Language API
  result = api_instance.detect_language_api(text)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->detect_language_api: #{e}"
end
```

#### Using the detect_language_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DetectLanguageAPI200ResponseInner>>, Integer, Hash)> detect_language_api_with_http_info(text)

```ruby
begin
  # Detect Language API
  data, status_code, headers = api_instance.detect_language_api_with_http_info(text)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DetectLanguageAPI200ResponseInner>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->detect_language_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text for which the language should be detected. |  |

### Return type

[**Array&lt;DetectLanguageAPI200ResponseInner&gt;**](DetectLanguageAPI200ResponseInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## detect_sentiment_api

> <DetectSentimentAPI200Response> detect_sentiment_api(text)

Detect Sentiment API

Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::TextApi.new
text = 'Happy times feel so good.' # String | The text for which the sentiment should be detected.

begin
  # Detect Sentiment API
  result = api_instance.detect_sentiment_api(text)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->detect_sentiment_api: #{e}"
end
```

#### Using the detect_sentiment_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectSentimentAPI200Response>, Integer, Hash)> detect_sentiment_api_with_http_info(text)

```ruby
begin
  # Detect Sentiment API
  data, status_code, headers = api_instance.detect_sentiment_api_with_http_info(text)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectSentimentAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->detect_sentiment_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text for which the sentiment should be detected. |  |

### Return type

[**DetectSentimentAPI200Response**](DetectSentimentAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## extract_dates_api

> <ExtractDatesAPI200Response> extract_dates_api(text)

Extract Dates API

Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::TextApi.new
text = 'On 5th or April, 2035 there will be flying cars - 2023-02-12.' # String | The text from which dates should be extracted.

begin
  # Extract Dates API
  result = api_instance.extract_dates_api(text)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->extract_dates_api: #{e}"
end
```

#### Using the extract_dates_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExtractDatesAPI200Response>, Integer, Hash)> extract_dates_api_with_http_info(text)

```ruby
begin
  # Extract Dates API
  data, status_code, headers = api_instance.extract_dates_api_with_http_info(text)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExtractDatesAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->extract_dates_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text from which dates should be extracted. |  |

### Return type

[**ExtractDatesAPI200Response**](ExtractDatesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## extract_entities_api

> <ExtractEntitiesAPI200Response> extract_entities_api(text)

Extract Entities API

Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::TextApi.new
text = 'Jim Carrey is an actor from Canada' # String | The text from which entities should be extracted.

begin
  # Extract Entities API
  result = api_instance.extract_entities_api(text)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->extract_entities_api: #{e}"
end
```

#### Using the extract_entities_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExtractEntitiesAPI200Response>, Integer, Hash)> extract_entities_api_with_http_info(text)

```ruby
begin
  # Extract Entities API
  data, status_code, headers = api_instance.extract_entities_api_with_http_info(text)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExtractEntitiesAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->extract_entities_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text from which entities should be extracted. |  |

### Return type

[**ExtractEntitiesAPI200Response**](ExtractEntitiesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_word_synonyms_api

> <ListWordSynonymsAPI200Response> list_word_synonyms_api(word)

List Word Synonyms API

Return synonyms of a word.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::TextApi.new
word = 'airplane' # String | The (noun) word for which a list of synonyms should be returned.

begin
  # List Word Synonyms API
  result = api_instance.list_word_synonyms_api(word)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->list_word_synonyms_api: #{e}"
end
```

#### Using the list_word_synonyms_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWordSynonymsAPI200Response>, Integer, Hash)> list_word_synonyms_api_with_http_info(word)

```ruby
begin
  # List Word Synonyms API
  data, status_code, headers = api_instance.list_word_synonyms_api_with_http_info(word)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWordSynonymsAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->list_word_synonyms_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **word** | **String** | The (noun) word for which a list of synonyms should be returned. |  |

### Return type

[**ListWordSynonymsAPI200Response**](ListWordSynonymsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pluralize_word_api

> <PluralizeWordAPI200Response> pluralize_word_api(word)

Pluralize Word API

Find the plural form of a word.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::TextApi.new
word = 'party' # String | The (noun) word for which the plural form should be found.

begin
  # Pluralize Word API
  result = api_instance.pluralize_word_api(word)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->pluralize_word_api: #{e}"
end
```

#### Using the pluralize_word_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PluralizeWordAPI200Response>, Integer, Hash)> pluralize_word_api_with_http_info(word)

```ruby
begin
  # Pluralize Word API
  data, status_code, headers = api_instance.pluralize_word_api_with_http_info(word)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PluralizeWordAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->pluralize_word_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **word** | **String** | The (noun) word for which the plural form should be found. |  |

### Return type

[**PluralizeWordAPI200Response**](PluralizeWordAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## score_readability_api

> <ScoreReadabilityAPI200Response> score_readability_api(text)

Score Readability API

Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::TextApi.new
text = 'A rather complex text, hard to read, and highly convoluted using acronym TERMS.' # String | The text to score for readability.

begin
  # Score Readability API
  result = api_instance.score_readability_api(text)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->score_readability_api: #{e}"
end
```

#### Using the score_readability_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScoreReadabilityAPI200Response>, Integer, Hash)> score_readability_api_with_http_info(text)

```ruby
begin
  # Score Readability API
  data, status_code, headers = api_instance.score_readability_api_with_http_info(text)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScoreReadabilityAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->score_readability_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text to score for readability. |  |

### Return type

[**ScoreReadabilityAPI200Response**](ScoreReadabilityAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## score_text_api

> <ScoreTextAPI200Response> score_text_api(title, text)

Score Text API

Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::TextApi.new
title = 'A short story' # String | The title of the text to score.
text = 'A nice short story to be analyzed' # String | The text to score for multiple metrics.

begin
  # Score Text API
  result = api_instance.score_text_api(title, text)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->score_text_api: #{e}"
end
```

#### Using the score_text_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScoreTextAPI200Response>, Integer, Hash)> score_text_api_with_http_info(title, text)

```ruby
begin
  # Score Text API
  data, status_code, headers = api_instance.score_text_api_with_http_info(title, text)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScoreTextAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->score_text_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The title of the text to score. |  |
| **text** | **String** | The text to score for multiple metrics. |  |

### Return type

[**ScoreTextAPI200Response**](ScoreTextAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## singularize_word_api

> <SingularizeWordAPI200Response> singularize_word_api(word)

Singularize Word API

Find the singular form of a word.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::TextApi.new
word = 'airplanes' # String | The (noun) word for which the singular form should be found.

begin
  # Singularize Word API
  result = api_instance.singularize_word_api(word)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->singularize_word_api: #{e}"
end
```

#### Using the singularize_word_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingularizeWordAPI200Response>, Integer, Hash)> singularize_word_api_with_http_info(word)

```ruby
begin
  # Singularize Word API
  data, status_code, headers = api_instance.singularize_word_api_with_http_info(word)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingularizeWordAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->singularize_word_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **word** | **String** | The (noun) word for which the singular form should be found. |  |

### Return type

[**SingularizeWordAPI200Response**](SingularizeWordAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## stem_text_api

> <StemTextAPI200Response> stem_text_api(text)

Stem Text API

The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::TextApi.new
text = 'The laziest dogs are jumping over the quicker brown foxes.' # String | The text to be stemmed.

begin
  # Stem Text API
  result = api_instance.stem_text_api(text)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->stem_text_api: #{e}"
end
```

#### Using the stem_text_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StemTextAPI200Response>, Integer, Hash)> stem_text_api_with_http_info(text)

```ruby
begin
  # Stem Text API
  data, status_code, headers = api_instance.stem_text_api_with_http_info(text)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StemTextAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->stem_text_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text to be stemmed. |  |

### Return type

[**StemTextAPI200Response**](StemTextAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tag_part_of_speech_api

> <TagPartOfSpeechAPI200Response> tag_part_of_speech_api(text)

Tag Part of Speech API

Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::TextApi.new
text = 'The lazy dog jumps over the quick brown fox.' # String | The text to tag the part of speech.

begin
  # Tag Part of Speech API
  result = api_instance.tag_part_of_speech_api(text)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->tag_part_of_speech_api: #{e}"
end
```

#### Using the tag_part_of_speech_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TagPartOfSpeechAPI200Response>, Integer, Hash)> tag_part_of_speech_api_with_http_info(text)

```ruby
begin
  # Tag Part of Speech API
  data, status_code, headers = api_instance.tag_part_of_speech_api_with_http_info(text)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TagPartOfSpeechAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->tag_part_of_speech_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text to tag the part of speech. |  |

### Return type

[**TagPartOfSpeechAPI200Response**](TagPartOfSpeechAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

