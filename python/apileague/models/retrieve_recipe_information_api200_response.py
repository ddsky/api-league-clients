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

from pydantic import BaseModel, ConfigDict, StrictFloat, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional, Union
from apileague.models.retrieve_recipe_information_api200_response_credits import RetrieveRecipeInformationAPI200ResponseCredits
from apileague.models.retrieve_recipe_information_api200_response_dietary_properties import RetrieveRecipeInformationAPI200ResponseDietaryProperties
from apileague.models.retrieve_recipe_information_api200_response_ingredients_inner import RetrieveRecipeInformationAPI200ResponseIngredientsInner
from apileague.models.retrieve_recipe_information_api200_response_instructions_inner import RetrieveRecipeInformationAPI200ResponseInstructionsInner
from apileague.models.retrieve_recipe_information_api200_response_nutrition import RetrieveRecipeInformationAPI200ResponseNutrition
from apileague.models.retrieve_recipe_information_api200_response_scores import RetrieveRecipeInformationAPI200ResponseScores
from apileague.models.retrieve_recipe_information_api200_response_taste import RetrieveRecipeInformationAPI200ResponseTaste
from apileague.models.retrieve_recipe_information_api200_response_times import RetrieveRecipeInformationAPI200ResponseTimes
from typing import Optional, Set
from typing_extensions import Self

class RetrieveRecipeInformationAPI200Response(BaseModel):
    """
    RetrieveRecipeInformationAPI200Response
    """ # noqa: E501
    id: Optional[StrictInt] = None
    title: Optional[StrictStr] = None
    servings: Optional[StrictInt] = None
    images: Optional[List[Optional[StrictStr]]] = None
    dietary_properties: Optional[RetrieveRecipeInformationAPI200ResponseDietaryProperties] = None
    price_per_serving: Optional[Union[StrictFloat, StrictInt]] = None
    times: Optional[RetrieveRecipeInformationAPI200ResponseTimes] = None
    nutrition: Optional[RetrieveRecipeInformationAPI200ResponseNutrition] = None
    taste: Optional[RetrieveRecipeInformationAPI200ResponseTaste] = None
    cuisines: Optional[List[Optional[StrictStr]]] = None
    meal_types: Optional[List[Optional[StrictStr]]] = None
    occasions: Optional[List[Optional[StrictStr]]] = None
    ingredients: Optional[List[RetrieveRecipeInformationAPI200ResponseIngredientsInner]] = None
    instructions: Optional[List[RetrieveRecipeInformationAPI200ResponseInstructionsInner]] = None
    credits: Optional[RetrieveRecipeInformationAPI200ResponseCredits] = None
    scores: Optional[RetrieveRecipeInformationAPI200ResponseScores] = None
    __properties: ClassVar[List[str]] = ["id", "title", "servings", "images", "dietary_properties", "price_per_serving", "times", "nutrition", "taste", "cuisines", "meal_types", "occasions", "ingredients", "instructions", "credits", "scores"]

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
        """Create an instance of RetrieveRecipeInformationAPI200Response from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of dietary_properties
        if self.dietary_properties:
            _dict['dietary_properties'] = self.dietary_properties.to_dict()
        # override the default output from pydantic by calling `to_dict()` of times
        if self.times:
            _dict['times'] = self.times.to_dict()
        # override the default output from pydantic by calling `to_dict()` of nutrition
        if self.nutrition:
            _dict['nutrition'] = self.nutrition.to_dict()
        # override the default output from pydantic by calling `to_dict()` of taste
        if self.taste:
            _dict['taste'] = self.taste.to_dict()
        # override the default output from pydantic by calling `to_dict()` of each item in ingredients (list)
        _items = []
        if self.ingredients:
            for _item in self.ingredients:
                if _item:
                    _items.append(_item.to_dict())
            _dict['ingredients'] = _items
        # override the default output from pydantic by calling `to_dict()` of each item in instructions (list)
        _items = []
        if self.instructions:
            for _item in self.instructions:
                if _item:
                    _items.append(_item.to_dict())
            _dict['instructions'] = _items
        # override the default output from pydantic by calling `to_dict()` of credits
        if self.credits:
            _dict['credits'] = self.credits.to_dict()
        # override the default output from pydantic by calling `to_dict()` of scores
        if self.scores:
            _dict['scores'] = self.scores.to_dict()
        # set to None if title (nullable) is None
        # and model_fields_set contains the field
        if self.title is None and "title" in self.model_fields_set:
            _dict['title'] = None

        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of RetrieveRecipeInformationAPI200Response from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "id": obj.get("id"),
            "title": obj.get("title"),
            "servings": obj.get("servings"),
            "images": obj.get("images"),
            "dietary_properties": RetrieveRecipeInformationAPI200ResponseDietaryProperties.from_dict(obj["dietary_properties"]) if obj.get("dietary_properties") is not None else None,
            "price_per_serving": obj.get("price_per_serving"),
            "times": RetrieveRecipeInformationAPI200ResponseTimes.from_dict(obj["times"]) if obj.get("times") is not None else None,
            "nutrition": RetrieveRecipeInformationAPI200ResponseNutrition.from_dict(obj["nutrition"]) if obj.get("nutrition") is not None else None,
            "taste": RetrieveRecipeInformationAPI200ResponseTaste.from_dict(obj["taste"]) if obj.get("taste") is not None else None,
            "cuisines": obj.get("cuisines"),
            "meal_types": obj.get("meal_types"),
            "occasions": obj.get("occasions"),
            "ingredients": [RetrieveRecipeInformationAPI200ResponseIngredientsInner.from_dict(_item) for _item in obj["ingredients"]] if obj.get("ingredients") is not None else None,
            "instructions": [RetrieveRecipeInformationAPI200ResponseInstructionsInner.from_dict(_item) for _item in obj["instructions"]] if obj.get("instructions") is not None else None,
            "credits": RetrieveRecipeInformationAPI200ResponseCredits.from_dict(obj["credits"]) if obj.get("credits") is not None else None,
            "scores": RetrieveRecipeInformationAPI200ResponseScores.from_dict(obj["scores"]) if obj.get("scores") is not None else None
        })
        return _obj


