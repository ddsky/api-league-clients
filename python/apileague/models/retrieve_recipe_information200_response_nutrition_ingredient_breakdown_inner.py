# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.4.1
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, ConfigDict, StrictFloat, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional, Union
from apileague.models.retrieve_recipe_information200_response_nutrition_ingredient_breakdown_inner_nutrients_inner import RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner
from typing import Optional, Set
from typing_extensions import Self

class RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner(BaseModel):
    """
    RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner
    """ # noqa: E501
    name: Optional[StrictStr] = None
    amount: Optional[Union[StrictFloat, StrictInt]] = None
    unit: Optional[StrictStr] = None
    id: Optional[StrictInt] = None
    nutrients: Optional[List[RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner]] = None
    __properties: ClassVar[List[str]] = ["name", "amount", "unit", "id", "nutrients"]

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
        """Create an instance of RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of each item in nutrients (list)
        _items = []
        if self.nutrients:
            for _item in self.nutrients:
                if _item:
                    _items.append(_item.to_dict())
            _dict['nutrients'] = _items
        # set to None if name (nullable) is None
        # and model_fields_set contains the field
        if self.name is None and "name" in self.model_fields_set:
            _dict['name'] = None

        # set to None if unit (nullable) is None
        # and model_fields_set contains the field
        if self.unit is None and "unit" in self.model_fields_set:
            _dict['unit'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "name": obj.get("name"),
            "amount": obj.get("amount"),
            "unit": obj.get("unit"),
            "id": obj.get("id"),
            "nutrients": [RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner.from_dict(_item) for _item in obj["nutrients"]] if obj.get("nutrients") is not None else None
        })
        return _obj


