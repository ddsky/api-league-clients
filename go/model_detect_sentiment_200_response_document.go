/*
API League

API League is a Hub for World Class APIs.

API version: 1.3.0
Contact: mail@apileague.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package apileague

import (
	"encoding/json"
)

// checks if the DetectSentiment200ResponseDocument type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &DetectSentiment200ResponseDocument{}

// DetectSentiment200ResponseDocument struct for DetectSentiment200ResponseDocument
type DetectSentiment200ResponseDocument struct {
	Sentiment NullableString `json:"sentiment,omitempty"`
	Confidence *int32 `json:"confidence,omitempty"`
	AverageConfidence *int32 `json:"average_confidence,omitempty"`
}

// NewDetectSentiment200ResponseDocument instantiates a new DetectSentiment200ResponseDocument object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewDetectSentiment200ResponseDocument() *DetectSentiment200ResponseDocument {
	this := DetectSentiment200ResponseDocument{}
	return &this
}

// NewDetectSentiment200ResponseDocumentWithDefaults instantiates a new DetectSentiment200ResponseDocument object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewDetectSentiment200ResponseDocumentWithDefaults() *DetectSentiment200ResponseDocument {
	this := DetectSentiment200ResponseDocument{}
	return &this
}

// GetSentiment returns the Sentiment field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *DetectSentiment200ResponseDocument) GetSentiment() string {
	if o == nil || IsNil(o.Sentiment.Get()) {
		var ret string
		return ret
	}
	return *o.Sentiment.Get()
}

// GetSentimentOk returns a tuple with the Sentiment field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *DetectSentiment200ResponseDocument) GetSentimentOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Sentiment.Get(), o.Sentiment.IsSet()
}

// HasSentiment returns a boolean if a field has been set.
func (o *DetectSentiment200ResponseDocument) HasSentiment() bool {
	if o != nil && o.Sentiment.IsSet() {
		return true
	}

	return false
}

// SetSentiment gets a reference to the given NullableString and assigns it to the Sentiment field.
func (o *DetectSentiment200ResponseDocument) SetSentiment(v string) {
	o.Sentiment.Set(&v)
}
// SetSentimentNil sets the value for Sentiment to be an explicit nil
func (o *DetectSentiment200ResponseDocument) SetSentimentNil() {
	o.Sentiment.Set(nil)
}

// UnsetSentiment ensures that no value is present for Sentiment, not even an explicit nil
func (o *DetectSentiment200ResponseDocument) UnsetSentiment() {
	o.Sentiment.Unset()
}

// GetConfidence returns the Confidence field value if set, zero value otherwise.
func (o *DetectSentiment200ResponseDocument) GetConfidence() int32 {
	if o == nil || IsNil(o.Confidence) {
		var ret int32
		return ret
	}
	return *o.Confidence
}

// GetConfidenceOk returns a tuple with the Confidence field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DetectSentiment200ResponseDocument) GetConfidenceOk() (*int32, bool) {
	if o == nil || IsNil(o.Confidence) {
		return nil, false
	}
	return o.Confidence, true
}

// HasConfidence returns a boolean if a field has been set.
func (o *DetectSentiment200ResponseDocument) HasConfidence() bool {
	if o != nil && !IsNil(o.Confidence) {
		return true
	}

	return false
}

// SetConfidence gets a reference to the given int32 and assigns it to the Confidence field.
func (o *DetectSentiment200ResponseDocument) SetConfidence(v int32) {
	o.Confidence = &v
}

// GetAverageConfidence returns the AverageConfidence field value if set, zero value otherwise.
func (o *DetectSentiment200ResponseDocument) GetAverageConfidence() int32 {
	if o == nil || IsNil(o.AverageConfidence) {
		var ret int32
		return ret
	}
	return *o.AverageConfidence
}

// GetAverageConfidenceOk returns a tuple with the AverageConfidence field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DetectSentiment200ResponseDocument) GetAverageConfidenceOk() (*int32, bool) {
	if o == nil || IsNil(o.AverageConfidence) {
		return nil, false
	}
	return o.AverageConfidence, true
}

// HasAverageConfidence returns a boolean if a field has been set.
func (o *DetectSentiment200ResponseDocument) HasAverageConfidence() bool {
	if o != nil && !IsNil(o.AverageConfidence) {
		return true
	}

	return false
}

// SetAverageConfidence gets a reference to the given int32 and assigns it to the AverageConfidence field.
func (o *DetectSentiment200ResponseDocument) SetAverageConfidence(v int32) {
	o.AverageConfidence = &v
}

func (o DetectSentiment200ResponseDocument) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o DetectSentiment200ResponseDocument) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Sentiment.IsSet() {
		toSerialize["sentiment"] = o.Sentiment.Get()
	}
	if !IsNil(o.Confidence) {
		toSerialize["confidence"] = o.Confidence
	}
	if !IsNil(o.AverageConfidence) {
		toSerialize["average_confidence"] = o.AverageConfidence
	}
	return toSerialize, nil
}

type NullableDetectSentiment200ResponseDocument struct {
	value *DetectSentiment200ResponseDocument
	isSet bool
}

func (v NullableDetectSentiment200ResponseDocument) Get() *DetectSentiment200ResponseDocument {
	return v.value
}

func (v *NullableDetectSentiment200ResponseDocument) Set(val *DetectSentiment200ResponseDocument) {
	v.value = val
	v.isSet = true
}

func (v NullableDetectSentiment200ResponseDocument) IsSet() bool {
	return v.isSet
}

func (v *NullableDetectSentiment200ResponseDocument) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableDetectSentiment200ResponseDocument(val *DetectSentiment200ResponseDocument) *NullableDetectSentiment200ResponseDocument {
	return &NullableDetectSentiment200ResponseDocument{value: val, isSet: true}
}

func (v NullableDetectSentiment200ResponseDocument) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableDetectSentiment200ResponseDocument) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


