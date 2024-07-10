/*
API League

API League is a Hub for World Class APIs.

API version: 1.4.0
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"bytes"
	"context"
	"io"
	"net/http"
	"net/url"
)


// HumorAPIService HumorAPI service
type HumorAPIService service

type ApiGenerateNonsenseWordRequest struct {
	ctx context.Context
	ApiService *HumorAPIService
}

func (r ApiGenerateNonsenseWordRequest) Execute() (*GenerateNonsenseWord200Response, *http.Response, error) {
	return r.ApiService.GenerateNonsenseWordExecute(r)
}

/*
GenerateNonsenseWord Generate Nonsense Word

Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiGenerateNonsenseWordRequest
*/
func (a *HumorAPIService) GenerateNonsenseWord(ctx context.Context) ApiGenerateNonsenseWordRequest {
	return ApiGenerateNonsenseWordRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return GenerateNonsenseWord200Response
func (a *HumorAPIService) GenerateNonsenseWordExecute(r ApiGenerateNonsenseWordRequest) (*GenerateNonsenseWord200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *GenerateNonsenseWord200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "HumorAPIService.GenerateNonsenseWord")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/generate-nonsense-word"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

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

	localVarBody, err := io.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = io.NopCloser(bytes.NewBuffer(localVarBody))
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

type ApiRandomJokeRequest struct {
	ctx context.Context
	ApiService *HumorAPIService
	includeTags *string
	excludeTags *string
	minRating *float64
	maxLength *int32
}

// A comma-separated list of tags the jokes should have.
func (r ApiRandomJokeRequest) IncludeTags(includeTags string) ApiRandomJokeRequest {
	r.includeTags = &includeTags
	return r
}

// A comma-separated list of tags the jokes must not have.
func (r ApiRandomJokeRequest) ExcludeTags(excludeTags string) ApiRandomJokeRequest {
	r.excludeTags = &excludeTags
	return r
}

// The minimum rating in range [0.0,1.0] of the jokes.
func (r ApiRandomJokeRequest) MinRating(minRating float64) ApiRandomJokeRequest {
	r.minRating = &minRating
	return r
}

// The maximum length of the joke in letters.
func (r ApiRandomJokeRequest) MaxLength(maxLength int32) ApiRandomJokeRequest {
	r.maxLength = &maxLength
	return r
}

func (r ApiRandomJokeRequest) Execute() (*SearchJokes200ResponseJokesInner, *http.Response, error) {
	return r.ApiService.RandomJokeExecute(r)
}

/*
RandomJoke Random Joke

This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as "nsfw" or "religious".

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiRandomJokeRequest
*/
func (a *HumorAPIService) RandomJoke(ctx context.Context) ApiRandomJokeRequest {
	return ApiRandomJokeRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return SearchJokes200ResponseJokesInner
func (a *HumorAPIService) RandomJokeExecute(r ApiRandomJokeRequest) (*SearchJokes200ResponseJokesInner, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *SearchJokes200ResponseJokesInner
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "HumorAPIService.RandomJoke")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/retrieve-random-joke"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.includeTags != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "include-tags", r.includeTags, "")
	}
	if r.excludeTags != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "exclude-tags", r.excludeTags, "")
	}
	if r.minRating != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "min-rating", r.minRating, "")
	}
	if r.maxLength != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "max-length", r.maxLength, "")
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

	localVarBody, err := io.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = io.NopCloser(bytes.NewBuffer(localVarBody))
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

type ApiRandomMemeRequest struct {
	ctx context.Context
	ApiService *HumorAPIService
	keywords *string
	keywordsInImage *bool
	mediaType *string
	minRating *float64
	maxAgeDays *int32
}

// A comma-separated list of words that must occur in the meme.
func (r ApiRandomMemeRequest) Keywords(keywords string) ApiRandomMemeRequest {
	r.keywords = &keywords
	return r
}

// Whether the keywords must occur in the image.
func (r ApiRandomMemeRequest) KeywordsInImage(keywordsInImage bool) ApiRandomMemeRequest {
	r.keywordsInImage = &keywordsInImage
	return r
}

// The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;).
func (r ApiRandomMemeRequest) MediaType(mediaType string) ApiRandomMemeRequest {
	r.mediaType = &mediaType
	return r
}

