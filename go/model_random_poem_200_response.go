/*
API League

API League is a Hub for World Class APIs.

API version: 1.4.1
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the RandomPoem200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &RandomPoem200Response{}

// RandomPoem200Response struct for RandomPoem200Response
type RandomPoem200Response struct {
	Title NullableString `json:"title,omitempty"`
	Author NullableString `json:"author,omitempty"`
	Poem NullableString `json:"poem,omitempty"`
}

// NewRandomPoem200Response instantiates a new RandomPoem200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRandomPoem200Response() *RandomPoem200Response {
	this := RandomPoem200Response{}
	return &this
}

// NewRandomPoem200ResponseWithDefaults instantiates a new RandomPoem200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRandomPoem200ResponseWithDefaults() *RandomPoem200Response {
	this := RandomPoem200Response{}
	return &this
}

// GetTitle returns the Title field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RandomPoem200Response) GetTitle() string {
	if o == nil || IsNil(o.Title.Get()) {
		var ret string
		return ret
	}
	return *o.Title.Get()
}

// GetTitleOk returns a tuple with the Title field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RandomPoem200Response) GetTitleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Title.Get(), o.Title.IsSet()
}

// HasTitle returns a boolean if a field has been set.
func (o *RandomPoem200Response) HasTitle() bool {
	if o != nil && o.Title.IsSet() {
		return true
	}

	return false
}

// SetTitle gets a reference to the given NullableString and assigns it to the Title field.
func (o *RandomPoem200Response) SetTitle(v string) {
	o.Title.Set(&v)
}
// SetTitleNil sets the value for Title to be an explicit nil
func (o *RandomPoem200Response) SetTitleNil() {
	o.Title.Set(nil)
}

// UnsetTitle ensures that no value is present for Title, not even an explicit nil
func (o *RandomPoem200Response) UnsetTitle() {
	o.Title.Unset()
}

// GetAuthor returns the Author field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RandomPoem200Response) GetAuthor() string {
	if o == nil || IsNil(o.Author.Get()) {
		var ret string
		return ret
	}
	return *o.Author.Get()
}

// GetAuthorOk returns a tuple with the Author field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RandomPoem200Response) GetAuthorOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Author.Get(), o.Author.IsSet()
}

// HasAuthor returns a boolean if a field has been set.
func (o *RandomPoem200Response) HasAuthor() bool {
	if o != nil && o.Author.IsSet() {
		return true
	}

	return false
}

// SetAuthor gets a reference to the given NullableString and assigns it to the Author field.
func (o *RandomPoem200Response) SetAuthor(v string) {
	o.Author.Set(&v)
}
// SetAuthorNil sets the value for Author to be an explicit nil
func (o *RandomPoem200Response) SetAuthorNil() {
	o.Author.Set(nil)
}

// UnsetAuthor ensures that no value is present for Author, not even an explicit nil
func (o *RandomPoem200Response) UnsetAuthor() {
	o.Author.Unset()
}

// GetPoem returns the Poem field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RandomPoem200Response) GetPoem() string {
	if o == nil || IsNil(o.Poem.Get()) {
		var ret string
		return ret
	}
	return *o.Poem.Get()
}

// GetPoemOk returns a tuple with the Poem field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RandomPoem200Response) GetPoemOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Poem.Get(), o.Poem.IsSet()
}

// HasPoem returns a boolean if a field has been set.
func (o *RandomPoem200Response) HasPoem() bool {
	if o != nil && o.Poem.IsSet() {
		return true
	}

	return false
}

// SetPoem gets a reference to the given NullableString and assigns it to the Poem field.
func (o *RandomPoem200Response) SetPoem(v string) {
	o.Poem.Set(&v)
}
// SetPoemNil sets the value for Poem to be an explicit nil
func (o *RandomPoem200Response) SetPoemNil() {
	o.Poem.Set(nil)
}

// UnsetPoem ensures that no value is present for Poem, not even an explicit nil
func (o *RandomPoem200Response) UnsetPoem() {
	o.Poem.Unset()
}

func (o RandomPoem200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o RandomPoem200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Title.IsSet() {
		toSerialize["title"] = o.Title.Get()
	}
	if o.Author.IsSet() {
		toSerialize["author"] = o.Author.Get()
	}
	if o.Poem.IsSet() {
		toSerialize["poem"] = o.Poem.Get()
	}
	return toSerialize, nil
}

type NullableRandomPoem200Response struct {
	value *RandomPoem200Response
	isSet bool
}

func (v NullableRandomPoem200Response) Get() *RandomPoem200Response {
	return v.value
}

func (v *NullableRandomPoem200Response) Set(val *RandomPoem200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableRandomPoem200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableRandomPoem200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRandomPoem200Response(val *RandomPoem200Response) *NullableRandomPoem200Response {
	return &NullableRandomPoem200Response{value: val, isSet: true}
}

func (v NullableRandomPoem200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRandomPoem200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


