# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.6.4
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
from apileague.models.search_recipes_api200_response_recipes_inner_nutrition import SearchRecipesAPI200ResponseRecipesInnerNutrition
from typing import Optional, Set
from typing_extensions import Self

class SearchRecipesAPI200ResponseRecipesInner(BaseModel):
    """
    SearchRecipesAPI200ResponseRecipesInner
    """ # noqa: E501
    images: Optional[List[Optional[StrictStr]]] = None
    nutrition: Optional[SearchRecipesAPI200ResponseRecipesInnerNutrition] = None
    id: Optional[StrictInt] = None
    title: Optional[StrictStr] = None
    __properties: ClassVar[List[str]] = ["images", "nutrition", "id", "title"]

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
        """Create an instance of SearchRecipesAPI200ResponseRecipesInner from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of nutrition
        if self.nutrition:
            _dict['nutrition'] = self.nutrition.to_dict()
        # set to None if title (nullable) is None
        # and model_fields_set contains the field
        if self.title is None and "title" in self.model_fields_set:
            _dict['title'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of SearchRecipesAPI200ResponseRecipesInner from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "images": obj.get("images"),
            "nutrition": SearchRecipesAPI200ResponseRecipesInnerNutrition.from_dict(obj["nutrition"]) if obj.get("nutrition") is not None else None,
            "id": obj.get("id"),
            "title": obj.get("title")
        })
        return _obj


