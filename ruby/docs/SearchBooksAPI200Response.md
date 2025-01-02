# OpenapiClient::SearchBooksAPI200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_results** | **Integer** |  | [optional] |
| **number** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |
| **books** | **Array&lt;Array&lt;SearchBooksAPI200ResponseBooksInnerInner&gt;&gt;** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SearchBooksAPI200Response.new(
  total_results: null,
  number: null,
  offset: null,
  books: null
)
```
