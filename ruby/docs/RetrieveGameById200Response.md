# OpenapiClient::RetrieveGameById200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **image** | **String** |  | [optional] |
| **gameplay** | **String** |  | [optional] |
| **link** | **String** |  | [optional] |
| **x_url** | **String** |  | [optional] |
| **rating** | [**RetrieveGameById200ResponseRating**](RetrieveGameById200ResponseRating.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **short_description** | **String** |  | [optional] |
| **release_date** | **String** |  | [optional] |
| **developer** | **String** |  | [optional] |
| **playtime** | [**RetrieveGameById200ResponsePlaytime**](RetrieveGameById200ResponsePlaytime.md) |  | [optional] |
| **platforms** | [**Array&lt;SearchGamesAPI200ResponseResultsInnerPlatformsInner&gt;**](SearchGamesAPI200ResponseResultsInnerPlatformsInner.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **genres** | [**Array&lt;SearchGamesAPI200ResponseResultsInnerPlatformsInner&gt;**](SearchGamesAPI200ResponseResultsInnerPlatformsInner.md) |  | [optional] |
| **genre** | **String** |  | [optional] |
| **themes** | [**Array&lt;SearchGamesAPI200ResponseResultsInnerPlatformsInner&gt;**](SearchGamesAPI200ResponseResultsInnerPlatformsInner.md) |  | [optional] |
| **adult_only** | **Boolean** |  | [optional] |
| **play_modes** | [**Array&lt;SearchGamesAPI200ResponseResultsInnerPlatformsInner&gt;**](SearchGamesAPI200ResponseResultsInnerPlatformsInner.md) |  | [optional] |
| **screenshots** | **Array&lt;String&gt;** |  | [optional] |
| **videos** | **Array&lt;String&gt;** |  | [optional] |
| **offers** | [**Array&lt;RetrieveGameById200ResponseOffersInner&gt;**](RetrieveGameById200ResponseOffersInner.md) |  | [optional] |
| **official_stores** | [**Array&lt;RetrieveGameById200ResponseOfficialStoresInner&gt;**](RetrieveGameById200ResponseOfficialStoresInner.md) |  | [optional] |
| **micro_trailer** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RetrieveGameById200Response.new(
  id: null,
  name: null,
  image: null,
  gameplay: null,
  link: null,
  x_url: null,
  rating: null,
  description: null,
  short_description: null,
  release_date: null,
  developer: null,
  playtime: null,
  platforms: null,
  tags: null,
  genres: null,
  genre: null,
  themes: null,
  adult_only: null,
  play_modes: null,
  screenshots: null,
  videos: null,
  offers: null,
  official_stores: null,
  micro_trailer: null
)
```

