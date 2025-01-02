# OpenapiClient::ExtractNewsAPI200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  | [optional] |
| **text** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **images** | [**Array&lt;ExtractNewsAPI200ResponseImagesInner&gt;**](ExtractNewsAPI200ResponseImagesInner.md) |  | [optional] |
| **videos** | [**Array&lt;ExtractNewsAPI200ResponseVideosInner&gt;**](ExtractNewsAPI200ResponseVideosInner.md) |  | [optional] |
| **publish_date** | **String** |  | [optional] |
| **authors** | **Array&lt;String&gt;** |  | [optional] |
| **language** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ExtractNewsAPI200Response.new(
  title: null,
  text: null,
  url: null,
  images: null,
  videos: null,
  publish_date: null,
  authors: null,
  language: null
)
```

