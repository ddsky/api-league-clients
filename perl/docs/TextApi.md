# WWW::OpenAPIClient::TextApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::TextApi;
```

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


# **correct_spelling_api**
> CorrectSpellingAPI200Response correct_spelling_api(text => $text, language => $language)

Correct Spelling API

The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::TextApi;
my $api_instance = WWW::OpenAPIClient::TextApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $text = Driving carss is fun.; # string | The text to be corrected.
my $language = en; # string | The language of the text, one of en, de, es, fr, or it.

eval {
    my $result = $api_instance->correct_spelling_api(text => $text, language => $language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->correct_spelling_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text to be corrected. | 
 **language** | **string**| The language of the text, one of en, de, es, fr, or it. | 

### Return type

[**CorrectSpellingAPI200Response**](CorrectSpellingAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **detect_gender_by_name_api**
> DetectGenderByNameAPI200Response detect_gender_by_name_api(name => $name)

Detect Gender by Name API

Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::TextApi;
my $api_instance = WWW::OpenAPIClient::TextApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $name = Alex; # string | The name of the perso for which the sentiment should be detected.

eval {
    my $result = $api_instance->detect_gender_by_name_api(name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->detect_gender_by_name_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string**| The name of the perso for which the sentiment should be detected. | 

### Return type

[**DetectGenderByNameAPI200Response**](DetectGenderByNameAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **detect_language_api**
> ARRAY[DetectLanguageAPI200ResponseInner] detect_language_api(text => $text)

Detect Language API

Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::TextApi;
my $api_instance = WWW::OpenAPIClient::TextApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $text = Das ist ein Text.; # string | The text for which the language should be detected.

eval {
    my $result = $api_instance->detect_language_api(text => $text);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->detect_language_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text for which the language should be detected. | 

### Return type

[**ARRAY[DetectLanguageAPI200ResponseInner]**](DetectLanguageAPI200ResponseInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **detect_sentiment_api**
> DetectSentimentAPI200Response detect_sentiment_api(text => $text)

Detect Sentiment API

Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::TextApi;
my $api_instance = WWW::OpenAPIClient::TextApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $text = Happy times feel so good.; # string | The text for which the sentiment should be detected.

eval {
    my $result = $api_instance->detect_sentiment_api(text => $text);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->detect_sentiment_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text for which the sentiment should be detected. | 

### Return type

[**DetectSentimentAPI200Response**](DetectSentimentAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extract_dates_api**
> ExtractDatesAPI200Response extract_dates_api(text => $text)

Extract Dates API

Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::TextApi;
my $api_instance = WWW::OpenAPIClient::TextApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $text = On 5th or April, 2035 there will be flying cars - 2023-02-12.; # string | The text from which dates should be extracted.

eval {
    my $result = $api_instance->extract_dates_api(text => $text);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->extract_dates_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text from which dates should be extracted. | 

### Return type

[**ExtractDatesAPI200Response**](ExtractDatesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extract_entities_api**
> ExtractEntitiesAPI200Response extract_entities_api(text => $text)

Extract Entities API

Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::TextApi;
my $api_instance = WWW::OpenAPIClient::TextApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $text = Jim Carrey is an actor from Canada; # string | The text from which entities should be extracted.

eval {
    my $result = $api_instance->extract_entities_api(text => $text);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->extract_entities_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text from which entities should be extracted. | 

### Return type

[**ExtractEntitiesAPI200Response**](ExtractEntitiesAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_word_synonyms_api**
> ListWordSynonymsAPI200Response list_word_synonyms_api(word => $word)

List Word Synonyms API

Return synonyms of a word.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::TextApi;
my $api_instance = WWW::OpenAPIClient::TextApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $word = airplane; # string | The (noun) word for which a list of synonyms should be returned.

eval {
    my $result = $api_instance->list_word_synonyms_api(word => $word);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->list_word_synonyms_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **string**| The (noun) word for which a list of synonyms should be returned. | 

### Return type

[**ListWordSynonymsAPI200Response**](ListWordSynonymsAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluralize_word_api**
> PluralizeWordAPI200Response pluralize_word_api(word => $word)

Pluralize Word API

Find the plural form of a word.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::TextApi;
my $api_instance = WWW::OpenAPIClient::TextApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $word = party; # string | The (noun) word for which the plural form should be found.

eval {
    my $result = $api_instance->pluralize_word_api(word => $word);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->pluralize_word_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **string**| The (noun) word for which the plural form should be found. | 

### Return type

[**PluralizeWordAPI200Response**](PluralizeWordAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **score_readability_api**
> ScoreReadabilityAPI200Response score_readability_api(text => $text)

Score Readability API

Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::TextApi;
my $api_instance = WWW::OpenAPIClient::TextApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $text = A rather complex text, hard to read, and highly convoluted using acronym TERMS.; # string | The text to score for readability.

eval {
    my $result = $api_instance->score_readability_api(text => $text);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->score_readability_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text to score for readability. | 

### Return type

[**ScoreReadabilityAPI200Response**](ScoreReadabilityAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **score_text_api**
> ScoreTextAPI200Response score_text_api(title => $title, text => $text)

Score Text API

Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::TextApi;
my $api_instance = WWW::OpenAPIClient::TextApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $title = A short story; # string | The title of the text to score.
my $text = A nice short story to be analyzed; # string | The text to score for multiple metrics.

eval {
    my $result = $api_instance->score_text_api(title => $title, text => $text);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->score_text_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **string**| The title of the text to score. | 
 **text** | **string**| The text to score for multiple metrics. | 

### Return type

[**ScoreTextAPI200Response**](ScoreTextAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **singularize_word_api**
> SingularizeWordAPI200Response singularize_word_api(word => $word)

Singularize Word API

Find the singular form of a word.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::TextApi;
my $api_instance = WWW::OpenAPIClient::TextApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $word = airplanes; # string | The (noun) word for which the singular form should be found.

eval {
    my $result = $api_instance->singularize_word_api(word => $word);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->singularize_word_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **string**| The (noun) word for which the singular form should be found. | 

### Return type

[**SingularizeWordAPI200Response**](SingularizeWordAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stem_text_api**
> StemTextAPI200Response stem_text_api(text => $text)

Stem Text API

The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::TextApi;
my $api_instance = WWW::OpenAPIClient::TextApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $text = The laziest dogs are jumping over the quicker brown foxes.; # string | The text to be stemmed.

eval {
    my $result = $api_instance->stem_text_api(text => $text);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->stem_text_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text to be stemmed. | 

### Return type

[**StemTextAPI200Response**](StemTextAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tag_part_of_speech_api**
> TagPartOfSpeechAPI200Response tag_part_of_speech_api(text => $text)

Tag Part of Speech API

Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::TextApi;
my $api_instance = WWW::OpenAPIClient::TextApi->new(

    # Configure API key authorization: apiKey
    api_key => {'api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'api-key' => 'Bearer'},
    # Configure API key authorization: headerApiKey
    api_key => {'x-api-key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'x-api-key' => 'Bearer'},
);

my $text = The lazy dog jumps over the quick brown fox.; # string | The text to tag the part of speech.

eval {
    my $result = $api_instance->tag_part_of_speech_api(text => $text);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->tag_part_of_speech_api: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text to tag the part of speech. | 

### Return type

[**TagPartOfSpeechAPI200Response**](TagPartOfSpeechAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

