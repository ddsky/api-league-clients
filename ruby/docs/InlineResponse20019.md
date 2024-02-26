# OpenapiClient::InlineResponse20019

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number_of_words** | **Integer** |  | [optional] |
| **number_of_sentences** | **Integer** |  | [optional] |
| **readability** | [**InlineResponse20019Readability**](InlineResponse20019Readability.md) |  | [optional] |
| **skimmability** | [**InlineResponse20019Skimmability**](InlineResponse20019Skimmability.md) |  | [optional] |
| **interestingness** | [**InlineResponse20019Interestingness**](InlineResponse20019Interestingness.md) |  | [optional] |
| **style** | [**InlineResponse20019Style**](InlineResponse20019Style.md) |  | [optional] |
| **total_score** | **Float** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InlineResponse20019.new(
  number_of_words: null,
  number_of_sentences: null,
  readability: null,
  skimmability: null,
  interestingness: null,
  style: null,
  total_score: null
)
```

