# RetrieveGameById200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **int32** |  | [optional] 
**Name** | Pointer to **NullableString** |  | [optional] 
**Image** | Pointer to **NullableString** |  | [optional] 
**Gameplay** | Pointer to **NullableString** |  | [optional] 
**Link** | Pointer to **NullableString** |  | [optional] 
**XUrl** | Pointer to **NullableString** |  | [optional] 
**Rating** | Pointer to [**RetrieveGameById200ResponseRating**](RetrieveGameById200ResponseRating.md) |  | [optional] 
**Description** | Pointer to **NullableString** |  | [optional] 
**ShortDescription** | Pointer to **NullableString** |  | [optional] 
**ReleaseDate** | Pointer to **NullableString** |  | [optional] 
**Developer** | Pointer to **NullableString** |  | [optional] 
**Playtime** | Pointer to [**RetrieveGameById200ResponsePlaytime**](RetrieveGameById200ResponsePlaytime.md) |  | [optional] 
**Platforms** | Pointer to [**[]SearchGamesAPI200ResponseResultsInnerPlatformsInner**](SearchGamesAPI200ResponseResultsInnerPlatformsInner.md) |  | [optional] 
**Tags** | Pointer to **[]string** |  | [optional] 
**Genres** | Pointer to [**[]SearchGamesAPI200ResponseResultsInnerPlatformsInner**](SearchGamesAPI200ResponseResultsInnerPlatformsInner.md) |  | [optional] 
**Genre** | Pointer to **NullableString** |  | [optional] 
**Themes** | Pointer to [**[]SearchGamesAPI200ResponseResultsInnerPlatformsInner**](SearchGamesAPI200ResponseResultsInnerPlatformsInner.md) |  | [optional] 
**AdultOnly** | Pointer to **bool** |  | [optional] 
**PlayModes** | Pointer to [**[]SearchGamesAPI200ResponseResultsInnerPlatformsInner**](SearchGamesAPI200ResponseResultsInnerPlatformsInner.md) |  | [optional] 
**Screenshots** | Pointer to **[]string** |  | [optional] 
**Videos** | Pointer to **[]string** |  | [optional] 
**Offers** | Pointer to [**[]RetrieveGameById200ResponseOffersInner**](RetrieveGameById200ResponseOffersInner.md) |  | [optional] 
**OfficialStores** | Pointer to [**[]RetrieveGameById200ResponseOfficialStoresInner**](RetrieveGameById200ResponseOfficialStoresInner.md) |  | [optional] 
**MicroTrailer** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewRetrieveGameById200Response

`func NewRetrieveGameById200Response() *RetrieveGameById200Response`

NewRetrieveGameById200Response instantiates a new RetrieveGameById200Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRetrieveGameById200ResponseWithDefaults

`func NewRetrieveGameById200ResponseWithDefaults() *RetrieveGameById200Response`

