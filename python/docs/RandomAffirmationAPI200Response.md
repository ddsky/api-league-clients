# RandomAffirmationAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**image** | **str** |  | [optional] 
**affirmation** | **str** |  | [optional] 

## Example

```python
from apileague.models.random_affirmation_api200_response import RandomAffirmationAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of RandomAffirmationAPI200Response from a JSON string
random_affirmation_api200_response_instance = RandomAffirmationAPI200Response.from_json(json)
# print the JSON string representation of the object
print(RandomAffirmationAPI200Response.to_json())

# convert the object into a dict
random_affirmation_api200_response_dict = random_affirmation_api200_response_instance.to_dict()
# create an instance of RandomAffirmationAPI200Response from a dict
random_affirmation_api200_response_from_dict = RandomAffirmationAPI200Response.from_dict(random_affirmation_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


