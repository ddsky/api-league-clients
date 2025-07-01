# SearchGamesAPI200ResponseResultsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Image** | Pointer to **NullableString** |  | [optional] 
**ShortDescription** | Pointer to **NullableString** |  | [optional] 
**Year** | Pointer to **int32** |  | [optional] 
**Link** | Pointer to **NullableString** |  | [optional] 
**Rating** | Pointer to [**SearchGamesAPI200ResponseResultsInnerRating**](SearchGamesAPI200ResponseResultsInnerRating.md) |  | [optional] 
**AdultOnly** | Pointer to **bool** |  | [optional] 
**Screenshots** | Pointer to **[]string** |  | [optional] 
**Platforms** | Pointer to [**[]SearchGamesAPI200ResponseResultsInnerPlatformsInner**](SearchGamesAPI200ResponseResultsInnerPlatformsInner.md) |  | [optional] 
**MicroTrailer** | Pointer to **NullableString** |  | [optional] 
**Name** | Pointer to **NullableString** |  | [optional] 
**Genre** | Pointer to **NullableString** |  | [optional] 
**Id** | Pointer to **int32** |  | [optional] 
**Gameplay** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewSearchGamesAPI200ResponseResultsInner

`func NewSearchGamesAPI200ResponseResultsInner() *SearchGamesAPI200ResponseResultsInner`

NewSearchGamesAPI200ResponseResultsInner instantiates a new SearchGamesAPI200ResponseResultsInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSearchGamesAPI200ResponseResultsInnerWithDefaults

`func NewSearchGamesAPI200ResponseResultsInnerWithDefaults() *SearchGamesAPI200ResponseResultsInner`

NewSearchGamesAPI200ResponseResultsInnerWithDefaults instantiates a new SearchGamesAPI200ResponseResultsInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetImage

`func (o *SearchGamesAPI200ResponseResultsInner) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *SearchGamesAPI200ResponseResultsInner) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *SearchGamesAPI200ResponseResultsInner) SetImage(v string)`

SetImage sets Image field to given value.

### HasImage

`func (o *SearchGamesAPI200ResponseResultsInner) HasImage() bool`

HasImage returns a boolean if a field has been set.

### SetImageNil

`func (o *SearchGamesAPI200ResponseResultsInner) SetImageNil(b bool)`

 SetImageNil sets the value for Image to be an explicit nil

### UnsetImage
`func (o *SearchGamesAPI200ResponseResultsInner) UnsetImage()`

UnsetImage ensures that no value is present for Image, not even an explicit nil
### GetShortDescription

`func (o *SearchGamesAPI200ResponseResultsInner) GetShortDescription() string`

GetShortDescription returns the ShortDescription field if non-nil, zero value otherwise.

### GetShortDescriptionOk

`func (o *SearchGamesAPI200ResponseResultsInner) GetShortDescriptionOk() (*string, bool)`

GetShortDescriptionOk returns a tuple with the ShortDescription field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetShortDescription

`func (o *SearchGamesAPI200ResponseResultsInner) SetShortDescription(v string)`

SetShortDescription sets ShortDescription field to given value.

### HasShortDescription

`func (o *SearchGamesAPI200ResponseResultsInner) HasShortDescription() bool`

HasShortDescription returns a boolean if a field has been set.

### SetShortDescriptionNil

`func (o *SearchGamesAPI200ResponseResultsInner) SetShortDescriptionNil(b bool)`

 SetShortDescriptionNil sets the value for ShortDescription to be an explicit nil

### UnsetShortDescription
`func (o *SearchGamesAPI200ResponseResultsInner) UnsetShortDescription()`

UnsetShortDescription ensures that no value is present for ShortDescription, not even an explicit nil
### GetYear

`func (o *SearchGamesAPI200ResponseResultsInner) GetYear() int32`

GetYear returns the Year field if non-nil, zero value otherwise.

### GetYearOk

`func (o *SearchGamesAPI200ResponseResultsInner) GetYearOk() (*int32, bool)`

GetYearOk returns a tuple with the Year field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetYear

`func (o *SearchGamesAPI200ResponseResultsInner) SetYear(v int32)`

SetYear sets Year field to given value.

