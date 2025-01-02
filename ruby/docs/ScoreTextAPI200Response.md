# OpenapiClient::ScoreTextAPI200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number_of_words** | **Integer** |  | [optional] |
| **number_of_sentences** | **Integer** |  | [optional] |
| **readability** | [**ScoreTextAPI200ResponseReadability**](ScoreTextAPI200ResponseReadability.md) |  | [optional] |
| **skimmability** | [**ScoreTextAPI200ResponseSkimmability**](ScoreTextAPI200ResponseSkimmability.md) |  | [optional] |
| **interestingness** | [**ScoreTextAPI200ResponseInterestingness**](ScoreTextAPI200ResponseInterestingness.md) |  | [optional] |
| **style** | [**ScoreTextAPI200ResponseStyle**](ScoreTextAPI200ResponseStyle.md) |  | [optional] |
| **total_score** | **Float** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ScoreTextAPI200Response.new(
  number_of_words: null,
  number_of_sentences: null,
  readability: null,
  skimmability: null,
  interestingness: null,
  style: null,
  total_score: null
)
```

