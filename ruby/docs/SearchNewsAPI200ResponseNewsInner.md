# OpenapiClient::SearchNewsAPI200ResponseNewsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **title** | **String** |  | [optional] |
| **text** | **String** |  | [optional] |
| **summary** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **image** | **String** |  | [optional] |
| **video** | **String** |  | [optional] |
| **publish_date** | **String** |  | [optional] |
| **authors** | **Array&lt;String&gt;** |  | [optional] |
| **category** | **String** |  | [optional] |
| **language** | **String** |  | [optional] |
| **source_country** | **String** |  | [optional] |
| **sentiment** | **Float** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SearchNewsAPI200ResponseNewsInner.new(
  id: null,
  title: null,
  text: null,
  summary: null,
  url: null,
  image: null,
  video: null,
  publish_date: null,
  authors: null,
  category: null,
  language: null,
  source_country: null,
  sentiment: null
)
```

