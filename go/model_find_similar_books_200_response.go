/*
API League

API League is a Hub for World Class APIs.

API version: 1.6.3
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the FindSimilarBooks200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &FindSimilarBooks200Response{}

// FindSimilarBooks200Response struct for FindSimilarBooks200Response
type FindSimilarBooks200Response struct {
	SimilarBooks []SearchBooks200ResponseBooksInnerInner `json:"similar_books,omitempty"`
}

// NewFindSimilarBooks200Response instantiates a new FindSimilarBooks200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewFindSimilarBooks200Response() *FindSimilarBooks200Response {
	this := FindSimilarBooks200Response{}
	return &this
}

// NewFindSimilarBooks200ResponseWithDefaults instantiates a new FindSimilarBooks200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewFindSimilarBooks200ResponseWithDefaults() *FindSimilarBooks200Response {
	this := FindSimilarBooks200Response{}
	return &this
}

// GetSimilarBooks returns the SimilarBooks field value if set, zero value otherwise.
func (o *FindSimilarBooks200Response) GetSimilarBooks() []SearchBooks200ResponseBooksInnerInner {
	if o == nil || IsNil(o.SimilarBooks) {
		var ret []SearchBooks200ResponseBooksInnerInner
		return ret
	}
	return o.SimilarBooks
}

// GetSimilarBooksOk returns a tuple with the SimilarBooks field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *FindSimilarBooks200Response) GetSimilarBooksOk() ([]SearchBooks200ResponseBooksInnerInner, bool) {
	if o == nil || IsNil(o.SimilarBooks) {
		return nil, false
	}
	return o.SimilarBooks, true
}

// HasSimilarBooks returns a boolean if a field has been set.
func (o *FindSimilarBooks200Response) HasSimilarBooks() bool {
	if o != nil && !IsNil(o.SimilarBooks) {
		return true
	}

	return false
}

// SetSimilarBooks gets a reference to the given []SearchBooks200ResponseBooksInnerInner and assigns it to the SimilarBooks field.
func (o *FindSimilarBooks200Response) SetSimilarBooks(v []SearchBooks200ResponseBooksInnerInner) {
	o.SimilarBooks = v
}

func (o FindSimilarBooks200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o FindSimilarBooks200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.SimilarBooks) {
		toSerialize["similar_books"] = o.SimilarBooks
	}
	return toSerialize, nil
}

type NullableFindSimilarBooks200Response struct {
	value *FindSimilarBooks200Response
	isSet bool
}

func (v NullableFindSimilarBooks200Response) Get() *FindSimilarBooks200Response {
	return v.value
}

func (v *NullableFindSimilarBooks200Response) Set(val *FindSimilarBooks200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableFindSimilarBooks200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableFindSimilarBooks200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableFindSimilarBooks200Response(val *FindSimilarBooks200Response) *NullableFindSimilarBooks200Response {
	return &NullableFindSimilarBooks200Response{value: val, isSet: true}
}

func (v NullableFindSimilarBooks200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableFindSimilarBooks200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


