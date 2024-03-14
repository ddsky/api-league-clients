# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.0
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, Field, StrictBool, StrictFloat, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional, Union
from apileague.models.search_restaurants200_response_restaurants_inner_address import SearchRestaurants200ResponseRestaurantsInnerAddress
from apileague.models.search_restaurants200_response_restaurants_inner_local_hours import SearchRestaurants200ResponseRestaurantsInnerLocalHours
from typing import Optional, Set
from typing_extensions import Self

class SearchRestaurants200ResponseRestaurantsInner(BaseModel):
    """
    SearchRestaurants200ResponseRestaurantsInner
    """ # noqa: E501
    offers_third_party_delivery: Optional[StrictBool] = None
    address: Optional[SearchRestaurants200ResponseRestaurantsInnerAddress] = None
    supports_upc_codes: Optional[StrictBool] = None
    is_open: Optional[StrictBool] = None
    description: Optional[StrictStr] = None
    weighted_rating_value: Optional[StrictInt] = None
    type: Optional[StrictStr] = None
    offers_first_party_delivery: Optional[StrictBool] = None
    aggregated_rating_count: Optional[StrictInt] = None
    pickup_enabled: Optional[StrictBool] = None
    cuisines: Optional[List[Optional[StrictStr]]] = None
    miles: Optional[Union[StrictFloat, StrictInt]] = None
    dollar_signs: Optional[StrictInt] = None
    delivery_enabled: Optional[StrictBool] = None
    name: Optional[StrictStr] = None
    phone_number: Optional[Union[StrictFloat, StrictInt]] = None
    id: Optional[StrictStr] = Field(default=None, alias="_id")
    local_hours: Optional[SearchRestaurants200ResponseRestaurantsInnerLocalHours] = None
    __properties: ClassVar[List[str]] = ["offers_third_party_delivery", "address", "supports_upc_codes", "is_open", "description", "weighted_rating_value", "type", "offers_first_party_delivery", "aggregated_rating_count", "pickup_enabled", "cuisines", "miles", "dollar_signs", "delivery_enabled", "name", "phone_number", "_id", "local_hours"]

    model_config = {
        "populate_by_name": True,
        "validate_assignment": True,
        "protected_namespaces": (),
    }


    def to_str(self) -> str:
        """Returns the string representation of the model using alias"""
        return pprint.pformat(self.model_dump(by_alias=True))

    def to_json(self) -> str:
        """Returns the JSON representation of the model using alias"""
        # TODO: pydantic v2: use .model_dump_json(by_alias=True, exclude_unset=True) instead
        return json.dumps(self.to_dict())

    @classmethod
    def from_json(cls, json_str: str) -> Optional[Self]:
        """Create an instance of SearchRestaurants200ResponseRestaurantsInner from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self) -> Dict[str, Any]:
        """Return the dictionary representation of the model using alias.

        This has the following differences from calling pydantic's
        `self.model_dump(by_alias=True)`:

        * `None` is only added to the output dict for nullable fields that
          were set at model initialization. Other fields with value `None`
          are ignored.
        """
        excluded_fields: Set[str] = set([
        ])

        _dict = self.model_dump(
            by_alias=True,
            exclude=excluded_fields,
            exclude_none=True,
        )
        # override the default output from pydantic by calling `to_dict()` of address
        if self.address:
            _dict['address'] = self.address.to_dict()
        # override the default output from pydantic by calling `to_dict()` of local_hours
        if self.local_hours:
            _dict['local_hours'] = self.local_hours.to_dict()
        # set to None if description (nullable) is None
        # and model_fields_set contains the field
        if self.description is None and "description" in self.model_fields_set:
            _dict['description'] = None

        # set to None if type (nullable) is None
        # and model_fields_set contains the field
        if self.type is None and "type" in self.model_fields_set:
            _dict['type'] = None

        # set to None if name (nullable) is None
        # and model_fields_set contains the field
        if self.name is None and "name" in self.model_fields_set:
            _dict['name'] = None

        # set to None if id (nullable) is None
        # and model_fields_set contains the field
        if self.id is None and "id" in self.model_fields_set:
            _dict['_id'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of SearchRestaurants200ResponseRestaurantsInner from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "offers_third_party_delivery": obj.get("offers_third_party_delivery"),
            "address": SearchRestaurants200ResponseRestaurantsInnerAddress.from_dict(obj["address"]) if obj.get("address") is not None else None,
            "supports_upc_codes": obj.get("supports_upc_codes"),
            "is_open": obj.get("is_open"),
            "description": obj.get("description"),
            "weighted_rating_value": obj.get("weighted_rating_value"),
            "type": obj.get("type"),
            "offers_first_party_delivery": obj.get("offers_first_party_delivery"),
            "aggregated_rating_count": obj.get("aggregated_rating_count"),
            "pickup_enabled": obj.get("pickup_enabled"),
            "cuisines": obj.get("cuisines"),
            "miles": obj.get("miles"),
            "dollar_signs": obj.get("dollar_signs"),
            "delivery_enabled": obj.get("delivery_enabled"),
            "name": obj.get("name"),
            "phone_number": obj.get("phone_number"),
            "_id": obj.get("_id"),
            "local_hours": SearchRestaurants200ResponseRestaurantsInnerLocalHours.from_dict(obj["local_hours"]) if obj.get("local_hours") is not None else None
        })
        return _obj


