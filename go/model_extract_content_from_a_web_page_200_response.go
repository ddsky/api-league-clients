/*
API League

API League is a Hub for World Class APIs.

API version: 1.6.2
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the ExtractContentFromAWebPage200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ExtractContentFromAWebPage200Response{}

// ExtractContentFromAWebPage200Response struct for ExtractContentFromAWebPage200Response
type ExtractContentFromAWebPage200Response struct {
	Title NullableString `json:"title,omitempty"`
	MainText NullableString `json:"main_text,omitempty"`
	MainHtml NullableString `json:"main_html,omitempty"`
	Images []*string `json:"images,omitempty"`
}

// NewExtractContentFromAWebPage200Response instantiates a new ExtractContentFromAWebPage200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewExtractContentFromAWebPage200Response() *ExtractContentFromAWebPage200Response {
	this := ExtractContentFromAWebPage200Response{}
	return &this
}

// NewExtractContentFromAWebPage200ResponseWithDefaults instantiates a new ExtractContentFromAWebPage200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewExtractContentFromAWebPage200ResponseWithDefaults() *ExtractContentFromAWebPage200Response {
	this := ExtractContentFromAWebPage200Response{}
	return &this
}

// GetTitle returns the Title field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractContentFromAWebPage200Response) GetTitle() string {
	if o == nil || IsNil(o.Title.Get()) {
		var ret string
		return ret
	}
	return *o.Title.Get()
}

// GetTitleOk returns a tuple with the Title field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractContentFromAWebPage200Response) GetTitleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Title.Get(), o.Title.IsSet()
}

// HasTitle returns a boolean if a field has been set.
func (o *ExtractContentFromAWebPage200Response) HasTitle() bool {
	if o != nil && o.Title.IsSet() {
		return true
	}

	return false
}

// SetTitle gets a reference to the given NullableString and assigns it to the Title field.
func (o *ExtractContentFromAWebPage200Response) SetTitle(v string) {
	o.Title.Set(&v)
}
// SetTitleNil sets the value for Title to be an explicit nil
func (o *ExtractContentFromAWebPage200Response) SetTitleNil() {
	o.Title.Set(nil)
}

// UnsetTitle ensures that no value is present for Title, not even an explicit nil
func (o *ExtractContentFromAWebPage200Response) UnsetTitle() {
	o.Title.Unset()
}

// GetMainText returns the MainText field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractContentFromAWebPage200Response) GetMainText() string {
	if o == nil || IsNil(o.MainText.Get()) {
		var ret string
		return ret
	}
	return *o.MainText.Get()
}

// GetMainTextOk returns a tuple with the MainText field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractContentFromAWebPage200Response) GetMainTextOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.MainText.Get(), o.MainText.IsSet()
}

// HasMainText returns a boolean if a field has been set.
func (o *ExtractContentFromAWebPage200Response) HasMainText() bool {
	if o != nil && o.MainText.IsSet() {
		return true
	}

	return false
}

// SetMainText gets a reference to the given NullableString and assigns it to the MainText field.
func (o *ExtractContentFromAWebPage200Response) SetMainText(v string) {
	o.MainText.Set(&v)
}
// SetMainTextNil sets the value for MainText to be an explicit nil
func (o *ExtractContentFromAWebPage200Response) SetMainTextNil() {
	o.MainText.Set(nil)
}

// UnsetMainText ensures that no value is present for MainText, not even an explicit nil
func (o *ExtractContentFromAWebPage200Response) UnsetMainText() {
	o.MainText.Unset()
}

// GetMainHtml returns the MainHtml field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractContentFromAWebPage200Response) GetMainHtml() string {
	if o == nil || IsNil(o.MainHtml.Get()) {
		var ret string
		return ret
	}
	return *o.MainHtml.Get()
}

// GetMainHtmlOk returns a tuple with the MainHtml field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractContentFromAWebPage200Response) GetMainHtmlOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.MainHtml.Get(), o.MainHtml.IsSet()
}

// HasMainHtml returns a boolean if a field has been set.
func (o *ExtractContentFromAWebPage200Response) HasMainHtml() bool {
	if o != nil && o.MainHtml.IsSet() {
		return true
	}

	return false
}

// SetMainHtml gets a reference to the given NullableString and assigns it to the MainHtml field.
func (o *ExtractContentFromAWebPage200Response) SetMainHtml(v string) {
	o.MainHtml.Set(&v)
}
// SetMainHtmlNil sets the value for MainHtml to be an explicit nil
func (o *ExtractContentFromAWebPage200Response) SetMainHtmlNil() {
	o.MainHtml.Set(nil)
}

// UnsetMainHtml ensures that no value is present for MainHtml, not even an explicit nil
func (o *ExtractContentFromAWebPage200Response) UnsetMainHtml() {
	o.MainHtml.Unset()
}

// GetImages returns the Images field value if set, zero value otherwise.
func (o *ExtractContentFromAWebPage200Response) GetImages() []*string {
	if o == nil || IsNil(o.Images) {
		var ret []*string
		return ret
	}
	return o.Images
}

// GetImagesOk returns a tuple with the Images field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractContentFromAWebPage200Response) GetImagesOk() ([]*string, bool) {
	if o == nil || IsNil(o.Images) {
		return nil, false
	}
	return o.Images, true
}

// HasImages returns a boolean if a field has been set.
func (o *ExtractContentFromAWebPage200Response) HasImages() bool {
	if o != nil && !IsNil(o.Images) {
		return true
	}

	return false
}

// SetImages gets a reference to the given []*string and assigns it to the Images field.
func (o *ExtractContentFromAWebPage200Response) SetImages(v []*string) {
	o.Images = v
}

func (o ExtractContentFromAWebPage200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ExtractContentFromAWebPage200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Title.IsSet() {
		toSerialize["title"] = o.Title.Get()
	}
	if o.MainText.IsSet() {
		toSerialize["main_text"] = o.MainText.Get()
	}
	if o.MainHtml.IsSet() {
		toSerialize["main_html"] = o.MainHtml.Get()
	}
	if !IsNil(o.Images) {
		toSerialize["images"] = o.Images
	}
	return toSerialize, nil
}

type NullableExtractContentFromAWebPage200Response struct {
	value *ExtractContentFromAWebPage200Response
	isSet bool
}

func (v NullableExtractContentFromAWebPage200Response) Get() *ExtractContentFromAWebPage200Response {
	return v.value
}

func (v *NullableExtractContentFromAWebPage200Response) Set(val *ExtractContentFromAWebPage200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableExtractContentFromAWebPage200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableExtractContentFromAWebPage200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableExtractContentFromAWebPage200Response(val *ExtractContentFromAWebPage200Response) *NullableExtractContentFromAWebPage200Response {
	return &NullableExtractContentFromAWebPage200Response{value: val, isSet: true}
}

func (v NullableExtractContentFromAWebPage200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableExtractContentFromAWebPage200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


