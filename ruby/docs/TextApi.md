# OpenapiClient::TextApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**correct_spelling**](TextApi.md#correct_spelling) | **GET** /correct-spelling | Correct Spelling |
| [**detect_language**](TextApi.md#detect_language) | **GET** /detect-language | Detect Language |
| [**detect_sentiment**](TextApi.md#detect_sentiment) | **GET** /detect-sentiment | Detect Sentiment |
| [**extract_dates**](TextApi.md#extract_dates) | **GET** /extract-dates | Extract Dates |
| [**extract_entities**](TextApi.md#extract_entities) | **GET** /extract-entities | Extract Entities |
| [**list_word_synonyms**](TextApi.md#list_word_synonyms) | **GET** /list-synonyms | List Word Synonyms |
| [**part_of_speech_tagging**](TextApi.md#part_of_speech_tagging) | **GET** /tag-pos | Part of Speech Tagging |
| [**pluralize_word**](TextApi.md#pluralize_word) | **GET** /pluralize-word | Pluralize Word |
| [**score_readability**](TextApi.md#score_readability) | **GET** /score-readability | Score Readability |
| [**score_text**](TextApi.md#score_text) | **GET** /score-text | Score Text |
| [**singularize_word**](TextApi.md#singularize_word) | **GET** /singularize-word | Singularize Word |
| [**text_stemming**](TextApi.md#text_stemming) | **GET** /stem-text | Text Stemming |


## correct_spelling

> <CorrectSpelling200Response> correct_spelling(text, language)

Correct Spelling

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
  # Correct Spelling
  result = api_instance.correct_spelling(text, language)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->correct_spelling: #{e}"
end
```

#### Using the correct_spelling_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CorrectSpelling200Response>, Integer, Hash)> correct_spelling_with_http_info(text, language)

```ruby
begin
  # Correct Spelling
  data, status_code, headers = api_instance.correct_spelling_with_http_info(text, language)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CorrectSpelling200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->correct_spelling_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text to be corrected. |  |
| **language** | **String** | The language of the text, one of en, de, es, fr, or it. |  |

### Return type

[**CorrectSpelling200Response**](CorrectSpelling200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## detect_language

> <Array<DetectLanguage200ResponseInner>> detect_language(text)

Detect Language

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
  # Detect Language
  result = api_instance.detect_language(text)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->detect_language: #{e}"
end
```

#### Using the detect_language_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DetectLanguage200ResponseInner>>, Integer, Hash)> detect_language_with_http_info(text)

```ruby
begin
  # Detect Language
  data, status_code, headers = api_instance.detect_language_with_http_info(text)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DetectLanguage200ResponseInner>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->detect_language_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text for which the language should be detected. |  |

### Return type

[**Array&lt;DetectLanguage200ResponseInner&gt;**](DetectLanguage200ResponseInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## detect_sentiment

> <DetectSentiment200Response> detect_sentiment(text)

Detect Sentiment

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
  # Detect Sentiment
  result = api_instance.detect_sentiment(text)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->detect_sentiment: #{e}"
end
```

#### Using the detect_sentiment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetectSentiment200Response>, Integer, Hash)> detect_sentiment_with_http_info(text)

```ruby
begin
  # Detect Sentiment
  data, status_code, headers = api_instance.detect_sentiment_with_http_info(text)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetectSentiment200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->detect_sentiment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text for which the sentiment should be detected. |  |

### Return type

[**DetectSentiment200Response**](DetectSentiment200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## extract_dates

> <ExtractDates200Response> extract_dates(text)

Extract Dates

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
  # Extract Dates
  result = api_instance.extract_dates(text)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->extract_dates: #{e}"
end
```

#### Using the extract_dates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExtractDates200Response>, Integer, Hash)> extract_dates_with_http_info(text)

```ruby
begin
  # Extract Dates
  data, status_code, headers = api_instance.extract_dates_with_http_info(text)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExtractDates200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->extract_dates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text from which dates should be extracted. |  |

### Return type

[**ExtractDates200Response**](ExtractDates200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## extract_entities

> <ExtractEntities200Response> extract_entities(text)

Extract Entities

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
  # Extract Entities
  result = api_instance.extract_entities(text)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->extract_entities: #{e}"
end
```

#### Using the extract_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExtractEntities200Response>, Integer, Hash)> extract_entities_with_http_info(text)

```ruby
begin
  # Extract Entities
  data, status_code, headers = api_instance.extract_entities_with_http_info(text)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExtractEntities200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->extract_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text from which entities should be extracted. |  |

### Return type

[**ExtractEntities200Response**](ExtractEntities200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_word_synonyms

> <ListWordSynonyms200Response> list_word_synonyms(word)

List Word Synonyms

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
  # List Word Synonyms
  result = api_instance.list_word_synonyms(word)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->list_word_synonyms: #{e}"
end
```

#### Using the list_word_synonyms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWordSynonyms200Response>, Integer, Hash)> list_word_synonyms_with_http_info(word)

```ruby
begin
  # List Word Synonyms
  data, status_code, headers = api_instance.list_word_synonyms_with_http_info(word)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWordSynonyms200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->list_word_synonyms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **word** | **String** | The (noun) word for which a list of synonyms should be returned. |  |

### Return type

[**ListWordSynonyms200Response**](ListWordSynonyms200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## part_of_speech_tagging

> <PartOfSpeechTagging200Response> part_of_speech_tagging(text)

Part of Speech Tagging

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
  # Part of Speech Tagging
  result = api_instance.part_of_speech_tagging(text)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->part_of_speech_tagging: #{e}"
end
```

#### Using the part_of_speech_tagging_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PartOfSpeechTagging200Response>, Integer, Hash)> part_of_speech_tagging_with_http_info(text)

```ruby
begin
  # Part of Speech Tagging
  data, status_code, headers = api_instance.part_of_speech_tagging_with_http_info(text)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PartOfSpeechTagging200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->part_of_speech_tagging_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text to tag the part of speech. |  |

### Return type

[**PartOfSpeechTagging200Response**](PartOfSpeechTagging200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pluralize_word

> <PluralizeWord200Response> pluralize_word(word)

Pluralize Word

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
  # Pluralize Word
  result = api_instance.pluralize_word(word)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->pluralize_word: #{e}"
end
```

#### Using the pluralize_word_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PluralizeWord200Response>, Integer, Hash)> pluralize_word_with_http_info(word)

```ruby
begin
  # Pluralize Word
  data, status_code, headers = api_instance.pluralize_word_with_http_info(word)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PluralizeWord200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->pluralize_word_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **word** | **String** | The (noun) word for which the plural form should be found. |  |

### Return type

[**PluralizeWord200Response**](PluralizeWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## score_readability

> <ScoreReadability200Response> score_readability(text)

Score Readability

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
  # Score Readability
  result = api_instance.score_readability(text)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->score_readability: #{e}"
end
```

#### Using the score_readability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScoreReadability200Response>, Integer, Hash)> score_readability_with_http_info(text)

```ruby
begin
  # Score Readability
  data, status_code, headers = api_instance.score_readability_with_http_info(text)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScoreReadability200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->score_readability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text to score for readability. |  |

### Return type

[**ScoreReadability200Response**](ScoreReadability200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## score_text

> <ScoreText200Response> score_text(title, text)

Score Text

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
  # Score Text
  result = api_instance.score_text(title, text)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->score_text: #{e}"
end
```

#### Using the score_text_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScoreText200Response>, Integer, Hash)> score_text_with_http_info(title, text)

```ruby
begin
  # Score Text
  data, status_code, headers = api_instance.score_text_with_http_info(title, text)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScoreText200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->score_text_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The title of the text to score. |  |
| **text** | **String** | The text to score for multiple metrics. |  |

### Return type

[**ScoreText200Response**](ScoreText200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## singularize_word

> <SingularizeWord200Response> singularize_word(word)

Singularize Word

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
  # Singularize Word
  result = api_instance.singularize_word(word)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->singularize_word: #{e}"
end
```

#### Using the singularize_word_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SingularizeWord200Response>, Integer, Hash)> singularize_word_with_http_info(word)

```ruby
begin
  # Singularize Word
  data, status_code, headers = api_instance.singularize_word_with_http_info(word)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SingularizeWord200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->singularize_word_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **word** | **String** | The (noun) word for which the singular form should be found. |  |

### Return type

[**SingularizeWord200Response**](SingularizeWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## text_stemming

> <TextStemming200Response> text_stemming(text)

Text Stemming

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
  # Text Stemming
  result = api_instance.text_stemming(text)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->text_stemming: #{e}"
end
```

#### Using the text_stemming_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TextStemming200Response>, Integer, Hash)> text_stemming_with_http_info(text)

```ruby
begin
  # Text Stemming
  data, status_code, headers = api_instance.text_stemming_with_http_info(text)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TextStemming200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TextApi->text_stemming_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The text to be stemmed. |  |

### Return type

[**TextStemming200Response**](TextStemming200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

