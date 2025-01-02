# OpenapiClient::SearchNewsAPI200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** |  | [optional] |
| **number** | **Integer** |  | [optional] |
| **available** | **Integer** |  | [optional] |
| **news** | [**Array&lt;SearchNewsAPI200ResponseNewsInner&gt;**](SearchNewsAPI200ResponseNewsInner.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SearchNewsAPI200Response.new(
  offset: null,
  number: null,
  available: null,
  news: null
)
```

