# OpenapiClient::SearchRecipesAPI200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** |  | [optional] |
| **number** | **Integer** |  | [optional] |
| **recipes** | [**Array&lt;SearchRecipesAPI200ResponseRecipesInner&gt;**](SearchRecipesAPI200ResponseRecipesInner.md) |  | [optional] |
| **total_results** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SearchRecipesAPI200Response.new(
  offset: null,
  number: null,
  recipes: null,
  total_results: null
)
```

