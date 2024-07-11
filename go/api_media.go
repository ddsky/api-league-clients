/*
API League

API League is a Hub for World Class APIs.

API version: 1.4.1
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


// MediaAPIService MediaAPI service
type MediaAPIService service

type ApiDetectMainImageColorRequest struct {
	ctx context.Context
	ApiService *MediaAPIService
	url *string
}

// The url of the image for which the colors should be detected.
func (r ApiDetectMainImageColorRequest) Url(url string) ApiDetectMainImageColorRequest {
	r.url = &url
	return r
}

func (r ApiDetectMainImageColorRequest) Execute() ([]DetectMainImageColor200ResponseInner, *http.Response, error) {
	return r.ApiService.DetectMainImageColorExecute(r)
}

/*
DetectMainImageColor Detect Main Image Color

Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiDetectMainImageColorRequest
*/
func (a *MediaAPIService) DetectMainImageColor(ctx context.Context) ApiDetectMainImageColorRequest {
	return ApiDetectMainImageColorRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return []DetectMainImageColor200ResponseInner
func (a *MediaAPIService) DetectMainImageColorExecute(r ApiDetectMainImageColorRequest) ([]DetectMainImageColor200ResponseInner, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  []DetectMainImageColor200ResponseInner
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "MediaAPIService.DetectMainImageColor")
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

type ApiRescaleImageRequest struct {
	ctx context.Context
	ApiService *MediaAPIService
	url *string
	width *int32
	height *int32
	crop *bool
}

// The url of the image to be rescaled.
func (r ApiRescaleImageRequest) Url(url string) ApiRescaleImageRequest {
	r.url = &url
	return r
}

// The desired width of the rescaled image.
func (r ApiRescaleImageRequest) Width(width int32) ApiRescaleImageRequest {
	r.width = &width
	return r
}

// The desired height of the rescaled image.
func (r ApiRescaleImageRequest) Height(height int32) ApiRescaleImageRequest {
	r.height = &height
	return r
}

// Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
func (r ApiRescaleImageRequest) Crop(crop bool) ApiRescaleImageRequest {
	r.crop = &crop
	return r
}

func (r ApiRescaleImageRequest) Execute() (map[string]interface{}, *http.Response, error) {
	return r.ApiService.RescaleImageExecute(r)
}

/*
RescaleImage Rescale Image

Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiRescaleImageRequest
*/
func (a *MediaAPIService) RescaleImage(ctx context.Context) ApiRescaleImageRequest {
	return ApiRescaleImageRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return map[string]interface{}
func (a *MediaAPIService) RescaleImageExecute(r ApiRescaleImageRequest) (map[string]interface{}, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  map[string]interface{}
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "MediaAPIService.RescaleImage")
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

type ApiSearchRoyaltyFreeImagesRequest struct {
	ctx context.Context
	ApiService *MediaAPIService
	query *string
	number *int32
}

// The search query.
func (r ApiSearchRoyaltyFreeImagesRequest) Query(query string) ApiSearchRoyaltyFreeImagesRequest {
	r.query = &query
	return r
}

// The number of images to return in range [1,10]
func (r ApiSearchRoyaltyFreeImagesRequest) Number(number int32) ApiSearchRoyaltyFreeImagesRequest {
	r.number = &number
	return r
}

func (r ApiSearchRoyaltyFreeImagesRequest) Execute() (*SearchRoyaltyFreeImages200Response, *http.Response, error) {
	return r.ApiService.SearchRoyaltyFreeImagesExecute(r)
}

/*
SearchRoyaltyFreeImages Search Royalty Free Images

Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiSearchRoyaltyFreeImagesRequest
*/
func (a *MediaAPIService) SearchRoyaltyFreeImages(ctx context.Context) ApiSearchRoyaltyFreeImagesRequest {
	return ApiSearchRoyaltyFreeImagesRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return SearchRoyaltyFreeImages200Response
func (a *MediaAPIService) SearchRoyaltyFreeImagesExecute(r ApiSearchRoyaltyFreeImagesRequest) (*SearchRoyaltyFreeImages200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *SearchRoyaltyFreeImages200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "MediaAPIService.SearchRoyaltyFreeImages")
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
