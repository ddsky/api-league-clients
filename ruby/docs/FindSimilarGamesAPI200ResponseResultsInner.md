# OpenapiClient::FindSimilarGamesAPI200ResponseResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image** | **String** |  | [optional] |
| **short_description** | **String** |  | [optional] |
| **micro_trailer** | **String** |  | [optional] |
| **year** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **genre** | **String** |  | [optional] |
| **link** | **String** |  | [optional] |
| **rating** | [**SearchGamesAPI200ResponseResultsInnerRating**](SearchGamesAPI200ResponseResultsInnerRating.md) |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **adult_only** | **Boolean** |  | [optional] |
| **screenshots** | **Array&lt;String&gt;** |  | [optional] |
| **gameplay** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::FindSimilarGamesAPI200ResponseResultsInner.new(
  image: null,
  short_description: null,
  micro_trailer: null,
  year: null,
  name: null,
  genre: null,
  link: null,
  rating: null,
  id: null,
  adult_only: null,
  screenshots: null,
  gameplay: null
)
```

