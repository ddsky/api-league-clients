/*
API League

API League is a Hub for World Class APIs.

API version: 1.3.0
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


// MathAPIService MathAPI service
type MathAPIService service

type ApiConvertUnitsRequest struct {
	ctx context.Context
	ApiService *MathAPIService
	sourceAmount *float64
	sourceUnit *string
	targetUnit *string
	foodName *string
}

// The source amount.
func (r ApiConvertUnitsRequest) SourceAmount(sourceAmount float64) ApiConvertUnitsRequest {
	r.sourceAmount = &sourceAmount
	return r
}

// The source unit.
func (r ApiConvertUnitsRequest) SourceUnit(sourceUnit string) ApiConvertUnitsRequest {
	r.sourceUnit = &sourceUnit
	return r
}

// The unit to which should be converted.
func (r ApiConvertUnitsRequest) TargetUnit(targetUnit string) ApiConvertUnitsRequest {
	r.targetUnit = &targetUnit
	return r
}

// An optional food name. For converting foods the food is relevant as they have different densities.
func (r ApiConvertUnitsRequest) FoodName(foodName string) ApiConvertUnitsRequest {
	r.foodName = &foodName
	return r
}

func (r ApiConvertUnitsRequest) Execute() (*ConvertUnits200Response, *http.Response, error) {
	return r.ApiService.ConvertUnitsExecute(r)
}

/*
ConvertUnits Convert Units

Convert units from one to another. The API returns the amount and the unit of the target unit.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiConvertUnitsRequest
*/
func (a *MathAPIService) ConvertUnits(ctx context.Context) ApiConvertUnitsRequest {
	return ApiConvertUnitsRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return ConvertUnits200Response
func (a *MathAPIService) ConvertUnitsExecute(r ApiConvertUnitsRequest) (*ConvertUnits200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *ConvertUnits200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "MathAPIService.ConvertUnits")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/convert-units"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}
	if r.sourceAmount == nil {
		return localVarReturnValue, nil, reportError("sourceAmount is required and must be specified")
	}
	if *r.sourceAmount < 0 {
		return localVarReturnValue, nil, reportError("sourceAmount must be greater than 0")
	}
	if *r.sourceAmount > 99999999 {
		return localVarReturnValue, nil, reportError("sourceAmount must be less than 99999999")
	}
	if r.sourceUnit == nil {
		return localVarReturnValue, nil, reportError("sourceUnit is required and must be specified")
	}
	if strlen(*r.sourceUnit) > 100 {
		return localVarReturnValue, nil, reportError("sourceUnit must have less than 100 elements")
	}
	if r.targetUnit == nil {
		return localVarReturnValue, nil, reportError("targetUnit is required and must be specified")
	}
	if strlen(*r.targetUnit) > 100 {
		return localVarReturnValue, nil, reportError("targetUnit must have less than 100 elements")
	}

	parameterAddToHeaderOrQuery(localVarQueryParams, "source-amount", r.sourceAmount, "")
	parameterAddToHeaderOrQuery(localVarQueryParams, "source-unit", r.sourceUnit, "")
	parameterAddToHeaderOrQuery(localVarQueryParams, "target-unit", r.targetUnit, "")
	if r.foodName != nil {
		parameterAddToHeaderOrQuery(localVarQueryParams, "food-name", r.foodName, "")
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
