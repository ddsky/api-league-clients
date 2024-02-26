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
)

// Linger please
var (
	_ context.Context
)

// NewsApiService NewsApi service
type NewsApiService service

type ApiExtractNewsRequest struct {
	ctx context.Context
	ApiService *NewsApiService
	url *string
	analyze *bool
}

// The url of the news.
func (r ApiExtractNewsRequest) Url(url string) ApiExtractNewsRequest {
	r.url = &url
	return r
}
// Whether to analyze the news (extract entities etc.)
func (r ApiExtractNewsRequest) Analyze(analyze bool) ApiExtractNewsRequest {
	r.analyze = &analyze
	return r
}

func (r ApiExtractNewsRequest) Execute() (*InlineResponse2003, *http.Response, error) {
	return r.ApiService.ExtractNewsExecute(r)
}

/*
ExtractNews Extract News

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiExtractNewsRequest
*/
func (a *NewsApiService) ExtractNews(ctx context.Context) ApiExtractNewsRequest {
	return ApiExtractNewsRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return InlineResponse2003
func (a *NewsApiService) ExtractNewsExecute(r ApiExtractNewsRequest) (*InlineResponse2003, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *InlineResponse2003
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "NewsApiService.ExtractNews")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/extract-news"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}
	if r.url == nil {
		return localVarReturnValue, nil, reportError("url is required and must be specified")
	}
	if strlen(*r.url) > 1000 {
		return localVarReturnValue, nil, reportError("url must have less than 1000 elements")
	}
	if r.analyze == nil {
		return localVarReturnValue, nil, reportError("analyze is required and must be specified")
	}

	localVarQueryParams.Add("url", parameterToString(*r.url, ""))
	localVarQueryParams.Add("analyze", parameterToString(*r.analyze, ""))
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

type ApiSearchNewsRequest struct {
	ctx context.Context
	ApiService *NewsApiService
	text *string
	sourceCountries *string
	language *string
	minSentiment *float64
	maxSentiment *float64
	earliestPublishDate *string
	latestPublishDate *string
	newsSources *string
	authors *string
	entities *string
	locationFilter *string
	sort *string
	sortDirection *string
	offset *int32
	number *int32
}

// The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
func (r ApiSearchNewsRequest) Text(text string) ApiSearchNewsRequest {
	r.text = &text
	return r
}
// A comma-separated list of ISO 3166 country codes from which the news should originate.
func (r ApiSearchNewsRequest) SourceCountries(sourceCountries string) ApiSearchNewsRequest {
	r.sourceCountries = &sourceCountries
	return r
}
// The ISO 6391 language code of the news.
func (r ApiSearchNewsRequest) Language(language string) ApiSearchNewsRequest {
	r.language = &language
	return r
}
// The minimal sentiment of the news in range [-1,1].
func (r ApiSearchNewsRequest) MinSentiment(minSentiment float64) ApiSearchNewsRequest {
	r.minSentiment = &minSentiment
	return r
}
// The maximal sentiment of the news in range [-1,1].
func (r ApiSearchNewsRequest) MaxSentiment(maxSentiment float64) ApiSearchNewsRequest {
	r.maxSentiment = &maxSentiment
	return r
}
// The news must have been published after this date.
func (r ApiSearchNewsRequest) EarliestPublishDate(earliestPublishDate string) ApiSearchNewsRequest {
	r.earliestPublishDate = &earliestPublishDate
	return r
}
// The news must have been published before this date.
func (r ApiSearchNewsRequest) LatestPublishDate(latestPublishDate string) ApiSearchNewsRequest {
	r.latestPublishDate = &latestPublishDate
	return r
}
// A comma-separated list of news sources from which the news should originate.
func (r ApiSearchNewsRequest) NewsSources(newsSources string) ApiSearchNewsRequest {
	r.newsSources = &newsSources
	return r
}
// A comma-separated list of author names. Only news from any of the given authors will be returned.
func (r ApiSearchNewsRequest) Authors(authors string) ApiSearchNewsRequest {
	r.authors = &authors
	return r
}
// Filter news by entities (see semantic types).
func (r ApiSearchNewsRequest) Entities(entities string) ApiSearchNewsRequest {
	r.entities = &entities
	return r
}
// Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;
func (r ApiSearchNewsRequest) LocationFilter(locationFilter string) ApiSearchNewsRequest {
	r.locationFilter = &locationFilter
	return r
}
// The sorting criteria (publish-time or sentiment).
func (r ApiSearchNewsRequest) Sort(sort string) ApiSearchNewsRequest {
	r.sort = &sort
	return r
}
// Whether to sort ascending or descending (ASC or DESC).
func (r ApiSearchNewsRequest) SortDirection(sortDirection string) ApiSearchNewsRequest {
	r.sortDirection = &sortDirection
	return r
}
// The number of news to skip in range [0,10000]
func (r ApiSearchNewsRequest) Offset(offset int32) ApiSearchNewsRequest {
	r.offset = &offset
	return r
}
// The number of news to return in range [1,100]
func (r ApiSearchNewsRequest) Number(number int32) ApiSearchNewsRequest {
	r.number = &number
	return r
}

func (r ApiSearchNewsRequest) Execute() (*InlineResponse2002, *http.Response, error) {
	return r.ApiService.SearchNewsExecute(r)
}

/*
SearchNews Search News

Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiSearchNewsRequest
*/
func (a *NewsApiService) SearchNews(ctx context.Context) ApiSearchNewsRequest {
	return ApiSearchNewsRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return InlineResponse2002
func (a *NewsApiService) SearchNewsExecute(r ApiSearchNewsRequest) (*InlineResponse2002, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *InlineResponse2002
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "NewsApiService.SearchNews")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/search-news"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.text != nil {
		localVarQueryParams.Add("text", parameterToString(*r.text, ""))
	}
	if r.sourceCountries != nil {
		localVarQueryParams.Add("source-countries", parameterToString(*r.sourceCountries, ""))
	}
	if r.language != nil {
		localVarQueryParams.Add("language", parameterToString(*r.language, ""))
	}
	if r.minSentiment != nil {
		localVarQueryParams.Add("min-sentiment", parameterToString(*r.minSentiment, ""))
	}
	if r.maxSentiment != nil {
		localVarQueryParams.Add("max-sentiment", parameterToString(*r.maxSentiment, ""))
	}
	if r.earliestPublishDate != nil {
		localVarQueryParams.Add("earliest-publish-date", parameterToString(*r.earliestPublishDate, ""))
	}
	if r.latestPublishDate != nil {
		localVarQueryParams.Add("latest-publish-date", parameterToString(*r.latestPublishDate, ""))
	}
	if r.newsSources != nil {
		localVarQueryParams.Add("news-sources", parameterToString(*r.newsSources, ""))
	}
	if r.authors != nil {
		localVarQueryParams.Add("authors", parameterToString(*r.authors, ""))
	}
	if r.entities != nil {
		localVarQueryParams.Add("entities", parameterToString(*r.entities, ""))
	}
	if r.locationFilter != nil {
		localVarQueryParams.Add("location-filter", parameterToString(*r.locationFilter, ""))
	}
	if r.sort != nil {
		localVarQueryParams.Add("sort", parameterToString(*r.sort, ""))
	}
	if r.sortDirection != nil {
		localVarQueryParams.Add("sort-direction", parameterToString(*r.sortDirection, ""))
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
