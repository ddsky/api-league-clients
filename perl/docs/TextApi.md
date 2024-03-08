# WWW::OpenAPIClient::TextApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::TextApi;
```

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**correct_spelling**](TextApi.md#correct_spelling) | **GET** /correct-spelling | Correct Spelling
[**detect_language**](TextApi.md#detect_language) | **GET** /detect-language | Detect Language
[**detect_sentiment**](TextApi.md#detect_sentiment) | **GET** /detect-sentiment | Detect Sentiment
[**extract_dates**](TextApi.md#extract_dates) | **GET** /extract-dates | Extract Dates
[**extract_entities**](TextApi.md#extract_entities) | **GET** /extract-entities | Extract Entities
[**list_word_synonyms**](TextApi.md#list_word_synonyms) | **GET** /list-synonyms | List Word Synonyms
[**part_of_speech_tagging**](TextApi.md#part_of_speech_tagging) | **GET** /tag-pos | Part of Speech Tagging
[**pluralize_word**](TextApi.md#pluralize_word) | **GET** /pluralize-word | Pluralize Word
[**score_readability**](TextApi.md#score_readability) | **GET** /score-readability | Score Readability
[**score_text**](TextApi.md#score_text) | **GET** /score-text | Score Text
[**singularize_word**](TextApi.md#singularize_word) | **GET** /singularize-word | Singularize Word
[**text_stemming**](TextApi.md#text_stemming) | **GET** /stem-text | Text Stemming


# **correct_spelling**
> CorrectSpelling200Response correct_spelling(text => $text, language => $language)

Correct Spelling

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
    my $result = $api_instance->correct_spelling(text => $text, language => $language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->correct_spelling: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text to be corrected. | 
 **language** | **string**| The language of the text, one of en, de, es, fr, or it. | 

### Return type

[**CorrectSpelling200Response**](CorrectSpelling200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **detect_language**
> ARRAY[DetectLanguage200ResponseInner] detect_language(text => $text)

Detect Language

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
    my $result = $api_instance->detect_language(text => $text);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->detect_language: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text for which the language should be detected. | 

### Return type

[**ARRAY[DetectLanguage200ResponseInner]**](DetectLanguage200ResponseInner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **detect_sentiment**
> DetectSentiment200Response detect_sentiment(text => $text)

Detect Sentiment

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
    my $result = $api_instance->detect_sentiment(text => $text);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->detect_sentiment: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text for which the sentiment should be detected. | 

### Return type

[**DetectSentiment200Response**](DetectSentiment200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extract_dates**
> ExtractDates200Response extract_dates(text => $text)

Extract Dates

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
    my $result = $api_instance->extract_dates(text => $text);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->extract_dates: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text from which dates should be extracted. | 

### Return type

[**ExtractDates200Response**](ExtractDates200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extract_entities**
> ExtractEntities200Response extract_entities(text => $text)

Extract Entities

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
    my $result = $api_instance->extract_entities(text => $text);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->extract_entities: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text from which entities should be extracted. | 

### Return type

[**ExtractEntities200Response**](ExtractEntities200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_word_synonyms**
> ListWordSynonyms200Response list_word_synonyms(word => $word)

List Word Synonyms

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
    my $result = $api_instance->list_word_synonyms(word => $word);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->list_word_synonyms: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **string**| The (noun) word for which a list of synonyms should be returned. | 

### Return type

[**ListWordSynonyms200Response**](ListWordSynonyms200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **part_of_speech_tagging**
> PartOfSpeechTagging200Response part_of_speech_tagging(text => $text)

Part of Speech Tagging

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
    my $result = $api_instance->part_of_speech_tagging(text => $text);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->part_of_speech_tagging: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text to tag the part of speech. | 

### Return type

[**PartOfSpeechTagging200Response**](PartOfSpeechTagging200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluralize_word**
> PluralizeWord200Response pluralize_word(word => $word)

Pluralize Word

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
    my $result = $api_instance->pluralize_word(word => $word);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->pluralize_word: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **string**| The (noun) word for which the plural form should be found. | 

### Return type

[**PluralizeWord200Response**](PluralizeWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **score_readability**
> ScoreReadability200Response score_readability(text => $text)

Score Readability

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
    my $result = $api_instance->score_readability(text => $text);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->score_readability: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text to score for readability. | 

### Return type

[**ScoreReadability200Response**](ScoreReadability200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **score_text**
> ScoreText200Response score_text(title => $title, text => $text)

Score Text

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
    my $result = $api_instance->score_text(title => $title, text => $text);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->score_text: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **string**| The title of the text to score. | 
 **text** | **string**| The text to score for multiple metrics. | 

### Return type

[**ScoreText200Response**](ScoreText200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **singularize_word**
> SingularizeWord200Response singularize_word(word => $word)

Singularize Word

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
    my $result = $api_instance->singularize_word(word => $word);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->singularize_word: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **word** | **string**| The (noun) word for which the singular form should be found. | 

### Return type

[**SingularizeWord200Response**](SingularizeWord200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **text_stemming**
> TextStemming200Response text_stemming(text => $text)

Text Stemming

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
    my $result = $api_instance->text_stemming(text => $text);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TextApi->text_stemming: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **string**| The text to be stemmed. | 

### Return type

[**TextStemming200Response**](TextStemming200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