// The minimum rating in range [0.0,1.0] of the meme.
func (r ApiRandomMemeRequest) MinRating(minRating float64) ApiRandomMemeRequest {
	r.minRating = &minRating
	return r
}

// The maximum age of the meme in days.
func (r ApiRandomMemeRequest) MaxAgeDays(maxAgeDays int32) ApiRandomMemeRequest {
	r.maxAgeDays = &maxAgeDays
	return r
}

func (r ApiRandomMemeRequest) Execute() (*RandomMeme200Response, *http.Response, error) {
	return r.ApiService.RandomMemeExecute(r)
}

/*
RandomMeme Random Meme

Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiRandomMemeRequest
*/
func (a *HumorAPIService) RandomMeme(ctx context.Context) ApiRandomMemeRequest {
	return ApiRandomMemeRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return RandomMeme200Response
func (a *HumorAPIService) RandomMemeExecute(r ApiRandomMemeRequest) (*RandomMeme200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *RandomMeme200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "HumorAPIService.RandomMeme")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/retrieve-random-meme"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.keywords != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "keywords", r.keywords, "")
	}
	if r.keywordsInImage != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "keywords-in-image", r.keywordsInImage, "")
	}
	if r.mediaType != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "media-type", r.mediaType, "")
	}
	if r.minRating != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "min-rating", r.minRating, "")
	}
	if r.maxAgeDays != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "max-age-days", r.maxAgeDays, "")
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

	localVarBody, err := io.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = io.NopCloser(bytes.NewBuffer(localVarBody))
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

type ApiSearchGifsRequest struct {
	ctx context.Context
	ApiService *HumorAPIService
	query *string
	number *int32
}

// The search query.
func (r ApiSearchGifsRequest) Query(query string) ApiSearchGifsRequest {
	r.query = &query
	return r
}

// The number of gifs to return in range [1,10]
func (r ApiSearchGifsRequest) Number(number int32) ApiSearchGifsRequest {
	r.number = &number
	return r
}

func (r ApiSearchGifsRequest) Execute() (*SearchGifs200Response, *http.Response, error) {
	return r.ApiService.SearchGifsExecute(r)
}

/*
SearchGifs Search Gifs

Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiSearchGifsRequest
*/
func (a *HumorAPIService) SearchGifs(ctx context.Context) ApiSearchGifsRequest {
	return ApiSearchGifsRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return SearchGifs200Response
func (a *HumorAPIService) SearchGifsExecute(r ApiSearchGifsRequest) (*SearchGifs200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *SearchGifs200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "HumorAPIService.SearchGifs")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/search-gifs"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}
	if r.query == nil {
		return localVarReturnValue, nil, reportError("query is required and must be specified")
	}
	if strlen(*r.query) > 300 {
		return localVarReturnValue, nil, reportError("query must have less than 300 elements")
	}

	parameterAddToHeaderOrQuery(localVarQueryParams, "query", r.query, "")
	if r.number != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "number", r.number, "")
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

	localVarBody, err := io.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = io.NopCloser(bytes.NewBuffer(localVarBody))
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

type ApiSearchJokesRequest struct {
	ctx context.Context
	ApiService *HumorAPIService
	keywords *string
	includeTags *string
	excludeTags *string
	minRating *float64
	maxLength *float64
	offset *int32
	number *int32
}

// A comma-separated list of words that must occur in the joke.
func (r ApiSearchJokesRequest) Keywords(keywords string) ApiSearchJokesRequest {
	r.keywords = &keywords
	return r
}

// A comma-separated list of tags the jokes should have.
func (r ApiSearchJokesRequest) IncludeTags(includeTags string) ApiSearchJokesRequest {
	r.includeTags = &includeTags
	return r
}

// A comma-separated list of tags the jokes must not have.
func (r ApiSearchJokesRequest) ExcludeTags(excludeTags string) ApiSearchJokesRequest {
	r.excludeTags = &excludeTags
	return r
}

// The minimum rating in range [0.0,1.0] of the jokes.
func (r ApiSearchJokesRequest) MinRating(minRating float64) ApiSearchJokesRequest {
	r.minRating = &minRating
	return r
}

// The maximum length of the joke in letters.
func (r ApiSearchJokesRequest) MaxLength(maxLength float64) ApiSearchJokesRequest {
	r.maxLength = &maxLength
	return r
}

