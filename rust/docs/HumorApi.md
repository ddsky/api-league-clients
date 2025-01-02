# \HumorApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate_nonsense_word_api**](HumorApi.md#generate_nonsense_word_api) | **GET** /generate-nonsense-word | Generate Nonsense Word API
[**random_joke_api**](HumorApi.md#random_joke_api) | **GET** /retrieve-random-joke | Random Joke API
[**random_meme_api**](HumorApi.md#random_meme_api) | **GET** /retrieve-random-meme | Random Meme API
[**search_gifs_api**](HumorApi.md#search_gifs_api) | **GET** /search-gifs | Search Gifs API
[**search_jokes_api**](HumorApi.md#search_jokes_api) | **GET** /search-jokes | Search Jokes API
[**search_memes_api**](HumorApi.md#search_memes_api) | **GET** /search-memes | Search Memes API



## generate_nonsense_word_api

> models::GenerateNonsenseWordApi200Response generate_nonsense_word_api()
Generate Nonsense Word API

Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::GenerateNonsenseWordApi200Response**](generateNonsenseWordAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## random_joke_api

> models::SearchJokesApi200ResponseJokesInner random_joke_api(include_tags, exclude_tags, min_rating, max_length)
Random Joke API

This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**include_tags** | Option<**String**> | A comma-separated list of tags the jokes should have. |  |
**exclude_tags** | Option<**String**> | A comma-separated list of tags the jokes must not have. |  |
**min_rating** | Option<**f64**> | The minimum rating in range [0.0,1.0] of the jokes. |  |
**max_length** | Option<**i32**> | The maximum length of the joke in letters. |  |

### Return type

[**models::SearchJokesApi200ResponseJokesInner**](searchJokesAPI_200_response_jokes_inner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## random_meme_api

> models::RandomMemeApi200Response random_meme_api(keywords, keywords_in_image, media_type, min_rating, max_age_days)
Random Meme API

Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**keywords** | Option<**String**> | A comma-separated list of words that must occur in the meme. |  |
**keywords_in_image** | Option<**bool**> | Whether the keywords must occur in the image. |  |
**media_type** | Option<**String**> | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif'). |  |
**min_rating** | Option<**f64**> | The minimum rating in range [0.0,1.0] of the meme. |  |
**max_age_days** | Option<**i32**> | The maximum age of the meme in days. |  |

### Return type

[**models::RandomMemeApi200Response**](randomMemeAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_gifs_api

> models::SearchGifsApi200Response search_gifs_api(query, number)
Search Gifs API

Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | **String** | The search query. | [required] |
**number** | Option<**i32**> | The number of gifs to return in range [1,10] |  |

### Return type

[**models::SearchGifsApi200Response**](searchGifsAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_jokes_api

> models::SearchJokesApi200Response search_jokes_api(keywords, include_tags, exclude_tags, min_rating, max_length, offset, number)
Search Jokes API

With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**keywords** | Option<**String**> | A comma-separated list of words that must occur in the joke. |  |
**include_tags** | Option<**String**> | A comma-separated list of tags the jokes should have. |  |
**exclude_tags** | Option<**String**> | A comma-separated list of tags the jokes must not have. |  |
**min_rating** | Option<**f64**> | The minimum rating in range [0.0,1.0] of the jokes. |  |
**max_length** | Option<**f64**> | The maximum length of the joke in letters. |  |
**offset** | Option<**i32**> | The number of jokes to skip, between 0 and 1000. |  |
**number** | Option<**i32**> | The number of jokes, between 1 and 10. |  |

### Return type

[**models::SearchJokesApi200Response**](searchJokesAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_memes_api

> models::SearchMemesApi200Response search_memes_api(keywords, keywords_in_image, media_type, min_rating, max_age_days, offset, number)
Search Memes API

Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You'll surely find something funny.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**keywords** | Option<**String**> | A comma-separated list of words that must occur in the meme. |  |
**keywords_in_image** | Option<**bool**> | Whether the keywords must occur in the image. |  |
**media_type** | Option<**String**> | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif'). |  |
**min_rating** | Option<**f64**> | The minimum rating in range [0.0,1.0] of the meme. |  |
**max_age_days** | Option<**i32**> | The maximum age of the meme in days. |  |
**offset** | Option<**i32**> | The number of memes to skip, between 0 and 1000. |  |
**number** | Option<**i32**> | The number of memes, between 1 and 10. |  |

### Return type

[**models::SearchMemesApi200Response**](searchMemesAPI_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

