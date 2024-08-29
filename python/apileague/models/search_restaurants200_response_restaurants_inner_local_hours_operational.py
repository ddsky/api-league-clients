# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.6.3
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, ConfigDict, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from typing import Optional, Set
from typing_extensions import Self

class SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational(BaseModel):
    """
    SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
    """ # noqa: E501
    sunday: Optional[StrictStr] = None
    saturday: Optional[StrictStr] = None
    tuesday: Optional[StrictStr] = None
    thursday: Optional[StrictStr] = None
    friday: Optional[StrictStr] = None
    wednesday: Optional[StrictStr] = None
    monday: Optional[StrictStr] = None
    __properties: ClassVar[List[str]] = ["sunday", "saturday", "tuesday", "thursday", "friday", "wednesday", "monday"]

    model_config = ConfigDict(
        populate_by_name=True,
        validate_assignment=True,
        protected_namespaces=(),
    )


    def to_str(self) -> str:
        """Returns the string representation of the model using alias"""
        return pprint.pformat(self.model_dump(by_alias=True))

    def to_json(self) -> str:
        """Returns the JSON representation of the model using alias"""
        # TODO: pydantic v2: use .model_dump_json(by_alias=True, exclude_unset=True) instead
        return json.dumps(self.to_dict())

    @classmethod
    def from_json(cls, json_str: str) -> Optional[Self]:
        """Create an instance of SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational from a JSON string"""
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
        # set to None if sunday (nullable) is None
        # and model_fields_set contains the field
        if self.sunday is None and "sunday" in self.model_fields_set:
            _dict['sunday'] = None

        # set to None if saturday (nullable) is None
        # and model_fields_set contains the field
        if self.saturday is None and "saturday" in self.model_fields_set:
            _dict['saturday'] = None

        # set to None if tuesday (nullable) is None
        # and model_fields_set contains the field
        if self.tuesday is None and "tuesday" in self.model_fields_set:
            _dict['tuesday'] = None

        # set to None if thursday (nullable) is None
        # and model_fields_set contains the field
        if self.thursday is None and "thursday" in self.model_fields_set:
            _dict['thursday'] = None

        # set to None if friday (nullable) is None
        # and model_fields_set contains the field
        if self.friday is None and "friday" in self.model_fields_set:
            _dict['friday'] = None

        # set to None if wednesday (nullable) is None
        # and model_fields_set contains the field
        if self.wednesday is None and "wednesday" in self.model_fields_set:
            _dict['wednesday'] = None

        # set to None if monday (nullable) is None
        # and model_fields_set contains the field
        if self.monday is None and "monday" in self.model_fields_set:
            _dict['monday'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "sunday": obj.get("sunday"),
            "saturday": obj.get("saturday"),
            "tuesday": obj.get("tuesday"),
            "thursday": obj.get("thursday"),
            "friday": obj.get("friday"),
            "wednesday": obj.get("wednesday"),
            "monday": obj.get("monday")
        })
        return _obj


