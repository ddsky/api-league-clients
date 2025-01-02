# ExtractNewsAPI200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Title** | Pointer to **NullableString** |  | [optional] 
**Text** | Pointer to **NullableString** |  | [optional] 
**Url** | Pointer to **NullableString** |  | [optional] 
**Images** | Pointer to [**[]ExtractNewsAPI200ResponseImagesInner**](ExtractNewsAPI200ResponseImagesInner.md) |  | [optional] 
**Videos** | Pointer to [**[]ExtractNewsAPI200ResponseVideosInner**](ExtractNewsAPI200ResponseVideosInner.md) |  | [optional] 
**PublishDate** | Pointer to **NullableString** |  | [optional] 
**Authors** | Pointer to **[]string** |  | [optional] 
**Language** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewExtractNewsAPI200Response

`func NewExtractNewsAPI200Response() *ExtractNewsAPI200Response`

NewExtractNewsAPI200Response instantiates a new ExtractNewsAPI200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewExtractNewsAPI200ResponseWithDefaults

`func NewExtractNewsAPI200ResponseWithDefaults() *ExtractNewsAPI200Response`

NewExtractNewsAPI200ResponseWithDefaults instantiates a new ExtractNewsAPI200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTitle

`func (o *ExtractNewsAPI200Response) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *ExtractNewsAPI200Response) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *ExtractNewsAPI200Response) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *ExtractNewsAPI200Response) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### SetTitleNil

`func (o *ExtractNewsAPI200Response) SetTitleNil(b bool)`

 SetTitleNil sets the value for Title to be an explicit nil

### UnsetTitle
`func (o *ExtractNewsAPI200Response) UnsetTitle()`

UnsetTitle ensures that no value is present for Title, not even an explicit nil
### GetText

`func (o *ExtractNewsAPI200Response) GetText() string`

GetText returns the Text field if non-nil, zero value otherwise.

### GetTextOk

`func (o *ExtractNewsAPI200Response) GetTextOk() (*string, bool)`

GetTextOk returns a tuple with the Text field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetText

`func (o *ExtractNewsAPI200Response) SetText(v string)`

SetText sets Text field to given value.

### HasText

`func (o *ExtractNewsAPI200Response) HasText() bool`

HasText returns a boolean if a field has been set.

### SetTextNil

`func (o *ExtractNewsAPI200Response) SetTextNil(b bool)`

 SetTextNil sets the value for Text to be an explicit nil

### UnsetText
`func (o *ExtractNewsAPI200Response) UnsetText()`

UnsetText ensures that no value is present for Text, not even an explicit nil
### GetUrl

`func (o *ExtractNewsAPI200Response) GetUrl() string`

GetUrl returns the Url field if non-nil, zero value otherwise.

### GetUrlOk

`func (o *ExtractNewsAPI200Response) GetUrlOk() (*string, bool)`

GetUrlOk returns a tuple with the Url field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUrl

`func (o *ExtractNewsAPI200Response) SetUrl(v string)`

SetUrl sets Url field to given value.

### HasUrl

`func (o *ExtractNewsAPI200Response) HasUrl() bool`

HasUrl returns a boolean if a field has been set.

### SetUrlNil

`func (o *ExtractNewsAPI200Response) SetUrlNil(b bool)`

 SetUrlNil sets the value for Url to be an explicit nil

### UnsetUrl
`func (o *ExtractNewsAPI200Response) UnsetUrl()`

UnsetUrl ensures that no value is present for Url, not even an explicit nil
### GetImages

`func (o *ExtractNewsAPI200Response) GetImages() []ExtractNewsAPI200ResponseImagesInner`

GetImages returns the Images field if non-nil, zero value otherwise.

### GetImagesOk

`func (o *ExtractNewsAPI200Response) GetImagesOk() (*[]ExtractNewsAPI200ResponseImagesInner, bool)`

GetImagesOk returns a tuple with the Images field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImages

`func (o *ExtractNewsAPI200Response) SetImages(v []ExtractNewsAPI200ResponseImagesInner)`

SetImages sets Images field to given value.

### HasImages

`func (o *ExtractNewsAPI200Response) HasImages() bool`

HasImages returns a boolean if a field has been set.

### GetVideos

`func (o *ExtractNewsAPI200Response) GetVideos() []ExtractNewsAPI200ResponseVideosInner`

GetVideos returns the Videos field if non-nil, zero value otherwise.

### GetVideosOk

`func (o *ExtractNewsAPI200Response) GetVideosOk() (*[]ExtractNewsAPI200ResponseVideosInner, bool)`

GetVideosOk returns a tuple with the Videos field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVideos

`func (o *ExtractNewsAPI200Response) SetVideos(v []ExtractNewsAPI200ResponseVideosInner)`

SetVideos sets Videos field to given value.

### HasVideos

`func (o *ExtractNewsAPI200Response) HasVideos() bool`

HasVideos returns a boolean if a field has been set.

### GetPublishDate

`func (o *ExtractNewsAPI200Response) GetPublishDate() string`

GetPublishDate returns the PublishDate field if non-nil, zero value otherwise.

### GetPublishDateOk

`func (o *ExtractNewsAPI200Response) GetPublishDateOk() (*string, bool)`

GetPublishDateOk returns a tuple with the PublishDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPublishDate

`func (o *ExtractNewsAPI200Response) SetPublishDate(v string)`

SetPublishDate sets PublishDate field to given value.

### HasPublishDate

`func (o *ExtractNewsAPI200Response) HasPublishDate() bool`

HasPublishDate returns a boolean if a field has been set.

### SetPublishDateNil

`func (o *ExtractNewsAPI200Response) SetPublishDateNil(b bool)`

 SetPublishDateNil sets the value for PublishDate to be an explicit nil

### UnsetPublishDate
`func (o *ExtractNewsAPI200Response) UnsetPublishDate()`

UnsetPublishDate ensures that no value is present for PublishDate, not even an explicit nil
### GetAuthors

`func (o *ExtractNewsAPI200Response) GetAuthors() []*string`

GetAuthors returns the Authors field if non-nil, zero value otherwise.

### GetAuthorsOk

`func (o *ExtractNewsAPI200Response) GetAuthorsOk() (*[]*string, bool)`

GetAuthorsOk returns a tuple with the Authors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthors

`func (o *ExtractNewsAPI200Response) SetAuthors(v []*string)`

SetAuthors sets Authors field to given value.

### HasAuthors

`func (o *ExtractNewsAPI200Response) HasAuthors() bool`

HasAuthors returns a boolean if a field has been set.

### GetLanguage

`func (o *ExtractNewsAPI200Response) GetLanguage() string`

GetLanguage returns the Language field if non-nil, zero value otherwise.

### GetLanguageOk

`func (o *ExtractNewsAPI200Response) GetLanguageOk() (*string, bool)`

GetLanguageOk returns a tuple with the Language field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLanguage

`func (o *ExtractNewsAPI200Response) SetLanguage(v string)`

SetLanguage sets Language field to given value.

### HasLanguage

`func (o *ExtractNewsAPI200Response) HasLanguage() bool`

HasLanguage returns a boolean if a field has been set.

### SetLanguageNil

`func (o *ExtractNewsAPI200Response) SetLanguageNil(b bool)`

 SetLanguageNil sets the value for Language to be an explicit nil

### UnsetLanguage
`func (o *ExtractNewsAPI200Response) UnsetLanguage()`

UnsetLanguage ensures that no value is present for Language, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