### HasYear

`func (o *SearchGamesAPI200ResponseResultsInner) HasYear() bool`

HasYear returns a boolean if a field has been set.

### GetLink

`func (o *SearchGamesAPI200ResponseResultsInner) GetLink() string`

GetLink returns the Link field if non-nil, zero value otherwise.

### GetLinkOk

`func (o *SearchGamesAPI200ResponseResultsInner) GetLinkOk() (*string, bool)`

GetLinkOk returns a tuple with the Link field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLink

`func (o *SearchGamesAPI200ResponseResultsInner) SetLink(v string)`

SetLink sets Link field to given value.

### HasLink

`func (o *SearchGamesAPI200ResponseResultsInner) HasLink() bool`

HasLink returns a boolean if a field has been set.

### SetLinkNil

`func (o *SearchGamesAPI200ResponseResultsInner) SetLinkNil(b bool)`

 SetLinkNil sets the value for Link to be an explicit nil

### UnsetLink
`func (o *SearchGamesAPI200ResponseResultsInner) UnsetLink()`

UnsetLink ensures that no value is present for Link, not even an explicit nil
### GetRating

`func (o *SearchGamesAPI200ResponseResultsInner) GetRating() SearchGamesAPI200ResponseResultsInnerRating`

GetRating returns the Rating field if non-nil, zero value otherwise.

### GetRatingOk

`func (o *SearchGamesAPI200ResponseResultsInner) GetRatingOk() (*SearchGamesAPI200ResponseResultsInnerRating, bool)`

GetRatingOk returns a tuple with the Rating field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRating

`func (o *SearchGamesAPI200ResponseResultsInner) SetRating(v SearchGamesAPI200ResponseResultsInnerRating)`

SetRating sets Rating field to given value.

### HasRating

`func (o *SearchGamesAPI200ResponseResultsInner) HasRating() bool`

HasRating returns a boolean if a field has been set.

### GetAdultOnly

`func (o *SearchGamesAPI200ResponseResultsInner) GetAdultOnly() bool`

GetAdultOnly returns the AdultOnly field if non-nil, zero value otherwise.

### GetAdultOnlyOk

`func (o *SearchGamesAPI200ResponseResultsInner) GetAdultOnlyOk() (*bool, bool)`

GetAdultOnlyOk returns a tuple with the AdultOnly field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAdultOnly

`func (o *SearchGamesAPI200ResponseResultsInner) SetAdultOnly(v bool)`

SetAdultOnly sets AdultOnly field to given value.

### HasAdultOnly

`func (o *SearchGamesAPI200ResponseResultsInner) HasAdultOnly() bool`

HasAdultOnly returns a boolean if a field has been set.

### GetScreenshots

`func (o *SearchGamesAPI200ResponseResultsInner) GetScreenshots() []*string`

GetScreenshots returns the Screenshots field if non-nil, zero value otherwise.

### GetScreenshotsOk

`func (o *SearchGamesAPI200ResponseResultsInner) GetScreenshotsOk() (*[]*string, bool)`

GetScreenshotsOk returns a tuple with the Screenshots field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScreenshots

`func (o *SearchGamesAPI200ResponseResultsInner) SetScreenshots(v []*string)`

SetScreenshots sets Screenshots field to given value.

### HasScreenshots

`func (o *SearchGamesAPI200ResponseResultsInner) HasScreenshots() bool`

HasScreenshots returns a boolean if a field has been set.

### GetPlatforms

`func (o *SearchGamesAPI200ResponseResultsInner) GetPlatforms() []SearchGamesAPI200ResponseResultsInnerPlatformsInner`

GetPlatforms returns the Platforms field if non-nil, zero value otherwise.

### GetPlatformsOk

`func (o *SearchGamesAPI200ResponseResultsInner) GetPlatformsOk() (*[]SearchGamesAPI200ResponseResultsInnerPlatformsInner, bool)`

GetPlatformsOk returns a tuple with the Platforms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPlatforms

`func (o *SearchGamesAPI200ResponseResultsInner) SetPlatforms(v []SearchGamesAPI200ResponseResultsInnerPlatformsInner)`

SetPlatforms sets Platforms field to given value.

