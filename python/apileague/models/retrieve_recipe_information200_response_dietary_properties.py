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

from pydantic import BaseModel, ConfigDict, StrictBool, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from typing import Optional, Set
from typing_extensions import Self

class RetrieveRecipeInformation200ResponseDietaryProperties(BaseModel):
    """
    RetrieveRecipeInformation200ResponseDietaryProperties
    """ # noqa: E501
    low_fodmap: Optional[StrictBool] = None
    vegetarian: Optional[StrictBool] = None
    vegan: Optional[StrictBool] = None
    gluten_free: Optional[StrictBool] = None
    dairy_free: Optional[StrictBool] = None
    gaps: Optional[StrictStr] = None
    diets: Optional[List[Optional[StrictStr]]] = None
    __properties: ClassVar[List[str]] = ["low_fodmap", "vegetarian", "vegan", "gluten_free", "dairy_free", "gaps", "diets"]

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
        """Create an instance of RetrieveRecipeInformation200ResponseDietaryProperties from a JSON string"""
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
        # set to None if gaps (nullable) is None
        # and model_fields_set contains the field
        if self.gaps is None and "gaps" in self.model_fields_set:
            _dict['gaps'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of RetrieveRecipeInformation200ResponseDietaryProperties from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "low_fodmap": obj.get("low_fodmap"),
            "vegetarian": obj.get("vegetarian"),
            "vegan": obj.get("vegan"),
            "gluten_free": obj.get("gluten_free"),
            "dairy_free": obj.get("dairy_free"),
            "gaps": obj.get("gaps"),
            "diets": obj.get("diets")
        })
        return _obj


