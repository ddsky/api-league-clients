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

// checks if the ExtractNews200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ExtractNews200Response{}

// ExtractNews200Response struct for ExtractNews200Response
type ExtractNews200Response struct {
	Title NullableString `json:"title,omitempty"`
	Text NullableString `json:"text,omitempty"`
	Url NullableString `json:"url,omitempty"`
	Image NullableString `json:"image,omitempty"`
	PublishDate NullableString `json:"publish_date,omitempty"`
	Author NullableString `json:"author,omitempty"`
	Language NullableString `json:"language,omitempty"`
	SourceCountry NullableString `json:"source_country,omitempty"`
	Sentiment *float32 `json:"sentiment,omitempty"`
}

// NewExtractNews200Response instantiates a new ExtractNews200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewExtractNews200Response() *ExtractNews200Response {
	this := ExtractNews200Response{}
	return &this
}

// NewExtractNews200ResponseWithDefaults instantiates a new ExtractNews200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewExtractNews200ResponseWithDefaults() *ExtractNews200Response {
	this := ExtractNews200Response{}
	return &this
}

// GetTitle returns the Title field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200Response) GetTitle() string {
	if o == nil || IsNil(o.Title.Get()) {
		var ret string
		return ret
	}
	return *o.Title.Get()
}

// GetTitleOk returns a tuple with the Title field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200Response) GetTitleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Title.Get(), o.Title.IsSet()
}

// HasTitle returns a boolean if a field has been set.
func (o *ExtractNews200Response) HasTitle() bool {
	if o != nil && o.Title.IsSet() {
		return true
	}

	return false
}

// SetTitle gets a reference to the given NullableString and assigns it to the Title field.
func (o *ExtractNews200Response) SetTitle(v string) {
	o.Title.Set(&v)
}
// SetTitleNil sets the value for Title to be an explicit nil
func (o *ExtractNews200Response) SetTitleNil() {
	o.Title.Set(nil)
}

// UnsetTitle ensures that no value is present for Title, not even an explicit nil
func (o *ExtractNews200Response) UnsetTitle() {
	o.Title.Unset()
}

// GetText returns the Text field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200Response) GetText() string {
	if o == nil || IsNil(o.Text.Get()) {
		var ret string
		return ret
	}
	return *o.Text.Get()
}

// GetTextOk returns a tuple with the Text field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200Response) GetTextOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Text.Get(), o.Text.IsSet()
}

// HasText returns a boolean if a field has been set.
func (o *ExtractNews200Response) HasText() bool {
	if o != nil && o.Text.IsSet() {
		return true
	}

	return false
}

// SetText gets a reference to the given NullableString and assigns it to the Text field.
func (o *ExtractNews200Response) SetText(v string) {
	o.Text.Set(&v)
}
// SetTextNil sets the value for Text to be an explicit nil
func (o *ExtractNews200Response) SetTextNil() {
	o.Text.Set(nil)
}

// UnsetText ensures that no value is present for Text, not even an explicit nil
func (o *ExtractNews200Response) UnsetText() {
	o.Text.Unset()
}

// GetUrl returns the Url field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200Response) GetUrl() string {
	if o == nil || IsNil(o.Url.Get()) {
		var ret string
		return ret
	}
	return *o.Url.Get()
}

// GetUrlOk returns a tuple with the Url field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200Response) GetUrlOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Url.Get(), o.Url.IsSet()
}

// HasUrl returns a boolean if a field has been set.
func (o *ExtractNews200Response) HasUrl() bool {
	if o != nil && o.Url.IsSet() {
		return true
	}

	return false
}

// SetUrl gets a reference to the given NullableString and assigns it to the Url field.
func (o *ExtractNews200Response) SetUrl(v string) {
	o.Url.Set(&v)
}
// SetUrlNil sets the value for Url to be an explicit nil
func (o *ExtractNews200Response) SetUrlNil() {
	o.Url.Set(nil)
}

// UnsetUrl ensures that no value is present for Url, not even an explicit nil
func (o *ExtractNews200Response) UnsetUrl() {
	o.Url.Unset()
}

