# OpenapiClient::ScoreTextAPI200ResponseSkimmabilitySubscores

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **highlighted_word_ratio_score** | **Array&lt;Float&gt;** |  | [optional] |
| **bullet_point_ratio_score** | **Array&lt;Float&gt;** |  | [optional] |
| **paragraph_headline_ratio_score** | **Array&lt;Float&gt;** |  | [optional] |
| **image_score** | **Array&lt;Float&gt;** |  | [optional] |
| **video_score** | **Array&lt;Float&gt;** |  | [optional] |
| **paragraph_score** | **Array&lt;Float&gt;** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ScoreTextAPI200ResponseSkimmabilitySubscores.new(
  highlighted_word_ratio_score: null,
  bullet_point_ratio_score: null,
  paragraph_headline_ratio_score: null,
  image_score: null,
  video_score: null,
  paragraph_score: null
)
```

