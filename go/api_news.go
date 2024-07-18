/*
API League

API League is a Hub for World Class APIs.

API version: 1.5.0
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


// NewsAPIService NewsAPI service
type NewsAPIService service

type ApiExtractNewsRequest struct {
	ctx context.Context
	ApiService *NewsAPIService
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

func (r ApiExtractNewsRequest) Execute() (*ExtractNews200Response, *http.Response, error) {
	return r.ApiService.ExtractNewsExecute(r)
}

/*
ExtractNews Extract News

Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiExtractNewsRequest
*/
func (a *NewsAPIService) ExtractNews(ctx context.Context) ApiExtractNewsRequest {
	return ApiExtractNewsRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return ExtractNews200Response
func (a *NewsAPIService) ExtractNewsExecute(r ApiExtractNewsRequest) (*ExtractNews200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *ExtractNews200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "NewsAPIService.ExtractNews")
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

	parameterAddToHeaderOrQuery(localVarQueryParams, "url", r.url, "")
	parameterAddToHeaderOrQuery(localVarQueryParams, "analyze", r.analyze, "")
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

type ApiSearchNewsRequest struct {
	ctx context.Context
	ApiService *NewsAPIService
	text *string
	sourceCountries *string
	language *string
	minSentiment *float64
	maxSentiment *float64
	earliestPublishDate *string
	latestPublishDate *string
	newsSources *string
	authors *string
	categories *string
	entities *string
	locationFilter *string
	sort *string
	sortDirection *string
	offset *int32
	number *int32
}

// The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
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

// A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other.
func (r ApiSearchNewsRequest) Categories(categories string) ApiSearchNewsRequest {
	r.categories = &categories
	return r
}

// Filter news by entities (ORG, PER, or LOC).
func (r ApiSearchNewsRequest) Entities(entities string) ApiSearchNewsRequest {
	r.entities = &entities
	return r
}

// Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;
func (r ApiSearchNewsRequest) LocationFilter(locationFilter string) ApiSearchNewsRequest {
	r.locationFilter = &locationFilter
	return r
}

// The sorting criteria (publish-time).
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

func (r ApiSearchNewsRequest) Execute() (*SearchNews200Response, *http.Response, error) {
	return r.ApiService.SearchNewsExecute(r)
}

/*
SearchNews Search News

Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiSearchNewsRequest
*/
func (a *NewsAPIService) SearchNews(ctx context.Context) ApiSearchNewsRequest {
	return ApiSearchNewsRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return SearchNews200Response
func (a *NewsAPIService) SearchNewsExecute(r ApiSearchNewsRequest) (*SearchNews200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *SearchNews200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "NewsAPIService.SearchNews")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/search-news"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.text != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "text", r.text, "")
	}
	if r.sourceCountries != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "source-countries", r.sourceCountries, "")
	}
	if r.language != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "language", r.language, "")
	}
	if r.minSentiment != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "min-sentiment", r.minSentiment, "")
	}
	if r.maxSentiment != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "max-sentiment", r.maxSentiment, "")
	}
	if r.earliestPublishDate != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "earliest-publish-date", r.earliestPublishDate, "")
	}
	if r.latestPublishDate != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "latest-publish-date", r.latestPublishDate, "")
	}
	if r.newsSources != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "news-sources", r.newsSources, "")
	}
	if r.authors != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "authors", r.authors, "")
	}
	if r.categories != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "categories", r.categories, "")
	}
	if r.entities != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "entities", r.entities, "")
	}
	if r.locationFilter != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "location-filter", r.locationFilter, "")
	}
	if r.sort != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "sort", r.sort, "")
	}
	if r.sortDirection != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "sort-direction", r.sortDirection, "")
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

type ApiTopNewsRequest struct {
	ctx context.Context
	ApiService *NewsAPIService
	sourceCountry *string
	language *string
	date *string
	headlinesOnly *bool
}

// The ISO 3166 country code of the country for which top news should be retrieved.
func (r ApiTopNewsRequest) SourceCountry(sourceCountry string) ApiTopNewsRequest {
	r.sourceCountry = &sourceCountry
	return r
}

// The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
func (r ApiTopNewsRequest) Language(language string) ApiTopNewsRequest {
	r.language = &language
	return r
}

// The date for which the top news should be retrieved. If no date is given, the current day is assumed.
func (r ApiTopNewsRequest) Date(date string) ApiTopNewsRequest {
	r.date = &date
	return r
}

// Whether to only return basic information such as id, title, and url of the news.
func (r ApiTopNewsRequest) HeadlinesOnly(headlinesOnly bool) ApiTopNewsRequest {
	r.headlinesOnly = &headlinesOnly
	return r
}

func (r ApiTopNewsRequest) Execute() (*TopNews200Response, *http.Response, error) {
	return r.ApiService.TopNewsExecute(r)
}

/*
TopNews Top News

Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiTopNewsRequest
*/
func (a *NewsAPIService) TopNews(ctx context.Context) ApiTopNewsRequest {
	return ApiTopNewsRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return TopNews200Response
func (a *NewsAPIService) TopNewsExecute(r ApiTopNewsRequest) (*TopNews200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *TopNews200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "NewsAPIService.TopNews")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/retrieve-top-news"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}
	if r.sourceCountry == nil {
		return localVarReturnValue, nil, reportError("sourceCountry is required and must be specified")
	}
	if strlen(*r.sourceCountry) > 2 {
		return localVarReturnValue, nil, reportError("sourceCountry must have less than 2 elements")
	}
	if r.language == nil {
		return localVarReturnValue, nil, reportError("language is required and must be specified")
	}
	if strlen(*r.language) > 2 {
		return localVarReturnValue, nil, reportError("language must have less than 2 elements")
	}

	parameterAddToHeaderOrQuery(localVarQueryParams, "source-country", r.sourceCountry, "")
	parameterAddToHeaderOrQuery(localVarQueryParams, "language", r.language, "")
	if r.date != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "date", r.date, "")
	}
	if r.headlinesOnly != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "headlines-only", r.headlinesOnly, "")
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
