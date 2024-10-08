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

// checks if the GenerateNonsenseWord200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &GenerateNonsenseWord200Response{}

// GenerateNonsenseWord200Response struct for GenerateNonsenseWord200Response
type GenerateNonsenseWord200Response struct {
	Word NullableString `json:"word,omitempty"`
	Rating *float32 `json:"rating,omitempty"`
}

// NewGenerateNonsenseWord200Response instantiates a new GenerateNonsenseWord200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGenerateNonsenseWord200Response() *GenerateNonsenseWord200Response {
	this := GenerateNonsenseWord200Response{}
	return &this
}

// NewGenerateNonsenseWord200ResponseWithDefaults instantiates a new GenerateNonsenseWord200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGenerateNonsenseWord200ResponseWithDefaults() *GenerateNonsenseWord200Response {
	this := GenerateNonsenseWord200Response{}
	return &this
}

// GetWord returns the Word field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *GenerateNonsenseWord200Response) GetWord() string {
	if o == nil || IsNil(o.Word.Get()) {
		var ret string
		return ret
	}
	return *o.Word.Get()
}

// GetWordOk returns a tuple with the Word field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *GenerateNonsenseWord200Response) GetWordOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Word.Get(), o.Word.IsSet()
}

// HasWord returns a boolean if a field has been set.
func (o *GenerateNonsenseWord200Response) HasWord() bool {
	if o != nil && o.Word.IsSet() {
		return true
	}

	return false
}

// SetWord gets a reference to the given NullableString and assigns it to the Word field.
func (o *GenerateNonsenseWord200Response) SetWord(v string) {
	o.Word.Set(&v)
}
// SetWordNil sets the value for Word to be an explicit nil
func (o *GenerateNonsenseWord200Response) SetWordNil() {
	o.Word.Set(nil)
}

// UnsetWord ensures that no value is present for Word, not even an explicit nil
func (o *GenerateNonsenseWord200Response) UnsetWord() {
	o.Word.Unset()
}

// GetRating returns the Rating field value if set, zero value otherwise.
func (o *GenerateNonsenseWord200Response) GetRating() float32 {
	if o == nil || IsNil(o.Rating) {
		var ret float32
		return ret
	}
	return *o.Rating
}

// GetRatingOk returns a tuple with the Rating field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GenerateNonsenseWord200Response) GetRatingOk() (*float32, bool) {
	if o == nil || IsNil(o.Rating) {
		return nil, false
	}
	return o.Rating, true
}

// HasRating returns a boolean if a field has been set.
func (o *GenerateNonsenseWord200Response) HasRating() bool {
	if o != nil && !IsNil(o.Rating) {
		return true
	}

	return false
}

// SetRating gets a reference to the given float32 and assigns it to the Rating field.
func (o *GenerateNonsenseWord200Response) SetRating(v float32) {
	o.Rating = &v
}

func (o GenerateNonsenseWord200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o GenerateNonsenseWord200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Word.IsSet() {
		toSerialize["word"] = o.Word.Get()
	}
	if !IsNil(o.Rating) {
		toSerialize["rating"] = o.Rating
	}
	return toSerialize, nil
}

type NullableGenerateNonsenseWord200Response struct {
	value *GenerateNonsenseWord200Response
	isSet bool
}

func (v NullableGenerateNonsenseWord200Response) Get() *GenerateNonsenseWord200Response {
	return v.value
}

func (v *NullableGenerateNonsenseWord200Response) Set(val *GenerateNonsenseWord200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableGenerateNonsenseWord200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableGenerateNonsenseWord200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGenerateNonsenseWord200Response(val *GenerateNonsenseWord200Response) *NullableGenerateNonsenseWord200Response {
	return &NullableGenerateNonsenseWord200Response{value: val, isSet: true}
}

func (v NullableGenerateNonsenseWord200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGenerateNonsenseWord200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


