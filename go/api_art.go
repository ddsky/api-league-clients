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
)


// ArtAPIService ArtAPI service
type ArtAPIService service

type ApiImageToAsciiArtByURLAPIRequest struct {
	ctx context.Context
	ApiService *ArtAPIService
	url *string
	width *int32
	height *int32
}

// The URL to the image.
func (r ApiImageToAsciiArtByURLAPIRequest) Url(url string) ApiImageToAsciiArtByURLAPIRequest {
	r.url = &url
	return r
}

// The maximum width of the image (default 400, max. 500).
func (r ApiImageToAsciiArtByURLAPIRequest) Width(width int32) ApiImageToAsciiArtByURLAPIRequest {
	r.width = &width
	return r
}

// The maximum height of the image (default 400, max. 500).
func (r ApiImageToAsciiArtByURLAPIRequest) Height(height int32) ApiImageToAsciiArtByURLAPIRequest {
	r.height = &height
	return r
}

func (r ApiImageToAsciiArtByURLAPIRequest) Execute() (string, *http.Response, error) {
	return r.ApiService.ImageToAsciiArtByURLAPIExecute(r)
}

/*
ImageToAsciiArtByURLAPI Image to Ascii Art by URL API

Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiImageToAsciiArtByURLAPIRequest
*/
func (a *ArtAPIService) ImageToAsciiArtByURLAPI(ctx context.Context) ApiImageToAsciiArtByURLAPIRequest {
	return ApiImageToAsciiArtByURLAPIRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return string
func (a *ArtAPIService) ImageToAsciiArtByURLAPIExecute(r ApiImageToAsciiArtByURLAPIRequest) (string, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  string
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "ArtAPIService.ImageToAsciiArtByURLAPI")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/convert-image-to-ascii-txt"

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
	if r.width != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "width", r.width, "")
	}
	if r.height != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "height", r.height, "")
	}
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"text/plain"}

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

type ApiRandomPoemAPIRequest struct {
	ctx context.Context
	ApiService *ArtAPIService
	minLines *int32
	maxLines *int32
}

// The minimum number of lines of the poem.
func (r ApiRandomPoemAPIRequest) MinLines(minLines int32) ApiRandomPoemAPIRequest {
	r.minLines = &minLines
	return r
}

// The maximum number of lines of the poem.
func (r ApiRandomPoemAPIRequest) MaxLines(maxLines int32) ApiRandomPoemAPIRequest {
	r.maxLines = &maxLines
	return r
}

func (r ApiRandomPoemAPIRequest) Execute() (*RandomPoemAPI200Response, *http.Response, error) {
	return r.ApiService.RandomPoemAPIExecute(r)
}

/*
RandomPoemAPI Random Poem API

Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiRandomPoemAPIRequest
*/
func (a *ArtAPIService) RandomPoemAPI(ctx context.Context) ApiRandomPoemAPIRequest {
	return ApiRandomPoemAPIRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return RandomPoemAPI200Response
func (a *ArtAPIService) RandomPoemAPIExecute(r ApiRandomPoemAPIRequest) (*RandomPoemAPI200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *RandomPoemAPI200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "ArtAPIService.RandomPoemAPI")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/retrieve-random-poem"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.minLines != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "min-lines", r.minLines, "")
	}
	if r.maxLines != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "max-lines", r.maxLines, "")
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
