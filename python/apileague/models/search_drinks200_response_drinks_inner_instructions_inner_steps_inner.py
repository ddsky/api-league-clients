# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.6.2
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, ConfigDict, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional
from apileague.models.search_drinks200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner import SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner
from typing import Optional, Set
from typing_extensions import Self

class SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner(BaseModel):
    """
    SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner
    """ # noqa: E501
    number: Optional[StrictInt] = None
    ingredients: Optional[List[SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner]] = None
    equipment: Optional[List[Optional[StrictStr]]] = None
    step: Optional[StrictStr] = None
    __properties: ClassVar[List[str]] = ["number", "ingredients", "equipment", "step"]

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
        """Create an instance of SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of each item in ingredients (list)
        _items = []
        if self.ingredients:
            for _item in self.ingredients:
                if _item:
                    _items.append(_item.to_dict())
            _dict['ingredients'] = _items
        # set to None if step (nullable) is None
        # and model_fields_set contains the field
        if self.step is None and "step" in self.model_fields_set:
            _dict['step'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "number": obj.get("number"),
            "ingredients": [SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.from_dict(_item) for _item in obj["ingredients"]] if obj.get("ingredients") is not None else None,
            "equipment": obj.get("equipment"),
            "step": obj.get("step")
        })
        return _obj


