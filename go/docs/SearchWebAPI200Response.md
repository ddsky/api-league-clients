# SearchWebAPI200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | Pointer to [**[]SearchWebAPI200ResponseResultsInner**](SearchWebAPI200ResponseResultsInner.md) |  | [optional] 

## Methods

### NewSearchWebAPI200Response

`func NewSearchWebAPI200Response() *SearchWebAPI200Response`

NewSearchWebAPI200Response instantiates a new SearchWebAPI200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchWebAPI200ResponseWithDefaults

`func NewSearchWebAPI200ResponseWithDefaults() *SearchWebAPI200Response`

NewSearchWebAPI200ResponseWithDefaults instantiates a new SearchWebAPI200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetResults

`func (o *SearchWebAPI200Response) GetResults() []SearchWebAPI200ResponseResultsInner`

GetResults returns the Results field if non-nil, zero value otherwise.

### GetResultsOk

`func (o *SearchWebAPI200Response) GetResultsOk() (*[]SearchWebAPI200ResponseResultsInner, bool)`

GetResultsOk returns a tuple with the Results field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResults

`func (o *SearchWebAPI200Response) SetResults(v []SearchWebAPI200ResponseResultsInner)`

SetResults sets Results field to given value.

### HasResults

`func (o *SearchWebAPI200Response) HasResults() bool`

HasResults returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


