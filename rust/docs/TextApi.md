# \TextApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**correct_spelling**](TextApi.md#correct_spelling) | **GET** /correct-spelling | Correct Spelling
[**detect_gender_by_name**](TextApi.md#detect_gender_by_name) | **GET** /detect-gender | Detect Gender by Name
[**detect_language**](TextApi.md#detect_language) | **GET** /detect-language | Detect Language
[**detect_sentiment**](TextApi.md#detect_sentiment) | **GET** /detect-sentiment | Detect Sentiment
[**extract_dates**](TextApi.md#extract_dates) | **GET** /extract-dates | Extract Dates
[**extract_entities**](TextApi.md#extract_entities) | **GET** /extract-entities | Extract Entities
[**list_word_synonyms**](TextApi.md#list_word_synonyms) | **GET** /list-synonyms | List Word Synonyms
[**pluralize_word**](TextApi.md#pluralize_word) | **GET** /pluralize-word | Pluralize Word
[**score_readability**](TextApi.md#score_readability) | **GET** /score-readability | Score Readability
[**score_text**](TextApi.md#score_text) | **GET** /score-text | Score Text
[**singularize_word**](TextApi.md#singularize_word) | **GET** /singularize-word | Singularize Word
[**stem_text**](TextApi.md#stem_text) | **GET** /stem-text | Stem Text
[**tag_part_of_speech**](TextApi.md#tag_part_of_speech) | **GET** /tag-pos | Tag Part of Speech



## correct_spelling

> models::CorrectSpelling200Response correct_spelling(text, language)
Correct Spelling

The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**text** | **String** | The text to be corrected. | [required] |
**language** | **String** | The language of the text, one of en, de, es, fr, or it. | [required] |

### Return type

[**models::CorrectSpelling200Response**](correctSpelling_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## detect_gender_by_name

> models::DetectGenderByName200Response detect_gender_by_name(name)
Detect Gender by Name

Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**name** | **String** | The name of the perso for which the sentiment should be detected. | [required] |

### Return type

[**models::DetectGenderByName200Response**](detectGenderByName_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## detect_language

> Vec<models::DetectLanguage200ResponseInner> detect_language(text)
Detect Language

Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**text** | **String** | The text for which the language should be detected. | [required] |

### Return type

[**Vec<models::DetectLanguage200ResponseInner>**](detectLanguage_200_response_inner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## detect_sentiment

> models::DetectSentiment200Response detect_sentiment(text)
Detect Sentiment

Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**text** | **String** | The text for which the sentiment should be detected. | [required] |

### Return type

[**models::DetectSentiment200Response**](detectSentiment_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## extract_dates

> models::ExtractDates200Response extract_dates(text)
Extract Dates

Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**text** | **String** | The text from which dates should be extracted. | [required] |

### Return type

[**models::ExtractDates200Response**](extractDates_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## extract_entities

> models::ExtractEntities200Response extract_entities(text)
Extract Entities

Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**text** | **String** | The text from which entities should be extracted. | [required] |

### Return type

[**models::ExtractEntities200Response**](extractEntities_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## list_word_synonyms

> models::ListWordSynonyms200Response list_word_synonyms(word)
List Word Synonyms

Return synonyms of a word.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**word** | **String** | The (noun) word for which a list of synonyms should be returned. | [required] |

### Return type

[**models::ListWordSynonyms200Response**](listWordSynonyms_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## pluralize_word

> models::PluralizeWord200Response pluralize_word(word)
Pluralize Word

Find the plural form of a word.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**word** | **String** | The (noun) word for which the plural form should be found. | [required] |

### Return type

[**models::PluralizeWord200Response**](pluralizeWord_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## score_readability

> models::ScoreReadability200Response score_readability(text)
Score Readability

Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**text** | **String** | The text to score for readability. | [required] |

### Return type

[**models::ScoreReadability200Response**](scoreReadability_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## score_text

> models::ScoreText200Response score_text(title, text)
Score Text

Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**title** | **String** | The title of the text to score. | [required] |
**text** | **String** | The text to score for multiple metrics. | [required] |

### Return type

[**models::ScoreText200Response**](scoreText_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## singularize_word

> models::SingularizeWord200Response singularize_word(word)
Singularize Word

Find the singular form of a word.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**word** | **String** | The (noun) word for which the singular form should be found. | [required] |

### Return type

[**models::SingularizeWord200Response**](singularizeWord_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## stem_text

> models::StemText200Response stem_text(text)
Stem Text

The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**text** | **String** | The text to be stemmed. | [required] |

### Return type

[**models::StemText200Response**](stemText_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## tag_part_of_speech

> models::TagPartOfSpeech200Response tag_part_of_speech(text)
Tag Part of Speech

Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**text** | **String** | The text to tag the part of speech. | [required] |

### Return type

[**models::TagPartOfSpeech200Response**](tagPartOfSpeech_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