NewRetrieveGameById200ResponseWithDefaults instantiates a new RetrieveGameById200Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *RetrieveGameById200Response) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *RetrieveGameById200Response) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *RetrieveGameById200Response) SetId(v int32)`

SetId sets Id field to given value.

### HasId

`func (o *RetrieveGameById200Response) HasId() bool`

HasId returns a boolean if a field has been set.

### GetName

`func (o *RetrieveGameById200Response) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *RetrieveGameById200Response) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *RetrieveGameById200Response) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *RetrieveGameById200Response) HasName() bool`

HasName returns a boolean if a field has been set.

### SetNameNil

`func (o *RetrieveGameById200Response) SetNameNil(b bool)`

 SetNameNil sets the value for Name to be an explicit nil

### UnsetName
`func (o *RetrieveGameById200Response) UnsetName()`

UnsetName ensures that no value is present for Name, not even an explicit nil
### GetImage

`func (o *RetrieveGameById200Response) GetImage() string`

GetImage returns the Image field if non-nil, zero value otherwise.

### GetImageOk

`func (o *RetrieveGameById200Response) GetImageOk() (*string, bool)`

GetImageOk returns a tuple with the Image field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImage

`func (o *RetrieveGameById200Response) SetImage(v string)`

SetImage sets Image field to given value.

### HasImage

`func (o *RetrieveGameById200Response) HasImage() bool`

HasImage returns a boolean if a field has been set.

### SetImageNil

`func (o *RetrieveGameById200Response) SetImageNil(b bool)`

 SetImageNil sets the value for Image to be an explicit nil

### UnsetImage
`func (o *RetrieveGameById200Response) UnsetImage()`

UnsetImage ensures that no value is present for Image, not even an explicit nil
### GetGameplay

`func (o *RetrieveGameById200Response) GetGameplay() string`

GetGameplay returns the Gameplay field if non-nil, zero value otherwise.

### GetGameplayOk

`func (o *RetrieveGameById200Response) GetGameplayOk() (*string, bool)`

GetGameplayOk returns a tuple with the Gameplay field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGameplay

`func (o *RetrieveGameById200Response) SetGameplay(v string)`

SetGameplay sets Gameplay field to given value.

### HasGameplay

`func (o *RetrieveGameById200Response) HasGameplay() bool`

HasGameplay returns a boolean if a field has been set.

### SetGameplayNil

`func (o *RetrieveGameById200Response) SetGameplayNil(b bool)`

 SetGameplayNil sets the value for Gameplay to be an explicit nil

### UnsetGameplay
`func (o *RetrieveGameById200Response) UnsetGameplay()`

UnsetGameplay ensures that no value is present for Gameplay, not even an explicit nil
### GetLink

`func (o *RetrieveGameById200Response) GetLink() string`

GetLink returns the Link field if non-nil, zero value otherwise.

### GetLinkOk

`func (o *RetrieveGameById200Response) GetLinkOk() (*string, bool)`

GetLinkOk returns a tuple with the Link field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLink

`func (o *RetrieveGameById200Response) SetLink(v string)`

SetLink sets Link field to given value.

### HasLink

`func (o *RetrieveGameById200Response) HasLink() bool`

HasLink returns a boolean if a field has been set.

### SetLinkNil

`func (o *RetrieveGameById200Response) SetLinkNil(b bool)`

 SetLinkNil sets the value for Link to be an explicit nil

### UnsetLink
`func (o *RetrieveGameById200Response) UnsetLink()`

UnsetLink ensures that no value is present for Link, not even an explicit nil
### GetXUrl

`func (o *RetrieveGameById200Response) GetXUrl() string`

GetXUrl returns the XUrl field if non-nil, zero value otherwise.

### GetXUrlOk

`func (o *RetrieveGameById200Response) GetXUrlOk() (*string, bool)`

GetXUrlOk returns a tuple with the XUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetXUrl

`func (o *RetrieveGameById200Response) SetXUrl(v string)`

SetXUrl sets XUrl field to given value.

### HasXUrl

`func (o *RetrieveGameById200Response) HasXUrl() bool`

HasXUrl returns a boolean if a field has been set.

### SetXUrlNil

`func (o *RetrieveGameById200Response) SetXUrlNil(b bool)`

 SetXUrlNil sets the value for XUrl to be an explicit nil

### UnsetXUrl
`func (o *RetrieveGameById200Response) UnsetXUrl()`

UnsetXUrl ensures that no value is present for XUrl, not even an explicit nil
### GetRating

`func (o *RetrieveGameById200Response) GetRating() RetrieveGameById200ResponseRating`

GetRating returns the Rating field if non-nil, zero value otherwise.

### GetRatingOk

`func (o *RetrieveGameById200Response) GetRatingOk() (*RetrieveGameById200ResponseRating, bool)`

GetRatingOk returns a tuple with the Rating field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRating

`func (o *RetrieveGameById200Response) SetRating(v RetrieveGameById200ResponseRating)`

SetRating sets Rating field to given value.

### HasRating

`func (o *RetrieveGameById200Response) HasRating() bool`

HasRating returns a boolean if a field has been set.

### GetDescription

`func (o *RetrieveGameById200Response) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *RetrieveGameById200Response) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *RetrieveGameById200Response) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *RetrieveGameById200Response) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *RetrieveGameById200Response) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *RetrieveGameById200Response) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetShortDescription

`func (o *RetrieveGameById200Response) GetShortDescription() string`

GetShortDescription returns the ShortDescription field if non-nil, zero value otherwise.

### GetShortDescriptionOk

`func (o *RetrieveGameById200Response) GetShortDescriptionOk() (*string, bool)`

