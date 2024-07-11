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

// checks if the DetectSentiment200ResponseSentencesInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &DetectSentiment200ResponseSentencesInner{}

// DetectSentiment200ResponseSentencesInner struct for DetectSentiment200ResponseSentencesInner
type DetectSentiment200ResponseSentencesInner struct {
	Length *int32 `json:"length,omitempty"`
	Sentiment NullableString `json:"sentiment,omitempty"`
	Offset *int32 `json:"offset,omitempty"`
	Confidence *int32 `json:"confidence,omitempty"`
}

// NewDetectSentiment200ResponseSentencesInner instantiates a new DetectSentiment200ResponseSentencesInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewDetectSentiment200ResponseSentencesInner() *DetectSentiment200ResponseSentencesInner {
	this := DetectSentiment200ResponseSentencesInner{}
	return &this
}

// NewDetectSentiment200ResponseSentencesInnerWithDefaults instantiates a new DetectSentiment200ResponseSentencesInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewDetectSentiment200ResponseSentencesInnerWithDefaults() *DetectSentiment200ResponseSentencesInner {
	this := DetectSentiment200ResponseSentencesInner{}
	return &this
}

// GetLength returns the Length field value if set, zero value otherwise.
func (o *DetectSentiment200ResponseSentencesInner) GetLength() int32 {
	if o == nil || IsNil(o.Length) {
		var ret int32
		return ret
	}
	return *o.Length
}

// GetLengthOk returns a tuple with the Length field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DetectSentiment200ResponseSentencesInner) GetLengthOk() (*int32, bool) {
	if o == nil || IsNil(o.Length) {
		return nil, false
	}
	return o.Length, true
}

// HasLength returns a boolean if a field has been set.
func (o *DetectSentiment200ResponseSentencesInner) HasLength() bool {
	if o != nil && !IsNil(o.Length) {
		return true
	}

	return false
}

// SetLength gets a reference to the given int32 and assigns it to the Length field.
func (o *DetectSentiment200ResponseSentencesInner) SetLength(v int32) {
	o.Length = &v
}

// GetSentiment returns the Sentiment field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *DetectSentiment200ResponseSentencesInner) GetSentiment() string {
	if o == nil || IsNil(o.Sentiment.Get()) {
		var ret string
		return ret
	}
	return *o.Sentiment.Get()
}

// GetSentimentOk returns a tuple with the Sentiment field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *DetectSentiment200ResponseSentencesInner) GetSentimentOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Sentiment.Get(), o.Sentiment.IsSet()
}

// HasSentiment returns a boolean if a field has been set.
func (o *DetectSentiment200ResponseSentencesInner) HasSentiment() bool {
	if o != nil && o.Sentiment.IsSet() {
		return true
	}

	return false
}

// SetSentiment gets a reference to the given NullableString and assigns it to the Sentiment field.
func (o *DetectSentiment200ResponseSentencesInner) SetSentiment(v string) {
	o.Sentiment.Set(&v)
}
// SetSentimentNil sets the value for Sentiment to be an explicit nil
func (o *DetectSentiment200ResponseSentencesInner) SetSentimentNil() {
	o.Sentiment.Set(nil)
}

// UnsetSentiment ensures that no value is present for Sentiment, not even an explicit nil
func (o *DetectSentiment200ResponseSentencesInner) UnsetSentiment() {
	o.Sentiment.Unset()
}

// GetOffset returns the Offset field value if set, zero value otherwise.
func (o *DetectSentiment200ResponseSentencesInner) GetOffset() int32 {
	if o == nil || IsNil(o.Offset) {
		var ret int32
		return ret
	}
	return *o.Offset
}

// GetOffsetOk returns a tuple with the Offset field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DetectSentiment200ResponseSentencesInner) GetOffsetOk() (*int32, bool) {
	if o == nil || IsNil(o.Offset) {
		return nil, false
	}
	return o.Offset, true
}

// HasOffset returns a boolean if a field has been set.
func (o *DetectSentiment200ResponseSentencesInner) HasOffset() bool {
	if o != nil && !IsNil(o.Offset) {
		return true
	}

	return false
}

// SetOffset gets a reference to the given int32 and assigns it to the Offset field.
func (o *DetectSentiment200ResponseSentencesInner) SetOffset(v int32) {
	o.Offset = &v
}

// GetConfidence returns the Confidence field value if set, zero value otherwise.
func (o *DetectSentiment200ResponseSentencesInner) GetConfidence() int32 {
	if o == nil || IsNil(o.Confidence) {
		var ret int32
		return ret
	}
	return *o.Confidence
}

// GetConfidenceOk returns a tuple with the Confidence field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DetectSentiment200ResponseSentencesInner) GetConfidenceOk() (*int32, bool) {
	if o == nil || IsNil(o.Confidence) {
		return nil, false
	}
	return o.Confidence, true
}

// HasConfidence returns a boolean if a field has been set.
func (o *DetectSentiment200ResponseSentencesInner) HasConfidence() bool {
	if o != nil && !IsNil(o.Confidence) {
		return true
	}

	return false
}

// SetConfidence gets a reference to the given int32 and assigns it to the Confidence field.
func (o *DetectSentiment200ResponseSentencesInner) SetConfidence(v int32) {
	o.Confidence = &v
}

func (o DetectSentiment200ResponseSentencesInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o DetectSentiment200ResponseSentencesInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if !IsNil(o.Length) {
		toSerialize["length"] = o.Length
	}
	if o.Sentiment.IsSet() {
		toSerialize["sentiment"] = o.Sentiment.Get()
	}
	if !IsNil(o.Offset) {
		toSerialize["offset"] = o.Offset
	}
	if !IsNil(o.Confidence) {
		toSerialize["confidence"] = o.Confidence
	}
	return toSerialize, nil
}

type NullableDetectSentiment200ResponseSentencesInner struct {
	value *DetectSentiment200ResponseSentencesInner
	isSet bool
}

func (v NullableDetectSentiment200ResponseSentencesInner) Get() *DetectSentiment200ResponseSentencesInner {
	return v.value
}

func (v *NullableDetectSentiment200ResponseSentencesInner) Set(val *DetectSentiment200ResponseSentencesInner) {
	v.value = val
	v.isSet = true
}

func (v NullableDetectSentiment200ResponseSentencesInner) IsSet() bool {
	return v.isSet
}

func (v *NullableDetectSentiment200ResponseSentencesInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableDetectSentiment200ResponseSentencesInner(val *DetectSentiment200ResponseSentencesInner) *NullableDetectSentiment200ResponseSentencesInner {
	return &NullableDetectSentiment200ResponseSentencesInner{value: val, isSet: true}
}

func (v NullableDetectSentiment200ResponseSentencesInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableDetectSentiment200ResponseSentencesInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


