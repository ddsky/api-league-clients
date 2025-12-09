# OpenapiClient::SearchGamesAPI200ResponseResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **year** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **genre** | **String** |  | [optional] |
| **image** | **String** |  | [optional] |
| **link** | **String** |  | [optional] |
| **rating** | [**SearchGamesAPI200ResponseResultsInnerRating**](SearchGamesAPI200ResponseResultsInnerRating.md) |  | [optional] |
| **adult_only** | **Boolean** |  | [optional] |
| **screenshots** | **Array&lt;String&gt;** |  | [optional] |
| **micro_trailer** | **String** |  | [optional] |
| **gameplay** | **String** |  | [optional] |
| **short_description** | **String** |  | [optional] |
| **platforms** | [**Array&lt;SearchGamesAPI200ResponseResultsInnerPlatformsInner&gt;**](SearchGamesAPI200ResponseResultsInnerPlatformsInner.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SearchGamesAPI200ResponseResultsInner.new(
  id: null,
  year: null,
  name: null,
  genre: null,
  image: null,
  link: null,
  rating: null,
  adult_only: null,
  screenshots: null,
  micro_trailer: null,
  gameplay: null,
  short_description: null,
  platforms: null
)
```