GetShortDescriptionOk returns a tuple with the ShortDescription field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetShortDescription

`func (o *RetrieveGameById200Response) SetShortDescription(v string)`

SetShortDescription sets ShortDescription field to given value.

### HasShortDescription

`func (o *RetrieveGameById200Response) HasShortDescription() bool`

HasShortDescription returns a boolean if a field has been set.

### SetShortDescriptionNil

`func (o *RetrieveGameById200Response) SetShortDescriptionNil(b bool)`

 SetShortDescriptionNil sets the value for ShortDescription to be an explicit nil

### UnsetShortDescription
`func (o *RetrieveGameById200Response) UnsetShortDescription()`

UnsetShortDescription ensures that no value is present for ShortDescription, not even an explicit nil
### GetReleaseDate

`func (o *RetrieveGameById200Response) GetReleaseDate() string`

GetReleaseDate returns the ReleaseDate field if non-nil, zero value otherwise.

### GetReleaseDateOk

`func (o *RetrieveGameById200Response) GetReleaseDateOk() (*string, bool)`

GetReleaseDateOk returns a tuple with the ReleaseDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReleaseDate

`func (o *RetrieveGameById200Response) SetReleaseDate(v string)`

SetReleaseDate sets ReleaseDate field to given value.

### HasReleaseDate

`func (o *RetrieveGameById200Response) HasReleaseDate() bool`

HasReleaseDate returns a boolean if a field has been set.

### SetReleaseDateNil

`func (o *RetrieveGameById200Response) SetReleaseDateNil(b bool)`

 SetReleaseDateNil sets the value for ReleaseDate to be an explicit nil

### UnsetReleaseDate
`func (o *RetrieveGameById200Response) UnsetReleaseDate()`

UnsetReleaseDate ensures that no value is present for ReleaseDate, not even an explicit nil
### GetDeveloper

`func (o *RetrieveGameById200Response) GetDeveloper() string`

GetDeveloper returns the Developer field if non-nil, zero value otherwise.

### GetDeveloperOk

`func (o *RetrieveGameById200Response) GetDeveloperOk() (*string, bool)`

GetDeveloperOk returns a tuple with the Developer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeveloper

`func (o *RetrieveGameById200Response) SetDeveloper(v string)`

SetDeveloper sets Developer field to given value.

### HasDeveloper

`func (o *RetrieveGameById200Response) HasDeveloper() bool`

HasDeveloper returns a boolean if a field has been set.

### SetDeveloperNil

`func (o *RetrieveGameById200Response) SetDeveloperNil(b bool)`

 SetDeveloperNil sets the value for Developer to be an explicit nil

### UnsetDeveloper
`func (o *RetrieveGameById200Response) UnsetDeveloper()`

UnsetDeveloper ensures that no value is present for Developer, not even an explicit nil
### GetPlaytime

`func (o *RetrieveGameById200Response) GetPlaytime() RetrieveGameById200ResponsePlaytime`

GetPlaytime returns the Playtime field if non-nil, zero value otherwise.

### GetPlaytimeOk

`func (o *RetrieveGameById200Response) GetPlaytimeOk() (*RetrieveGameById200ResponsePlaytime, bool)`

GetPlaytimeOk returns a tuple with the Playtime field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPlaytime

`func (o *RetrieveGameById200Response) SetPlaytime(v RetrieveGameById200ResponsePlaytime)`

SetPlaytime sets Playtime field to given value.

### HasPlaytime

`func (o *RetrieveGameById200Response) HasPlaytime() bool`

HasPlaytime returns a boolean if a field has been set.

### GetPlatforms

`func (o *RetrieveGameById200Response) GetPlatforms() []SearchGamesAPI200ResponseResultsInnerPlatformsInner`

GetPlatforms returns the Platforms field if non-nil, zero value otherwise.

### GetPlatformsOk

`func (o *RetrieveGameById200Response) GetPlatformsOk() (*[]SearchGamesAPI200ResponseResultsInnerPlatformsInner, bool)`

GetPlatformsOk returns a tuple with the Platforms field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPlatforms

`func (o *RetrieveGameById200Response) SetPlatforms(v []SearchGamesAPI200ResponseResultsInnerPlatformsInner)`

SetPlatforms sets Platforms field to given value.

### HasPlatforms

