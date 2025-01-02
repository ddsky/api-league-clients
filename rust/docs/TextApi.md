# \TextApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**correct_spelling_api**](TextApi.md#correct_spelling_api) | **GET** /correct-spelling | Correct Spelling API
[**detect_gender_by_name_api**](TextApi.md#detect_gender_by_name_api) | **GET** /detect-gender | Detect Gender by Name API
[**detect_language_api**](TextApi.md#detect_language_api) | **GET** /detect-language | Detect Language API
[**detect_sentiment_api**](TextApi.md#detect_sentiment_api) | **GET** /detect-sentiment | Detect Sentiment API
[**extract_dates_api**](TextApi.md#extract_dates_api) | **GET** /extract-dates | Extract Dates API
[**extract_entities_api**](TextApi.md#extract_entities_api) | **GET** /extract-entities | Extract Entities API
[**list_word_synonyms_api**](TextApi.md#list_word_synonyms_api) | **GET** /list-synonyms | List Word Synonyms API
[**pluralize_word_api**](TextApi.md#pluralize_word_api) | **GET** /pluralize-word | Pluralize Word API
[**score_readability_api**](TextApi.md#score_readability_api) | **GET** /score-readability | Score Readability API
[**score_text_api**](TextApi.md#score_text_api) | **GET** /score-text | Score Text API
[**singularize_word_api**](TextApi.md#singularize_word_api) | **GET** /singularize-word | Singularize Word API
[**stem_text_api**](TextApi.md#stem_text_api) | **GET** /stem-text | Stem Text API
[**tag_part_of_speech_api**](TextApi.md#tag_part_of_speech_api) | **GET** /tag-pos | Tag Part of Speech API



## correct_spelling_api

> models::CorrectSpellingApi200Response correct_spelling_api(text, language)
Correct Spelling API

The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**text** | **String** | The text to be corrected. | [required] |
**language** | **String** | The language of the text, one of en, de, es, fr, or it. | [required] |

### Return type

[**models::CorrectSpellingApi200Response**](correctSpellingAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## detect_gender_by_name_api

> models::DetectGenderByNameApi200Response detect_gender_by_name_api(name)
Detect Gender by Name API

Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** | The name of the perso for which the sentiment should be detected. | [required] |

### Return type

[**models::DetectGenderByNameApi200Response**](detectGenderByNameAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## detect_language_api

> Vec<models::DetectLanguageApi200ResponseInner> detect_language_api(text)
Detect Language API

Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**text** | **String** | The text for which the language should be detected. | [required] |

### Return type

[**Vec<models::DetectLanguageApi200ResponseInner>**](detectLanguageAPI_200_response_inner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## detect_sentiment_api

> models::DetectSentimentApi200Response detect_sentiment_api(text)
Detect Sentiment API

Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**text** | **String** | The text for which the sentiment should be detected. | [required] |

### Return type

[**models::DetectSentimentApi200Response**](detectSentimentAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## extract_dates_api

> models::ExtractDatesApi200Response extract_dates_api(text)
Extract Dates API

Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**text** | **String** | The text from which dates should be extracted. | [required] |

### Return type

[**models::ExtractDatesApi200Response**](extractDatesAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## extract_entities_api

> models::ExtractEntitiesApi200Response extract_entities_api(text)
Extract Entities API

Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**text** | **String** | The text from which entities should be extracted. | [required] |

### Return type

[**models::ExtractEntitiesApi200Response**](extractEntitiesAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_word_synonyms_api

> models::ListWordSynonymsApi200Response list_word_synonyms_api(word)
List Word Synonyms API

Return synonyms of a word.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**word** | **String** | The (noun) word for which a list of synonyms should be returned. | [required] |

### Return type

[**models::ListWordSynonymsApi200Response**](listWordSynonymsAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## pluralize_word_api

> models::PluralizeWordApi200Response pluralize_word_api(word)
Pluralize Word API

Find the plural form of a word.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**word** | **String** | The (noun) word for which the plural form should be found. | [required] |

### Return type

[**models::PluralizeWordApi200Response**](pluralizeWordAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## score_readability_api

> models::ScoreReadabilityApi200Response score_readability_api(text)
Score Readability API

Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**text** | **String** | The text to score for readability. | [required] |

### Return type

[**models::ScoreReadabilityApi200Response**](scoreReadabilityAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## score_text_api

> models::ScoreTextApi200Response score_text_api(title, text)
Score Text API

Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**title** | **String** | The title of the text to score. | [required] |
**text** | **String** | The text to score for multiple metrics. | [required] |

### Return type

[**models::ScoreTextApi200Response**](scoreTextAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## singularize_word_api

> models::SingularizeWordApi200Response singularize_word_api(word)
Singularize Word API

Find the singular form of a word.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**word** | **String** | The (noun) word for which the singular form should be found. | [required] |

### Return type

[**models::SingularizeWordApi200Response**](singularizeWordAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## stem_text_api

> models::StemTextApi200Response stem_text_api(text)
Stem Text API

The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**text** | **String** | The text to be stemmed. | [required] |

### Return type

[**models::StemTextApi200Response**](stemTextAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## tag_part_of_speech_api

> models::TagPartOfSpeechApi200Response tag_part_of_speech_api(text)
Tag Part of Speech API

Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**text** | **String** | The text to tag the part of speech. | [required] |

### Return type

[**models::TagPartOfSpeechApi200Response**](tagPartOfSpeechAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

