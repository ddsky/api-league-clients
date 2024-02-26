/*
API League

API League is a Hub for World Class APIs.

API version: 1.0
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"bytes"
	"context"
	"io/ioutil"
	"net/http"
	"net/url"
	"strings"
)

// Linger please
var (
	_ context.Context
)

// BooksApiService BooksApi service
type BooksApiService service

type ApiFindSimilarBooksRequest struct {
	ctx context.Context
	ApiService *BooksApiService
	id int32
	number *int32
}

// The number of similar books to return in range [1,100]
func (r ApiFindSimilarBooksRequest) Number(number int32) ApiFindSimilarBooksRequest {
	r.number = &number
	return r
}

func (r ApiFindSimilarBooksRequest) Execute() (*InlineResponse2001, *http.Response, error) {
	return r.ApiService.FindSimilarBooksExecute(r)
}

/*
FindSimilarBooks Find Similar Books

Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param id The id of the book to which similar books should be found.
 @return ApiFindSimilarBooksRequest
*/
func (a *BooksApiService) FindSimilarBooks(ctx context.Context, id int32) ApiFindSimilarBooksRequest {
	return ApiFindSimilarBooksRequest{
		ApiService: a,
		ctx: ctx,
		id: id,
	}
}

// Execute executes the request
//  @return InlineResponse2001
func (a *BooksApiService) FindSimilarBooksExecute(r ApiFindSimilarBooksRequest) (*InlineResponse2001, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *InlineResponse2001
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "BooksApiService.FindSimilarBooks")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/list-similar-books"
	localVarPath = strings.Replace(localVarPath, "{"+"id"+"}", url.PathEscape(parameterToString(r.id, "")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}
	if r.id < 0 {
		return localVarReturnValue, nil, reportError("id must be greater than 0")
	}
	if r.id > 999999999 {
		return localVarReturnValue, nil, reportError("id must be less than 999999999")
	}

	if r.number != nil {
		localVarQueryParams.Add("number", parameterToString(*r.number, ""))
	}
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"application/json"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["apiKey"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + " " + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarQueryParams.Add("api-key", key)
			}
		}
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["headerApiKey"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + " " + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarHeaderParams["x-api-key"] = key
			}
		}
	}
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return localVarReturnValue, nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	localVarBody, err := ioutil.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = ioutil.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	err = a.client.decode(&localVarReturnValue, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
	if err != nil {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: err.Error(),
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	return localVarReturnValue, localVarHTTPResponse, nil
}

type ApiSearchBooksRequest struct {
	ctx context.Context
	ApiService *BooksApiService
	query *string
	earliestPublishYear *int32
	latestPublishYear *int32
	minRating *float64
	maxRating *float64
	genres *string
	authors *string
	isbn *string
	oclc *string
	sort *string
	sortDirection *string
	groupResults *bool
	offset *int32
	number *int32
}

// The search query.
func (r ApiSearchBooksRequest) Query(query string) ApiSearchBooksRequest {
	r.query = &query
	return r
}
// The books must have been published after this year.
func (r ApiSearchBooksRequest) EarliestPublishYear(earliestPublishYear int32) ApiSearchBooksRequest {
	r.earliestPublishYear = &earliestPublishYear
	return r
}
// The books must have been published before this year.
func (r ApiSearchBooksRequest) LatestPublishYear(latestPublishYear int32) ApiSearchBooksRequest {
	r.latestPublishYear = &latestPublishYear
	return r
}
// The minimum rating the book must have gotten in the interval [0,1].
func (r ApiSearchBooksRequest) MinRating(minRating float64) ApiSearchBooksRequest {
	r.minRating = &minRating
	return r
}
// The maximum rating the book must have gotten in the interval [0,1].
func (r ApiSearchBooksRequest) MaxRating(maxRating float64) ApiSearchBooksRequest {
	r.maxRating = &maxRating
	return r
}
// A comma-separated list of  genres. Only books from any of the given genres will be returned.
func (r ApiSearchBooksRequest) Genres(genres string) ApiSearchBooksRequest {
	r.genres = &genres
	return r
}
// A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate.
func (r ApiSearchBooksRequest) Authors(authors string) ApiSearchBooksRequest {
	r.authors = &authors
	return r
}
// Only the book matching the ISBN-13 will be returned
func (r ApiSearchBooksRequest) Isbn(isbn string) ApiSearchBooksRequest {
	r.isbn = &isbn
	return r
}
// Only the book matching the OCLC will be returned
func (r ApiSearchBooksRequest) Oclc(oclc string) ApiSearchBooksRequest {
	r.oclc = &oclc
	return r
}
// The sorting criteria (publish-date or rating).
func (r ApiSearchBooksRequest) Sort(sort string) ApiSearchBooksRequest {
	r.sort = &sort
	return r
}
// Whether to sort ascending or descending (ASC or DESC).
func (r ApiSearchBooksRequest) SortDirection(sortDirection string) ApiSearchBooksRequest {
	r.sortDirection = &sortDirection
	return r
}
// Whether to group similar editions of the same book.
func (r ApiSearchBooksRequest) GroupResults(groupResults bool) ApiSearchBooksRequest {
	r.groupResults = &groupResults
	return r
}
// The number of books to skip in range [0,1000]
func (r ApiSearchBooksRequest) Offset(offset int32) ApiSearchBooksRequest {
	r.offset = &offset
	return r
}
// The number of books to return in range [1,100]
func (r ApiSearchBooksRequest) Number(number int32) ApiSearchBooksRequest {
	r.number = &number
	return r
}

func (r ApiSearchBooksRequest) Execute() (*InlineResponse200, *http.Response, error) {
	return r.ApiService.SearchBooksExecute(r)
}

/*
SearchBooks Search Books

Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for "books about dogs" and will automatically also find books about "border collies" and other types without specifying them in the query.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiSearchBooksRequest
*/
func (a *BooksApiService) SearchBooks(ctx context.Context) ApiSearchBooksRequest {
	return ApiSearchBooksRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return InlineResponse200
func (a *BooksApiService) SearchBooksExecute(r ApiSearchBooksRequest) (*InlineResponse200, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *InlineResponse200
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "BooksApiService.SearchBooks")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/search-books"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.query != nil {
		localVarQueryParams.Add("query", parameterToString(*r.query, ""))
	}
	if r.earliestPublishYear != nil {
		localVarQueryParams.Add("earliest-publish-year", parameterToString(*r.earliestPublishYear, ""))
	}
	if r.latestPublishYear != nil {
		localVarQueryParams.Add("latest-publish-year", parameterToString(*r.latestPublishYear, ""))
	}
	if r.minRating != nil {
		localVarQueryParams.Add("min-rating", parameterToString(*r.minRating, ""))
	}
	if r.maxRating != nil {
		localVarQueryParams.Add("max-rating", parameterToString(*r.maxRating, ""))
	}
	if r.genres != nil {
		localVarQueryParams.Add("genres", parameterToString(*r.genres, ""))
	}
	if r.authors != nil {
		localVarQueryParams.Add("authors", parameterToString(*r.authors, ""))
	}
	if r.isbn != nil {
		localVarQueryParams.Add("isbn", parameterToString(*r.isbn, ""))
	}
	if r.oclc != nil {
		localVarQueryParams.Add("oclc", parameterToString(*r.oclc, ""))
	}
	if r.sort != nil {
		localVarQueryParams.Add("sort", parameterToString(*r.sort, ""))
	}
	if r.sortDirection != nil {
		localVarQueryParams.Add("sort-direction", parameterToString(*r.sortDirection, ""))
	}
	if r.groupResults != nil {
		localVarQueryParams.Add("group-results", parameterToString(*r.groupResults, ""))
	}
	if r.offset != nil {
		localVarQueryParams.Add("offset", parameterToString(*r.offset, ""))
	}
	if r.number != nil {
		localVarQueryParams.Add("number", parameterToString(*r.number, ""))
	}
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"application/json"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["apiKey"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + " " + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarQueryParams.Add("api-key", key)
			}
		}
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["headerApiKey"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + " " + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarHeaderParams["x-api-key"] = key
			}
		}
	}
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return localVarReturnValue, nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	localVarBody, err := ioutil.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = ioutil.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	err = a.client.decode(&localVarReturnValue, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
	if err != nil {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: err.Error(),
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	return localVarReturnValue, localVarHTTPResponse, nil
}
