/*
API League

API League is a Hub for World Class APIs.

API version: 1.0
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the SearchBooks200ResponseBooksInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchBooks200ResponseBooksInner{}

// SearchBooks200ResponseBooksInner struct for SearchBooks200ResponseBooksInner
type SearchBooks200ResponseBooksInner struct {
	Title NullableString `json:"title,omitempty"`
	Image NullableString `json:"image,omitempty"`
	Id *int32 `json:"id,omitempty"`
}

// NewSearchBooks200ResponseBooksInner instantiates a new SearchBooks200ResponseBooksInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchBooks200ResponseBooksInner() *SearchBooks200ResponseBooksInner {
	this := SearchBooks200ResponseBooksInner{}
	return &this
}

// NewSearchBooks200ResponseBooksInnerWithDefaults instantiates a new SearchBooks200ResponseBooksInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchBooks200ResponseBooksInnerWithDefaults() *SearchBooks200ResponseBooksInner {
	this := SearchBooks200ResponseBooksInner{}
	return &this
}

// GetTitle returns the Title field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchBooks200ResponseBooksInner) GetTitle() string {
	if o == nil || IsNil(o.Title.Get()) {
		var ret string
		return ret
	}
	return *o.Title.Get()
}

// GetTitleOk returns a tuple with the Title field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchBooks200ResponseBooksInner) GetTitleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Title.Get(), o.Title.IsSet()
}

// HasTitle returns a boolean if a field has been set.
func (o *SearchBooks200ResponseBooksInner) HasTitle() bool {
	if o != nil && o.Title.IsSet() {
		return true
	}

	return false
}

// SetTitle gets a reference to the given NullableString and assigns it to the Title field.
func (o *SearchBooks200ResponseBooksInner) SetTitle(v string) {
	o.Title.Set(&v)
}
// SetTitleNil sets the value for Title to be an explicit nil
func (o *SearchBooks200ResponseBooksInner) SetTitleNil() {
	o.Title.Set(nil)
}

// UnsetTitle ensures that no value is present for Title, not even an explicit nil
func (o *SearchBooks200ResponseBooksInner) UnsetTitle() {
	o.Title.Unset()
}

// GetImage returns the Image field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchBooks200ResponseBooksInner) GetImage() string {
	if o == nil || IsNil(o.Image.Get()) {
		var ret string
		return ret
	}
	return *o.Image.Get()
}

// GetImageOk returns a tuple with the Image field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchBooks200ResponseBooksInner) GetImageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Image.Get(), o.Image.IsSet()
}

// HasImage returns a boolean if a field has been set.
func (o *SearchBooks200ResponseBooksInner) HasImage() bool {
	if o != nil && o.Image.IsSet() {
		return true
	}

	return false
}

// SetImage gets a reference to the given NullableString and assigns it to the Image field.
func (o *SearchBooks200ResponseBooksInner) SetImage(v string) {
	o.Image.Set(&v)
}
// SetImageNil sets the value for Image to be an explicit nil
func (o *SearchBooks200ResponseBooksInner) SetImageNil() {
	o.Image.Set(nil)
}

// UnsetImage ensures that no value is present for Image, not even an explicit nil
func (o *SearchBooks200ResponseBooksInner) UnsetImage() {
	o.Image.Unset()
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *SearchBooks200ResponseBooksInner) GetId() int32 {
	if o == nil || IsNil(o.Id) {
		var ret int32
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchBooks200ResponseBooksInner) GetIdOk() (*int32, bool) {
	if o == nil || IsNil(o.Id) {
		return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *SearchBooks200ResponseBooksInner) HasId() bool {
	if o != nil && !IsNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given int32 and assigns it to the Id field.
func (o *SearchBooks200ResponseBooksInner) SetId(v int32) {
	o.Id = &v
}

func (o SearchBooks200ResponseBooksInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchBooks200ResponseBooksInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Title.IsSet() {
		toSerialize["title"] = o.Title.Get()
	}
	if o.Image.IsSet() {
		toSerialize["image"] = o.Image.Get()
	}
	if !IsNil(o.Id) {
		toSerialize["id"] = o.Id
	}
	return toSerialize, nil
}

type NullableSearchBooks200ResponseBooksInner struct {
	value *SearchBooks200ResponseBooksInner
	isSet bool
}

func (v NullableSearchBooks200ResponseBooksInner) Get() *SearchBooks200ResponseBooksInner {
	return v.value
}

func (v *NullableSearchBooks200ResponseBooksInner) Set(val *SearchBooks200ResponseBooksInner) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchBooks200ResponseBooksInner) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchBooks200ResponseBooksInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchBooks200ResponseBooksInner(val *SearchBooks200ResponseBooksInner) *NullableSearchBooks200ResponseBooksInner {
	return &NullableSearchBooks200ResponseBooksInner{value: val, isSet: true}
}

func (v NullableSearchBooks200ResponseBooksInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchBooks200ResponseBooksInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

