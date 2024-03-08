# OpenapiClient::ScoreText200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number_of_words** | **Integer** |  | [optional] |
| **number_of_sentences** | **Integer** |  | [optional] |
| **readability** | [**ScoreText200ResponseReadability**](ScoreText200ResponseReadability.md) |  | [optional] |
| **skimmability** | [**ScoreText200ResponseSkimmability**](ScoreText200ResponseSkimmability.md) |  | [optional] |
| **interestingness** | [**ScoreText200ResponseInterestingness**](ScoreText200ResponseInterestingness.md) |  | [optional] |
| **style** | [**ScoreText200ResponseStyle**](ScoreText200ResponseStyle.md) |  | [optional] |
| **total_score** | **Float** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ScoreText200Response.new(
  number_of_words: null,
  number_of_sentences: null,
  readability: null,
  skimmability: null,
  interestingness: null,
  style: null,
  total_score: null
)
```