// GetImage returns the Image field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200Response) GetImage() string {
	if o == nil || IsNil(o.Image.Get()) {
		var ret string
		return ret
	}
	return *o.Image.Get()
}

// GetImageOk returns a tuple with the Image field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200Response) GetImageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Image.Get(), o.Image.IsSet()
}

// HasImage returns a boolean if a field has been set.
func (o *ExtractNews200Response) HasImage() bool {
	if o != nil && o.Image.IsSet() {
		return true
	}

	return false
}

// SetImage gets a reference to the given NullableString and assigns it to the Image field.
func (o *ExtractNews200Response) SetImage(v string) {
	o.Image.Set(&v)
}
// SetImageNil sets the value for Image to be an explicit nil
func (o *ExtractNews200Response) SetImageNil() {
	o.Image.Set(nil)
}

// UnsetImage ensures that no value is present for Image, not even an explicit nil
func (o *ExtractNews200Response) UnsetImage() {
	o.Image.Unset()
}

// GetPublishDate returns the PublishDate field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200Response) GetPublishDate() string {
	if o == nil || IsNil(o.PublishDate.Get()) {
		var ret string
		return ret
	}
	return *o.PublishDate.Get()
}

// GetPublishDateOk returns a tuple with the PublishDate field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200Response) GetPublishDateOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.PublishDate.Get(), o.PublishDate.IsSet()
}

// HasPublishDate returns a boolean if a field has been set.
func (o *ExtractNews200Response) HasPublishDate() bool {
	if o != nil && o.PublishDate.IsSet() {
		return true
	}

	return false
}

// SetPublishDate gets a reference to the given NullableString and assigns it to the PublishDate field.
func (o *ExtractNews200Response) SetPublishDate(v string) {
	o.PublishDate.Set(&v)
}
// SetPublishDateNil sets the value for PublishDate to be an explicit nil
func (o *ExtractNews200Response) SetPublishDateNil() {
	o.PublishDate.Set(nil)
}

// UnsetPublishDate ensures that no value is present for PublishDate, not even an explicit nil
func (o *ExtractNews200Response) UnsetPublishDate() {
	o.PublishDate.Unset()
}

// GetAuthor returns the Author field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200Response) GetAuthor() string {
	if o == nil || IsNil(o.Author.Get()) {
		var ret string
		return ret
	}
	return *o.Author.Get()
}

// GetAuthorOk returns a tuple with the Author field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200Response) GetAuthorOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Author.Get(), o.Author.IsSet()
}

// HasAuthor returns a boolean if a field has been set.
func (o *ExtractNews200Response) HasAuthor() bool {
	if o != nil && o.Author.IsSet() {
		return true
	}

	return false
}

// SetAuthor gets a reference to the given NullableString and assigns it to the Author field.
func (o *ExtractNews200Response) SetAuthor(v string) {
	o.Author.Set(&v)
}
// SetAuthorNil sets the value for Author to be an explicit nil
func (o *ExtractNews200Response) SetAuthorNil() {
	o.Author.Set(nil)
}

// UnsetAuthor ensures that no value is present for Author, not even an explicit nil
func (o *ExtractNews200Response) UnsetAuthor() {
	o.Author.Unset()
}

// GetLanguage returns the Language field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200Response) GetLanguage() string {
	if o == nil || IsNil(o.Language.Get()) {
		var ret string
		return ret
	}
	return *o.Language.Get()
}

// GetLanguageOk returns a tuple with the Language field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200Response) GetLanguageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Language.Get(), o.Language.IsSet()
}

// HasLanguage returns a boolean if a field has been set.
func (o *ExtractNews200Response) HasLanguage() bool {
	if o != nil && o.Language.IsSet() {
		return true
	}

	return false
}

// SetLanguage gets a reference to the given NullableString and assigns it to the Language field.
func (o *ExtractNews200Response) SetLanguage(v string) {
	o.Language.Set(&v)
}
// SetLanguageNil sets the value for Language to be an explicit nil
func (o *ExtractNews200Response) SetLanguageNil() {
	o.Language.Set(nil)
}