### HasPlatforms

`func (o *SearchGamesAPI200ResponseResultsInner) HasPlatforms() bool`

HasPlatforms returns a boolean if a field has been set.

### GetMicroTrailer

`func (o *SearchGamesAPI200ResponseResultsInner) GetMicroTrailer() string`

GetMicroTrailer returns the MicroTrailer field if non-nil, zero value otherwise.

### GetMicroTrailerOk

`func (o *SearchGamesAPI200ResponseResultsInner) GetMicroTrailerOk() (*string, bool)`

GetMicroTrailerOk returns a tuple with the MicroTrailer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMicroTrailer

`func (o *SearchGamesAPI200ResponseResultsInner) SetMicroTrailer(v string)`

SetMicroTrailer sets MicroTrailer field to given value.

### HasMicroTrailer

`func (o *SearchGamesAPI200ResponseResultsInner) HasMicroTrailer() bool`

HasMicroTrailer returns a boolean if a field has been set.

### SetMicroTrailerNil

`func (o *SearchGamesAPI200ResponseResultsInner) SetMicroTrailerNil(b bool)`

 SetMicroTrailerNil sets the value for MicroTrailer to be an explicit nil

### UnsetMicroTrailer
`func (o *SearchGamesAPI200ResponseResultsInner) UnsetMicroTrailer()`

UnsetMicroTrailer ensures that no value is present for MicroTrailer, not even an explicit nil
### GetName

`func (o *SearchGamesAPI200ResponseResultsInner) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *SearchGamesAPI200ResponseResultsInner) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *SearchGamesAPI200ResponseResultsInner) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *SearchGamesAPI200ResponseResultsInner) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *SearchGamesAPI200ResponseResultsInner) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *SearchGamesAPI200ResponseResultsInner) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetGenre

`func (o *SearchGamesAPI200ResponseResultsInner) GetGenre() string`

GetGenre returns the Genre field if non-nil, zero value otherwise.

### GetGenreOk

`func (o *SearchGamesAPI200ResponseResultsInner) GetGenreOk() (*string, bool)`

GetGenreOk returns a tuple with the Genre field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGenre

`func (o *SearchGamesAPI200ResponseResultsInner) SetGenre(v string)`

SetGenre sets Genre field to given value.

### HasGenre

`func (o *SearchGamesAPI200ResponseResultsInner) HasGenre() bool`

HasGenre returns a boolean if a field has been set.

### SetGenreNil

`func (o *SearchGamesAPI200ResponseResultsInner) SetGenreNil(b bool)`

 SetGenreNil sets the value for Genre to be an explicit nil

### UnsetGenre
`func (o *SearchGamesAPI200ResponseResultsInner) UnsetGenre()`

UnsetGenre ensures that no value is present for Genre, not even an explicit nil
### GetId

`func (o *SearchGamesAPI200ResponseResultsInner) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *SearchGamesAPI200ResponseResultsInner) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *SearchGamesAPI200ResponseResultsInner) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *SearchGamesAPI200ResponseResultsInner) HasId() bool`

HasId returns a boolean if a field has been set.

### GetGameplay

`func (o *SearchGamesAPI200ResponseResultsInner) GetGameplay() string`

GetGameplay returns the Gameplay field if non-nil, zero value otherwise.

### GetGameplayOk

`func (o *SearchGamesAPI200ResponseResultsInner) GetGameplayOk() (*string, bool)`

GetGameplayOk returns a tuple with the Gameplay field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGameplay

`func (o *SearchGamesAPI200ResponseResultsInner) SetGameplay(v string)`

SetGameplay sets Gameplay field to given value.

### HasGameplay

`func (o *SearchGamesAPI200ResponseResultsInner) HasGameplay() bool`

HasGameplay returns a boolean if a field has been set.

### SetGameplayNil

`func (o *SearchGamesAPI200ResponseResultsInner) SetGameplayNil(b bool)`

 SetGameplayNil sets the value for Gameplay to be an explicit nil

### UnsetGameplay
`func (o *SearchGamesAPI200ResponseResultsInner) UnsetGameplay()`

UnsetGameplay ensures that no value is present for Gameplay, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


