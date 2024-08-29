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

// checks if the DetectSentiment200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &DetectSentiment200Response{}

// DetectSentiment200Response struct for DetectSentiment200Response
type DetectSentiment200Response struct {
	Document *DetectSentiment200ResponseDocument `json:"document,omitempty"`
	Sentences []DetectSentiment200ResponseSentencesInner `json:"sentences,omitempty"`
}

// NewDetectSentiment200Response instantiates a new DetectSentiment200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewDetectSentiment200Response() *DetectSentiment200Response {
	this := DetectSentiment200Response{}
	return &this
}

// NewDetectSentiment200ResponseWithDefaults instantiates a new DetectSentiment200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewDetectSentiment200ResponseWithDefaults() *DetectSentiment200Response {
	this := DetectSentiment200Response{}
	return &this
}

// GetDocument returns the Document field value if set, zero value otherwise.
func (o *DetectSentiment200Response) GetDocument() DetectSentiment200ResponseDocument {
	if o == nil || IsNil(o.Document) {
		var ret DetectSentiment200ResponseDocument
		return ret
	}
	return *o.Document
}

// GetDocumentOk returns a tuple with the Document field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DetectSentiment200Response) GetDocumentOk() (*DetectSentiment200ResponseDocument, bool) {
	if o == nil || IsNil(o.Document) {
		return nil, false
	}
	return o.Document, true
}

// HasDocument returns a boolean if a field has been set.
func (o *DetectSentiment200Response) HasDocument() bool {
	if o != nil && !IsNil(o.Document) {
		return true
	}

	return false
}

// SetDocument gets a reference to the given DetectSentiment200ResponseDocument and assigns it to the Document field.
func (o *DetectSentiment200Response) SetDocument(v DetectSentiment200ResponseDocument) {
	o.Document = &v
}

// GetSentences returns the Sentences field value if set, zero value otherwise.
func (o *DetectSentiment200Response) GetSentences() []DetectSentiment200ResponseSentencesInner {
	if o == nil || IsNil(o.Sentences) {
		var ret []DetectSentiment200ResponseSentencesInner
		return ret
	}
	return o.Sentences
}

// GetSentencesOk returns a tuple with the Sentences field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DetectSentiment200Response) GetSentencesOk() ([]DetectSentiment200ResponseSentencesInner, bool) {
	if o == nil || IsNil(o.Sentences) {
		return nil, false
	}
	return o.Sentences, true
}

// HasSentences returns a boolean if a field has been set.
func (o *DetectSentiment200Response) HasSentences() bool {
	if o != nil && !IsNil(o.Sentences) {
		return true
	}

	return false
}

// SetSentences gets a reference to the given []DetectSentiment200ResponseSentencesInner and assigns it to the Sentences field.
func (o *DetectSentiment200Response) SetSentences(v []DetectSentiment200ResponseSentencesInner) {
	o.Sentences = v
}

func (o DetectSentiment200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o DetectSentiment200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Document) {
		toSerialize["document"] = o.Document
	}
	if !IsNil(o.Sentences) {
		toSerialize["sentences"] = o.Sentences
	}
	return toSerialize, nil
}

type NullableDetectSentiment200Response struct {
	value *DetectSentiment200Response
	isSet bool
}

func (v NullableDetectSentiment200Response) Get() *DetectSentiment200Response {
	return v.value
}

func (v *NullableDetectSentiment200Response) Set(val *DetectSentiment200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableDetectSentiment200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableDetectSentiment200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableDetectSentiment200Response(val *DetectSentiment200Response) *NullableDetectSentiment200Response {
	return &NullableDetectSentiment200Response{value: val, isSet: true}
}

func (v NullableDetectSentiment200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableDetectSentiment200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


