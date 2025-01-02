# VerifyEmailAddressAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **str** |  | [optional] 
**domain** | **str** |  | [optional] 
**first_name** | **str** |  | [optional] 
**middle_name** | **str** |  | [optional] 
**last_name** | **str** |  | [optional] 
**full_name** | **str** |  | [optional] 
**username** | **str** |  | [optional] 
**image** | **str** |  | [optional] 
**result** | **str** |  | [optional] 
**disposable** | **bool** |  | [optional] 
**accept_all** | **bool** |  | [optional] 
**free_provider** | **bool** |  | [optional] 

## Example

```python
from apileague.models.verify_email_address_api200_response import VerifyEmailAddressAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyEmailAddressAPI200Response from a JSON string
verify_email_address_api200_response_instance = VerifyEmailAddressAPI200Response.from_json(json)
# print the JSON string representation of the object
print(VerifyEmailAddressAPI200Response.to_json())

# convert the object into a dict
verify_email_address_api200_response_dict = verify_email_address_api200_response_instance.to_dict()
# create an instance of VerifyEmailAddressAPI200Response from a dict
verify_email_address_api200_response_from_dict = VerifyEmailAddressAPI200Response.from_dict(verify_email_address_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