// The number of jokes to skip, between 0 and 1000.
func (r ApiSearchJokesRequest) Offset(offset int32) ApiSearchJokesRequest {
	r.offset = &offset
	return r
}

// The number of jokes, between 1 and 10.
func (r ApiSearchJokesRequest) Number(number int32) ApiSearchJokesRequest {
	r.number = &number
	return r
}

func (r ApiSearchJokesRequest) Execute() (*SearchJokes200Response, *http.Response, error) {
	return r.ApiService.SearchJokesExecute(r)
}

/*
SearchJokes Search Jokes

With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiSearchJokesRequest
*/
func (a *HumorAPIService) SearchJokes(ctx context.Context) ApiSearchJokesRequest {
	return ApiSearchJokesRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return SearchJokes200Response
func (a *HumorAPIService) SearchJokesExecute(r ApiSearchJokesRequest) (*SearchJokes200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *SearchJokes200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "HumorAPIService.SearchJokes")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/search-jokes"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.keywords != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "keywords", r.keywords, "")
	}
	if r.includeTags != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "include-tags", r.includeTags, "")
	}
	if r.excludeTags != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "exclude-tags", r.excludeTags, "")
	}
	if r.minRating != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "min-rating", r.minRating, "")
	}
	if r.maxLength != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "max-length", r.maxLength, "")
	}
	if r.offset != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "offset", r.offset, "")
	}
	if r.number != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "number", r.number, "")
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

	localVarBody, err := io.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = io.NopCloser(bytes.NewBuffer(localVarBody))
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

type ApiSearchMemesRequest struct {
	ctx context.Context
	ApiService *HumorAPIService
	keywords *string
	keywordsInImage *bool
	mediaType *string
	minRating *float64
	maxAgeDays *int32
	offset *int32
	number *int32
}

// A comma-separated list of words that must occur in the meme.
func (r ApiSearchMemesRequest) Keywords(keywords string) ApiSearchMemesRequest {
	r.keywords = &keywords
	return r
}

// Whether the keywords must occur in the image.
func (r ApiSearchMemesRequest) KeywordsInImage(keywordsInImage bool) ApiSearchMemesRequest {
	r.keywordsInImage = &keywordsInImage
	return r
}

// The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;).
func (r ApiSearchMemesRequest) MediaType(mediaType string) ApiSearchMemesRequest {
	r.mediaType = &mediaType
	return r
}

// The minimum rating in range [0.0,1.0] of the meme.
func (r ApiSearchMemesRequest) MinRating(minRating float64) ApiSearchMemesRequest {
	r.minRating = &minRating
	return r
}

// The maximum age of the meme in days.
func (r ApiSearchMemesRequest) MaxAgeDays(maxAgeDays int32) ApiSearchMemesRequest {
	r.maxAgeDays = &maxAgeDays
	return r
}

// The number of memes to skip, between 0 and 1000.
func (r ApiSearchMemesRequest) Offset(offset int32) ApiSearchMemesRequest {
	r.offset = &offset
	return r
}

// The number of memes, between 1 and 10.
func (r ApiSearchMemesRequest) Number(number int32) ApiSearchMemesRequest {
	r.number = &number
	return r
}

func (r ApiSearchMemesRequest) Execute() (*SearchMemes200Response, *http.Response, error) {
	return r.ApiService.SearchMemesExecute(r)
}

/*
SearchMemes Search Memes

With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiSearchMemesRequest
*/
func (a *HumorAPIService) SearchMemes(ctx context.Context) ApiSearchMemesRequest {
	return ApiSearchMemesRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return SearchMemes200Response
func (a *HumorAPIService) SearchMemesExecute(r ApiSearchMemesRequest) (*SearchMemes200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *SearchMemes200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "HumorAPIService.SearchMemes")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/search-memes"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.keywords != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "keywords", r.keywords, "")
	}
	if r.keywordsInImage != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "keywords-in-image", r.keywordsInImage, "")
	}
	if r.mediaType != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "media-type", r.mediaType, "")
	}
	if r.minRating != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "min-rating", r.minRating, "")
	}
	if r.maxAgeDays != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "max-age-days", r.maxAgeDays, "")
	}
	if r.offset != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "offset", r.offset, "")
	}
	if r.number != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "number", r.number, "")
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

	localVarBody, err := io.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = io.NopCloser(bytes.NewBuffer(localVarBody))
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
