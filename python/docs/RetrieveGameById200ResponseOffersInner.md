# RetrieveGameById200ResponseOffersInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**store_name** | **str** |  | [optional] 
**title** | **str** |  | [optional] 
**price** | [**RetrieveGameById200ResponseOffersInnerPrice**](RetrieveGameById200ResponseOffersInnerPrice.md) |  | [optional] 
**platform** | **str** |  | [optional] 
**url** | **str** |  | [optional] 

## Example

```python
from apileague.models.retrieve_game_by_id200_response_offers_inner import RetrieveGameById200ResponseOffersInner

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveGameById200ResponseOffersInner from a JSON string
retrieve_game_by_id200_response_offers_inner_instance = RetrieveGameById200ResponseOffersInner.from_json(json)
# print the JSON string representation of the object
print(RetrieveGameById200ResponseOffersInner.to_json())

# convert the object into a dict
retrieve_game_by_id200_response_offers_inner_dict = retrieve_game_by_id200_response_offers_inner_instance.to_dict()
# create an instance of RetrieveGameById200ResponseOffersInner from a dict
retrieve_game_by_id200_response_offers_inner_from_dict = RetrieveGameById200ResponseOffersInner.from_dict(retrieve_game_by_id200_response_offers_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


