# \BooksApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_similar_books**](BooksApi.md#find_similar_books) | **GET** /list-similar-books | Find Similar Books
[**search_books**](BooksApi.md#search_books) | **GET** /search-books | Search Books



## find_similar_books

> models::FindSimilarBooks200Response find_similar_books(id, number)
Find Similar Books

Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | The id of the book to which similar books should be found. | [required] |
**number** | Option<**i32**> | The number of similar books to return in range [1,100] |  |

### Return type

[**models::FindSimilarBooks200Response**](findSimilarBooks_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_books

> models::SearchBooks200Response search_books(query, earliest_publish_year, latest_publish_year, min_rating, max_rating, genres, authors, isbn, oclc, sort, sort_direction, group_results, offset, number)
Search Books

Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**query** | Option<**String**> | The search query. |  |
**earliest_publish_year** | Option<**i32**> | The books must have been published after this year. |  |
**latest_publish_year** | Option<**i32**> | The books must have been published before this year. |  |
**min_rating** | Option<**f64**> | The minimum rating the book must have gotten in the interval [0,1]. |  |
**max_rating** | Option<**f64**> | The maximum rating the book must have gotten in the interval [0,1]. |  |
**genres** | Option<**String**> | A comma-separated list of genres. Only books from any of the given genres will be returned. |  |
**authors** | Option<**String**> | A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate. |  |
**isbn** | Option<**String**> | Only the book matching the ISBN-13 will be returned |  |
**oclc** | Option<**String**> | Only the book matching the OCLC will be returned |  |
**sort** | Option<**String**> | The sorting criteria (publish-date or rating). |  |
**sort_direction** | Option<**String**> | Whether to sort ascending or descending (ASC or DESC). |  |
**group_results** | Option<**bool**> | Whether to group similar editions of the same book. |  |
**offset** | Option<**i32**> | The number of books to skip in range [0,1000] |  |
**number** | Option<**i32**> | The number of books to return in range [1,100] |  |

### Return type

[**models::SearchBooks200Response**](searchBooks_200_response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

