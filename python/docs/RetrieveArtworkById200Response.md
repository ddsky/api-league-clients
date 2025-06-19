# RetrieveArtworkById200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**title** | **str** |  | [optional] 
**image** | **str** |  | [optional] 
**start_date** | **int** |  | [optional] 
**end_date** | **int** |  | [optional] 
**description** | **str** |  | [optional] 

## Example

```python
from apileague.models.retrieve_artwork_by_id200_response import RetrieveArtworkById200Response

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveArtworkById200Response from a JSON string
retrieve_artwork_by_id200_response_instance = RetrieveArtworkById200Response.from_json(json)
# print the JSON string representation of the object
print(RetrieveArtworkById200Response.to_json())

# convert the object into a dict
retrieve_artwork_by_id200_response_dict = retrieve_artwork_by_id200_response_instance.to_dict()
# create an instance of RetrieveArtworkById200Response from a dict
retrieve_artwork_by_id200_response_from_dict = RetrieveArtworkById200Response.from_dict(retrieve_artwork_by_id200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


