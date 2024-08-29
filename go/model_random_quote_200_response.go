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

// checks if the RandomQuote200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &RandomQuote200Response{}

// RandomQuote200Response struct for RandomQuote200Response
type RandomQuote200Response struct {
	Author NullableString `json:"author,omitempty"`
	Quote NullableString `json:"quote,omitempty"`
}

// NewRandomQuote200Response instantiates a new RandomQuote200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRandomQuote200Response() *RandomQuote200Response {
	this := RandomQuote200Response{}
	return &this
}

// NewRandomQuote200ResponseWithDefaults instantiates a new RandomQuote200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRandomQuote200ResponseWithDefaults() *RandomQuote200Response {
	this := RandomQuote200Response{}
	return &this
}

// GetAuthor returns the Author field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RandomQuote200Response) GetAuthor() string {
	if o == nil || IsNil(o.Author.Get()) {
		var ret string
		return ret
	}
	return *o.Author.Get()
}

// GetAuthorOk returns a tuple with the Author field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RandomQuote200Response) GetAuthorOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Author.Get(), o.Author.IsSet()
}

// HasAuthor returns a boolean if a field has been set.
func (o *RandomQuote200Response) HasAuthor() bool {
	if o != nil && o.Author.IsSet() {
		return true
	}

	return false
}

// SetAuthor gets a reference to the given NullableString and assigns it to the Author field.
func (o *RandomQuote200Response) SetAuthor(v string) {
	o.Author.Set(&v)
}
// SetAuthorNil sets the value for Author to be an explicit nil
func (o *RandomQuote200Response) SetAuthorNil() {
	o.Author.Set(nil)
}

// UnsetAuthor ensures that no value is present for Author, not even an explicit nil
func (o *RandomQuote200Response) UnsetAuthor() {
	o.Author.Unset()
}

// GetQuote returns the Quote field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *RandomQuote200Response) GetQuote() string {
	if o == nil || IsNil(o.Quote.Get()) {
		var ret string
		return ret
	}
	return *o.Quote.Get()
}

// GetQuoteOk returns a tuple with the Quote field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *RandomQuote200Response) GetQuoteOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Quote.Get(), o.Quote.IsSet()
}

// HasQuote returns a boolean if a field has been set.
func (o *RandomQuote200Response) HasQuote() bool {
	if o != nil && o.Quote.IsSet() {
		return true
	}

	return false
}

// SetQuote gets a reference to the given NullableString and assigns it to the Quote field.
func (o *RandomQuote200Response) SetQuote(v string) {
	o.Quote.Set(&v)
}
// SetQuoteNil sets the value for Quote to be an explicit nil
func (o *RandomQuote200Response) SetQuoteNil() {
	o.Quote.Set(nil)
}

// UnsetQuote ensures that no value is present for Quote, not even an explicit nil
func (o *RandomQuote200Response) UnsetQuote() {
	o.Quote.Unset()
}

func (o RandomQuote200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o RandomQuote200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Author.IsSet() {
		toSerialize["author"] = o.Author.Get()
	}
	if o.Quote.IsSet() {
		toSerialize["quote"] = o.Quote.Get()
	}
	return toSerialize, nil
}

type NullableRandomQuote200Response struct {
	value *RandomQuote200Response
	isSet bool
}

func (v NullableRandomQuote200Response) Get() *RandomQuote200Response {
	return v.value
}

func (v *NullableRandomQuote200Response) Set(val *RandomQuote200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableRandomQuote200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableRandomQuote200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRandomQuote200Response(val *RandomQuote200Response) *NullableRandomQuote200Response {
	return &NullableRandomQuote200Response{value: val, isSet: true}
}

func (v NullableRandomQuote200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRandomQuote200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