`func (o *RetrieveGameById200Response) HasPlatforms() bool`

HasPlatforms returns a boolean if a field has been set.

### GetTags

`func (o *RetrieveGameById200Response) GetTags() []*string`

GetTags returns the Tags field if non-nil, zero value otherwise.

### GetTagsOk

`func (o *RetrieveGameById200Response) GetTagsOk() (*[]*string, bool)`

GetTagsOk returns a tuple with the Tags field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTags

`func (o *RetrieveGameById200Response) SetTags(v []*string)`

SetTags sets Tags field to given value.

### HasTags

`func (o *RetrieveGameById200Response) HasTags() bool`

HasTags returns a boolean if a field has been set.

### GetGenres

`func (o *RetrieveGameById200Response) GetGenres() []SearchGamesAPI200ResponseResultsInnerPlatformsInner`

GetGenres returns the Genres field if non-nil, zero value otherwise.

### GetGenresOk

`func (o *RetrieveGameById200Response) GetGenresOk() (*[]SearchGamesAPI200ResponseResultsInnerPlatformsInner, bool)`

GetGenresOk returns a tuple with the Genres field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGenres

`func (o *RetrieveGameById200Response) SetGenres(v []SearchGamesAPI200ResponseResultsInnerPlatformsInner)`

SetGenres sets Genres field to given value.

### HasGenres

`func (o *RetrieveGameById200Response) HasGenres() bool`

HasGenres returns a boolean if a field has been set.

### GetGenre

`func (o *RetrieveGameById200Response) GetGenre() string`

GetGenre returns the Genre field if non-nil, zero value otherwise.

### GetGenreOk

`func (o *RetrieveGameById200Response) GetGenreOk() (*string, bool)`

GetGenreOk returns a tuple with the Genre field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGenre

`func (o *RetrieveGameById200Response) SetGenre(v string)`

SetGenre sets Genre field to given value.

### HasGenre

`func (o *RetrieveGameById200Response) HasGenre() bool`

HasGenre returns a boolean if a field has been set.

### SetGenreNil

`func (o *RetrieveGameById200Response) SetGenreNil(b bool)`

 SetGenreNil sets the value for Genre to be an explicit nil

### UnsetGenre
`func (o *RetrieveGameById200Response) UnsetGenre()`

UnsetGenre ensures that no value is present for Genre, not even an explicit nil
### GetThemes

`func (o *RetrieveGameById200Response) GetThemes() []SearchGamesAPI200ResponseResultsInnerPlatformsInner`

GetThemes returns the Themes field if non-nil, zero value otherwise.

### GetThemesOk

`func (o *RetrieveGameById200Response) GetThemesOk() (*[]SearchGamesAPI200ResponseResultsInnerPlatformsInner, bool)`

GetThemesOk returns a tuple with the Themes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetThemes

`func (o *RetrieveGameById200Response) SetThemes(v []SearchGamesAPI200ResponseResultsInnerPlatformsInner)`

SetThemes sets Themes field to given value.

### HasThemes

`func (o *RetrieveGameById200Response) HasThemes() bool`

HasThemes returns a boolean if a field has been set.

### GetAdultOnly

`func (o *RetrieveGameById200Response) GetAdultOnly() bool`

GetAdultOnly returns the AdultOnly field if non-nil, zero value otherwise.

### GetAdultOnlyOk

`func (o *RetrieveGameById200Response) GetAdultOnlyOk() (*bool, bool)`

GetAdultOnlyOk returns a tuple with the AdultOnly field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAdultOnly

`func (o *RetrieveGameById200Response) SetAdultOnly(v bool)`

SetAdultOnly sets AdultOnly field to given value.

### HasAdultOnly

`func (o *RetrieveGameById200Response) HasAdultOnly() bool`

HasAdultOnly returns a boolean if a field has been set.

### GetPlayModes

`func (o *RetrieveGameById200Response) GetPlayModes() []SearchGamesAPI200ResponseResultsInnerPlatformsInner`

GetPlayModes returns the PlayModes field if non-nil, zero value otherwise.

### GetPlayModesOk

`func (o *RetrieveGameById200Response) GetPlayModesOk() (*[]SearchGamesAPI200ResponseResultsInnerPlatformsInner, bool)`

GetPlayModesOk returns a tuple with the PlayModes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPlayModes

