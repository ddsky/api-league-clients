# \HumorApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate_nonsense_word**](HumorApi.md#generate_nonsense_word) | **GET** /generate-nonsense-word | Generate Nonsense Word
[**random_joke**](HumorApi.md#random_joke) | **GET** /retrieve-random-joke | Random Joke
[**random_meme**](HumorApi.md#random_meme) | **GET** /retrieve-random-meme | Random Meme
[**search_gifs**](HumorApi.md#search_gifs) | **GET** /search-gifs | Search Gifs
[**search_jokes**](HumorApi.md#search_jokes) | **GET** /search-jokes | Search Jokes
[**search_memes**](HumorApi.md#search_memes) | **GET** /search-memes | Search Memes



## generate_nonsense_word

> models::GenerateNonsenseWord200Response generate_nonsense_word()
Generate Nonsense Word

Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::GenerateNonsenseWord200Response**](generateNonsenseWord_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## random_joke

> models::SearchJokes200ResponseJokesInner random_joke(include_tags, exclude_tags, min_rating, max_length)
Random Joke

This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**include_tags** | Option<**String**> | A comma-separated list of tags the jokes should have. |  |
**exclude_tags** | Option<**String**> | A comma-separated list of tags the jokes must not have. |  |
**min_rating** | Option<**f64**> | The minimum rating in range [0.0,1.0] of the jokes. |  |
**max_length** | Option<**i32**> | The maximum length of the joke in letters. |  |

### Return type

[**models::SearchJokes200ResponseJokesInner**](searchJokes_200_response_jokes_inner.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## random_meme

> models::RandomMeme200Response random_meme(keywords, keywords_in_image, media_type, min_rating, max_age_days)
Random Meme

Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**keywords** | Option<**String**> | A comma-separated list of words that must occur in the meme. |  |
**keywords_in_image** | Option<**bool**> | Whether the keywords must occur in the image. |  |
**media_type** | Option<**String**> | The media type (either 'image', 'video' or even specific format such as 'jpg', 'png', or 'gif'). |  |
**min_rating** | Option<**f64**> | The minimum rating in range [0.0,1.0] of the meme. |  |
**max_age_days** | Option<**i32**> | The maximum age of the meme in days. |  |

### Return type

[**models::RandomMeme200Response**](randomMeme_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_gifs

> models::SearchGifs200Response search_gifs(query, number)
Search Gifs

Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | **String** | The search query. | [required] |
**number** | Option<**i32**> | The number of gifs to return in range [1,10] |  |

### Return type

[**models::SearchGifs200Response**](searchGifs_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_jokes

> models::SearchJokes200Response search_jokes(keywords, include_tags, exclude_tags, min_rating, max_length, offset, number)
Search Jokes

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

[**models::SearchJokes200Response**](searchJokes_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_memes

> models::SearchMemes200Response search_memes(keywords, keywords_in_image, media_type, min_rating, max_age_days, offset, number)
Search Memes

With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings.

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

[**models::SearchMemes200Response**](searchMemes_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

