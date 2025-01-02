# OpenapiClient::ScoreTextAPI200ResponseSkimmabilitySubscores

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bullet_point_ratio_score** | **Array&lt;Integer&gt;** |  | [optional] |
| **image_score** | **Array&lt;Integer&gt;** |  | [optional] |
| **highlighted_word_ratio_score** | **Array&lt;Integer&gt;** |  | [optional] |
| **video_score** | **Array&lt;Integer&gt;** |  | [optional] |
| **paragraph_score** | **Array&lt;Integer&gt;** |  | [optional] |
| **paragraph_headline_ratio_score** | **Array&lt;Integer&gt;** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ScoreTextAPI200ResponseSkimmabilitySubscores.new(
  bullet_point_ratio_score: null,
  image_score: null,
  highlighted_word_ratio_score: null,
  video_score: null,
  paragraph_score: null,
  paragraph_headline_ratio_score: null
)
```