`func (o *RetrieveGameById200Response) SetPlayModes(v []SearchGamesAPI200ResponseResultsInnerPlatformsInner)`

SetPlayModes sets PlayModes field to given value.

### HasPlayModes

`func (o *RetrieveGameById200Response) HasPlayModes() bool`

HasPlayModes returns a boolean if a field has been set.

### GetScreenshots

`func (o *RetrieveGameById200Response) GetScreenshots() []*string`

GetScreenshots returns the Screenshots field if non-nil, zero value otherwise.

### GetScreenshotsOk

`func (o *RetrieveGameById200Response) GetScreenshotsOk() (*[]*string, bool)`

GetScreenshotsOk returns a tuple with the Screenshots field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScreenshots

`func (o *RetrieveGameById200Response) SetScreenshots(v []*string)`

SetScreenshots sets Screenshots field to given value.

### HasScreenshots

`func (o *RetrieveGameById200Response) HasScreenshots() bool`

HasScreenshots returns a boolean if a field has been set.

### GetVideos

`func (o *RetrieveGameById200Response) GetVideos() []*string`

GetVideos returns the Videos field if non-nil, zero value otherwise.

### GetVideosOk

`func (o *RetrieveGameById200Response) GetVideosOk() (*[]*string, bool)`

GetVideosOk returns a tuple with the Videos field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVideos

`func (o *RetrieveGameById200Response) SetVideos(v []*string)`

SetVideos sets Videos field to given value.

### HasVideos

`func (o *RetrieveGameById200Response) HasVideos() bool`

HasVideos returns a boolean if a field has been set.

### GetOffers

`func (o *RetrieveGameById200Response) GetOffers() []RetrieveGameById200ResponseOffersInner`

GetOffers returns the Offers field if non-nil, zero value otherwise.

### GetOffersOk

`func (o *RetrieveGameById200Response) GetOffersOk() (*[]RetrieveGameById200ResponseOffersInner, bool)`

GetOffersOk returns a tuple with the Offers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOffers

`func (o *RetrieveGameById200Response) SetOffers(v []RetrieveGameById200ResponseOffersInner)`

SetOffers sets Offers field to given value.

### HasOffers

`func (o *RetrieveGameById200Response) HasOffers() bool`

HasOffers returns a boolean if a field has been set.

### GetOfficialStores

`func (o *RetrieveGameById200Response) GetOfficialStores() []RetrieveGameById200ResponseOfficialStoresInner`

GetOfficialStores returns the OfficialStores field if non-nil, zero value otherwise.

### GetOfficialStoresOk

`func (o *RetrieveGameById200Response) GetOfficialStoresOk() (*[]RetrieveGameById200ResponseOfficialStoresInner, bool)`

GetOfficialStoresOk returns a tuple with the OfficialStores field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOfficialStores

`func (o *RetrieveGameById200Response) SetOfficialStores(v []RetrieveGameById200ResponseOfficialStoresInner)`

SetOfficialStores sets OfficialStores field to given value.

### HasOfficialStores

`func (o *RetrieveGameById200Response) HasOfficialStores() bool`

HasOfficialStores returns a boolean if a field has been set.

### GetMicroTrailer

`func (o *RetrieveGameById200Response) GetMicroTrailer() string`

GetMicroTrailer returns the MicroTrailer field if non-nil, zero value otherwise.

### GetMicroTrailerOk

`func (o *RetrieveGameById200Response) GetMicroTrailerOk() (*string, bool)`

GetMicroTrailerOk returns a tuple with the MicroTrailer field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMicroTrailer

`func (o *RetrieveGameById200Response) SetMicroTrailer(v string)`

SetMicroTrailer sets MicroTrailer field to given value.

### HasMicroTrailer

`func (o *RetrieveGameById200Response) HasMicroTrailer() bool`

HasMicroTrailer returns a boolean if a field has been set.

### SetMicroTrailerNil

`func (o *RetrieveGameById200Response) SetMicroTrailerNil(b bool)`

 SetMicroTrailerNil sets the value for MicroTrailer to be an explicit nil

### UnsetMicroTrailer
`func (o *RetrieveGameById200Response) UnsetMicroTrailer()`

UnsetMicroTrailer ensures that no value is present for MicroTrailer, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


