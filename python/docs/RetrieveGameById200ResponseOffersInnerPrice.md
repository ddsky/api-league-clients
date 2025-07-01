# RetrieveGameById200ResponseOffersInnerPrice


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **str** |  | [optional] 
**discount_percent** | **int** |  | [optional] 
**value** | **float** |  | [optional] 
**initial** | **float** |  | [optional] 

## Example

```python
from apileague.models.retrieve_game_by_id200_response_offers_inner_price import RetrieveGameById200ResponseOffersInnerPrice

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveGameById200ResponseOffersInnerPrice from a JSON string
retrieve_game_by_id200_response_offers_inner_price_instance = RetrieveGameById200ResponseOffersInnerPrice.from_json(json)
# print the JSON string representation of the object
print(RetrieveGameById200ResponseOffersInnerPrice.to_json())

# convert the object into a dict
retrieve_game_by_id200_response_offers_inner_price_dict = retrieve_game_by_id200_response_offers_inner_price_instance.to_dict()
# create an instance of RetrieveGameById200ResponseOffersInnerPrice from a dict
retrieve_game_by_id200_response_offers_inner_price_from_dict = RetrieveGameById200ResponseOffersInnerPrice.from_dict(retrieve_game_by_id200_response_offers_inner_price_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


