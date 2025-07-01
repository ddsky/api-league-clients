# OpenapiClient::SearchGamesAPI200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sorting** | **Object** |  | [optional] |
| **active_filter_options** | [**Array&lt;SearchGamesAPI200ResponseActiveFilterOptionsInner&gt;**](SearchGamesAPI200ResponseActiveFilterOptionsInner.md) |  | [optional] |
| **query** | **String** |  | [optional] |
| **total_results** | **Integer** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **offset** | **Integer** |  | [optional] |
| **results** | [**Array&lt;SearchGamesAPI200ResponseResultsInner&gt;**](SearchGamesAPI200ResponseResultsInner.md) |  | [optional] |
| **filter_options** | [**Array&lt;SearchGamesAPI200ResponseFilterOptionsInner&gt;**](SearchGamesAPI200ResponseFilterOptionsInner.md) |  | [optional] |
| **sorting_options** | [**Array&lt;SearchGamesAPI200ResponseSortingOptionsInner&gt;**](SearchGamesAPI200ResponseSortingOptionsInner.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SearchGamesAPI200Response.new(
  sorting: null,
  active_filter_options: null,
  query: null,
  total_results: null,
  limit: null,
  offset: null,
  results: null,
  filter_options: null,
  sorting_options: null
)
```

