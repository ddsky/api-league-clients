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
from apileague.models.retrieve_recipe_information200_response_ingredients_inner_measures import RetrieveRecipeInformation200ResponseIngredientsInnerMeasures
from typing import Optional, Set
from typing_extensions import Self

class RetrieveRecipeInformation200ResponseIngredientsInner(BaseModel):
    """
    RetrieveRecipeInformation200ResponseIngredientsInner
    """ # noqa: E501
    image: Optional[StrictStr] = None
    name_clean: Optional[StrictStr] = None
    amount: Optional[Union[StrictFloat, StrictInt]] = None
    unit: Optional[StrictStr] = None
    measures: Optional[RetrieveRecipeInformation200ResponseIngredientsInnerMeasures] = None
    original: Optional[StrictStr] = None
    meta: Optional[List[Optional[StrictStr]]] = None
    original_name: Optional[StrictStr] = None
    name: Optional[StrictStr] = None
    id: Optional[StrictInt] = None
    aisle: Optional[StrictStr] = None
    consistency: Optional[StrictStr] = None
    __properties: ClassVar[List[str]] = ["image", "name_clean", "amount", "unit", "measures", "original", "meta", "original_name", "name", "id", "aisle", "consistency"]

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
        """Create an instance of RetrieveRecipeInformation200ResponseIngredientsInner from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of measures
        if self.measures:
            _dict['measures'] = self.measures.to_dict()
        # set to None if image (nullable) is None
        # and model_fields_set contains the field
        if self.image is None and "image" in self.model_fields_set:
            _dict['image'] = None

        # set to None if name_clean (nullable) is None
        # and model_fields_set contains the field
        if self.name_clean is None and "name_clean" in self.model_fields_set:
            _dict['name_clean'] = None

        # set to None if unit (nullable) is None
        # and model_fields_set contains the field
        if self.unit is None and "unit" in self.model_fields_set:
            _dict['unit'] = None

        # set to None if original (nullable) is None
        # and model_fields_set contains the field
        if self.original is None and "original" in self.model_fields_set:
            _dict['original'] = None

        # set to None if original_name (nullable) is None
        # and model_fields_set contains the field
        if self.original_name is None and "original_name" in self.model_fields_set:
            _dict['original_name'] = None

        # set to None if name (nullable) is None
        # and model_fields_set contains the field
        if self.name is None and "name" in self.model_fields_set:
            _dict['name'] = None

        # set to None if aisle (nullable) is None
        # and model_fields_set contains the field
        if self.aisle is None and "aisle" in self.model_fields_set:
            _dict['aisle'] = None

        # set to None if consistency (nullable) is None
        # and model_fields_set contains the field
        if self.consistency is None and "consistency" in self.model_fields_set:
            _dict['consistency'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of RetrieveRecipeInformation200ResponseIngredientsInner from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "image": obj.get("image"),
            "name_clean": obj.get("name_clean"),
            "amount": obj.get("amount"),
            "unit": obj.get("unit"),
            "measures": RetrieveRecipeInformation200ResponseIngredientsInnerMeasures.from_dict(obj["measures"]) if obj.get("measures") is not None else None,
            "original": obj.get("original"),
            "meta": obj.get("meta"),
            "original_name": obj.get("original_name"),
            "name": obj.get("name"),
            "id": obj.get("id"),
            "aisle": obj.get("aisle"),
            "consistency": obj.get("consistency")
        })
        return _obj


