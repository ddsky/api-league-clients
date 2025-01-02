/*
API League

API League is a Hub for World Class APIs.

API version: 1.6.4
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
	"os"
)


// MediaAPIService MediaAPI service
type MediaAPIService service

type ApiDetectMainImageColorAPIRequest struct {
	ctx context.Context
	ApiService *MediaAPIService
	url *string
}

// The url of the image for which the colors should be detected.
func (r ApiDetectMainImageColorAPIRequest) Url(url string) ApiDetectMainImageColorAPIRequest {
	r.url = &url
	return r
}

func (r ApiDetectMainImageColorAPIRequest) Execute() ([]DetectMainImageColorAPI200ResponseInner, *http.Response, error) {
	return r.ApiService.DetectMainImageColorAPIExecute(r)
}

/*
DetectMainImageColorAPI Detect Main Image Color API

Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiDetectMainImageColorAPIRequest
*/
func (a *MediaAPIService) DetectMainImageColorAPI(ctx context.Context) ApiDetectMainImageColorAPIRequest {
	return ApiDetectMainImageColorAPIRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return []DetectMainImageColorAPI200ResponseInner
func (a *MediaAPIService) DetectMainImageColorAPIExecute(r ApiDetectMainImageColorAPIRequest) ([]DetectMainImageColorAPI200ResponseInner, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  []DetectMainImageColorAPI200ResponseInner
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "MediaAPIService.DetectMainImageColorAPI")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/detect-color"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}
	if r.url == nil {
		return localVarReturnValue, nil, reportError("url is required and must be specified")
	}
	if strlen(*r.url) > 1000 {
		return localVarReturnValue, nil, reportError("url must have less than 1000 elements")
	}

	parameterAddToHeaderOrQuery(localVarQueryParams, "url", r.url, "")
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

type ApiRescaleImageAPIRequest struct {
	ctx context.Context
	ApiService *MediaAPIService
	url *string
	width *int32
	height *int32
	crop *bool
}

// The url of the image to be rescaled.
func (r ApiRescaleImageAPIRequest) Url(url string) ApiRescaleImageAPIRequest {
	r.url = &url
	return r
}

// The desired width of the rescaled image.
func (r ApiRescaleImageAPIRequest) Width(width int32) ApiRescaleImageAPIRequest {
	r.width = &width
	return r
}

// The desired height of the rescaled image.
func (r ApiRescaleImageAPIRequest) Height(height int32) ApiRescaleImageAPIRequest {
	r.height = &height
	return r
}

// Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
func (r ApiRescaleImageAPIRequest) Crop(crop bool) ApiRescaleImageAPIRequest {
	r.crop = &crop
	return r
}

func (r ApiRescaleImageAPIRequest) Execute() (*os.File, *http.Response, error) {
	return r.ApiService.RescaleImageAPIExecute(r)
}

/*
RescaleImageAPI Rescale Image API

Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiRescaleImageAPIRequest
*/
func (a *MediaAPIService) RescaleImageAPI(ctx context.Context) ApiRescaleImageAPIRequest {
	return ApiRescaleImageAPIRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return *os.File
func (a *MediaAPIService) RescaleImageAPIExecute(r ApiRescaleImageAPIRequest) (*os.File, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *os.File
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "MediaAPIService.RescaleImageAPI")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/rescale-image"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}
	if r.url == nil {
		return localVarReturnValue, nil, reportError("url is required and must be specified")
	}
	if strlen(*r.url) > 1000 {
		return localVarReturnValue, nil, reportError("url must have less than 1000 elements")
	}
	if r.width == nil {
		return localVarReturnValue, nil, reportError("width is required and must be specified")
	}
	if *r.width < 1 {
		return localVarReturnValue, nil, reportError("width must be greater than 1")
	}
	if *r.width > 5000 {
		return localVarReturnValue, nil, reportError("width must be less than 5000")
	}
	if r.height == nil {
		return localVarReturnValue, nil, reportError("height is required and must be specified")
	}
	if *r.height < 1 {
		return localVarReturnValue, nil, reportError("height must be greater than 1")
	}
	if *r.height > 5000 {
		return localVarReturnValue, nil, reportError("height must be less than 5000")
	}
	if r.crop == nil {
		return localVarReturnValue, nil, reportError("crop is required and must be specified")
	}

	parameterAddToHeaderOrQuery(localVarQueryParams, "url", r.url, "")
	parameterAddToHeaderOrQuery(localVarQueryParams, "width", r.width, "")
	parameterAddToHeaderOrQuery(localVarQueryParams, "height", r.height, "")
	parameterAddToHeaderOrQuery(localVarQueryParams, "crop", r.crop, "")
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"application/octet-stream"}

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

type ApiSearchIconsAPIRequest struct {
	ctx context.Context
	ApiService *MediaAPIService
	query *string
	onlyPublicDomain *bool
	number *int32
}

// The search query.
func (r ApiSearchIconsAPIRequest) Query(query string) ApiSearchIconsAPIRequest {
	r.query = &query
	return r
}

// If true, only public domain icons will be returned.
func (r ApiSearchIconsAPIRequest) OnlyPublicDomain(onlyPublicDomain bool) ApiSearchIconsAPIRequest {
	r.onlyPublicDomain = &onlyPublicDomain
	return r
}

// The number of icons to return in range [1,100]
func (r ApiSearchIconsAPIRequest) Number(number int32) ApiSearchIconsAPIRequest {
	r.number = &number
	return r
}

func (r ApiSearchIconsAPIRequest) Execute() (*SearchIconsAPI200Response, *http.Response, error) {
	return r.ApiService.SearchIconsAPIExecute(r)
}

/*
SearchIconsAPI Search Icons API

Search through millions of icons to match any topic you want.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiSearchIconsAPIRequest
*/
func (a *MediaAPIService) SearchIconsAPI(ctx context.Context) ApiSearchIconsAPIRequest {
	return ApiSearchIconsAPIRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return SearchIconsAPI200Response
func (a *MediaAPIService) SearchIconsAPIExecute(r ApiSearchIconsAPIRequest) (*SearchIconsAPI200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *SearchIconsAPI200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "MediaAPIService.SearchIconsAPI")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/search-icons"

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
	if r.onlyPublicDomain != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "only-public-domain", r.onlyPublicDomain, "")
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

type ApiSearchRoyaltyFreeImagesAPIRequest struct {
	ctx context.Context
	ApiService *MediaAPIService
	query *string
	number *int32
}

// The search query.
func (r ApiSearchRoyaltyFreeImagesAPIRequest) Query(query string) ApiSearchRoyaltyFreeImagesAPIRequest {
	r.query = &query
	return r
}

// The number of images to return in range [1,100]
func (r ApiSearchRoyaltyFreeImagesAPIRequest) Number(number int32) ApiSearchRoyaltyFreeImagesAPIRequest {
	r.number = &number
	return r
}

func (r ApiSearchRoyaltyFreeImagesAPIRequest) Execute() (*SearchRoyaltyFreeImagesAPI200Response, *http.Response, error) {
	return r.ApiService.SearchRoyaltyFreeImagesAPIExecute(r)
}

/*
SearchRoyaltyFreeImagesAPI Search Royalty Free Images API

Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiSearchRoyaltyFreeImagesAPIRequest
*/
func (a *MediaAPIService) SearchRoyaltyFreeImagesAPI(ctx context.Context) ApiSearchRoyaltyFreeImagesAPIRequest {
	return ApiSearchRoyaltyFreeImagesAPIRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return SearchRoyaltyFreeImagesAPI200Response
func (a *MediaAPIService) SearchRoyaltyFreeImagesAPIExecute(r ApiSearchRoyaltyFreeImagesAPIRequest) (*SearchRoyaltyFreeImagesAPI200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *SearchRoyaltyFreeImagesAPI200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "MediaAPIService.SearchRoyaltyFreeImagesAPI")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/search-images"

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

type ApiVectorSearchAPIRequest struct {
	ctx context.Context
	ApiService *MediaAPIService
	query *string
	offset *int32
	number *int32
}

// The search query.
func (r ApiVectorSearchAPIRequest) Query(query string) ApiVectorSearchAPIRequest {
	r.query = &query
	return r
}

// The number of vectors to skip, between 0 and 1000
func (r ApiVectorSearchAPIRequest) Offset(offset int32) ApiVectorSearchAPIRequest {
	r.offset = &offset
	return r
}

// The number of vectors to return in range [1,10]
func (r ApiVectorSearchAPIRequest) Number(number int32) ApiVectorSearchAPIRequest {
	r.number = &number
	return r
}

func (r ApiVectorSearchAPIRequest) Execute() (*VectorSearchAPI200Response, *http.Response, error) {
	return r.ApiService.VectorSearchAPIExecute(r)
}

/*
VectorSearchAPI Vector Search API

Search through over 700,000 free to use vector icons. The license is either "PUBLIC_DOMAIN" or "ATTRIBUTION". If it is "ATTRIBUTION" just attribute the author somewhere in your project.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiVectorSearchAPIRequest
*/
func (a *MediaAPIService) VectorSearchAPI(ctx context.Context) ApiVectorSearchAPIRequest {
	return ApiVectorSearchAPIRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return VectorSearchAPI200Response
func (a *MediaAPIService) VectorSearchAPIExecute(r ApiVectorSearchAPIRequest) (*VectorSearchAPI200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *VectorSearchAPI200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "MediaAPIService.VectorSearchAPI")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/search-vectors"

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