// UnsetLanguage ensures that no value is present for Language, not even an explicit nil
func (o *ExtractNews200Response) UnsetLanguage() {
	o.Language.Unset()
}

// GetSourceCountry returns the SourceCountry field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *ExtractNews200Response) GetSourceCountry() string {
	if o == nil || IsNil(o.SourceCountry.Get()) {
		var ret string
		return ret
	}
	return *o.SourceCountry.Get()
}

// GetSourceCountryOk returns a tuple with the SourceCountry field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *ExtractNews200Response) GetSourceCountryOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.SourceCountry.Get(), o.SourceCountry.IsSet()
}

// HasSourceCountry returns a boolean if a field has been set.
func (o *ExtractNews200Response) HasSourceCountry() bool {
	if o != nil && o.SourceCountry.IsSet() {
		return true
	}

	return false
}

// SetSourceCountry gets a reference to the given NullableString and assigns it to the SourceCountry field.
func (o *ExtractNews200Response) SetSourceCountry(v string) {
	o.SourceCountry.Set(&v)
}
// SetSourceCountryNil sets the value for SourceCountry to be an explicit nil
func (o *ExtractNews200Response) SetSourceCountryNil() {
	o.SourceCountry.Set(nil)
}

// UnsetSourceCountry ensures that no value is present for SourceCountry, not even an explicit nil
func (o *ExtractNews200Response) UnsetSourceCountry() {
	o.SourceCountry.Unset()
}

// GetSentiment returns the Sentiment field value if set, zero value otherwise.
func (o *ExtractNews200Response) GetSentiment() float32 {
	if o == nil || IsNil(o.Sentiment) {
		var ret float32
		return ret
	}
	return *o.Sentiment
}

// GetSentimentOk returns a tuple with the Sentiment field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *ExtractNews200Response) GetSentimentOk() (*float32, bool) {
	if o == nil || IsNil(o.Sentiment) {
		return nil, false
	}
	return o.Sentiment, true
}

// HasSentiment returns a boolean if a field has been set.
func (o *ExtractNews200Response) HasSentiment() bool {
	if o != nil && !IsNil(o.Sentiment) {
		return true
	}

	return false
}

// SetSentiment gets a reference to the given float32 and assigns it to the Sentiment field.
func (o *ExtractNews200Response) SetSentiment(v float32) {
	o.Sentiment = &v
}

func (o ExtractNews200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ExtractNews200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Title.IsSet() {
		toSerialize["title"] = o.Title.Get()
	}
	if o.Text.IsSet() {
		toSerialize["text"] = o.Text.Get()
	}
	if o.Url.IsSet() {
		toSerialize["url"] = o.Url.Get()
	}
	if o.Image.IsSet() {
		toSerialize["image"] = o.Image.Get()
	}
	if o.PublishDate.IsSet() {
		toSerialize["publish_date"] = o.PublishDate.Get()
	}
	if o.Author.IsSet() {
		toSerialize["author"] = o.Author.Get()
	}
	if o.Language.IsSet() {
		toSerialize["language"] = o.Language.Get()
	}
	if o.SourceCountry.IsSet() {
		toSerialize["source_country"] = o.SourceCountry.Get()
	}
	if !IsNil(o.Sentiment) {
		toSerialize["sentiment"] = o.Sentiment
	}
	return toSerialize, nil
}

type NullableExtractNews200Response struct {
	value *ExtractNews200Response
	isSet bool
}

func (v NullableExtractNews200Response) Get() *ExtractNews200Response {
	return v.value
}

func (v *NullableExtractNews200Response) Set(val *ExtractNews200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableExtractNews200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableExtractNews200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableExtractNews200Response(val *ExtractNews200Response) *NullableExtractNews200Response {
	return &NullableExtractNews200Response{value: val, isSet: true}
}

func (v NullableExtractNews200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableExtractNews200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


