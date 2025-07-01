# OpenapiClient::SearchGamesAPI200ResponseResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image** | **String** |  | [optional] |
| **short_description** | **String** |  | [optional] |
| **year** | **Integer** |  | [optional] |
| **link** | **String** |  | [optional] |
| **rating** | [**SearchGamesAPI200ResponseResultsInnerRating**](SearchGamesAPI200ResponseResultsInnerRating.md) |  | [optional] |
| **adult_only** | **Boolean** |  | [optional] |
| **screenshots** | **Array&lt;String&gt;** |  | [optional] |
| **platforms** | [**Array&lt;SearchGamesAPI200ResponseResultsInnerPlatformsInner&gt;**](SearchGamesAPI200ResponseResultsInnerPlatformsInner.md) |  | [optional] |
| **micro_trailer** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **genre** | **String** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **gameplay** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SearchGamesAPI200ResponseResultsInner.new(
  image: null,
  short_description: null,
  year: null,
  link: null,
  rating: null,
  adult_only: null,
  screenshots: null,
  platforms: null,
  micro_trailer: null,
  name: null,
  genre: null,
  id: null,
  gameplay: null
)
```

