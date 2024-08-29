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

from pydantic import BaseModel, ConfigDict
from typing import Any, ClassVar, Dict, List, Optional
from apileague.models.compute_nutrition200_response_ingredient_breakdown_inner import ComputeNutrition200ResponseIngredientBreakdownInner
from apileague.models.search_drinks200_response_drinks_inner_nutrition_caloric_breakdown import SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown
from apileague.models.search_drinks200_response_drinks_inner_nutrition_flavonoids_inner import SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner
from apileague.models.search_drinks200_response_drinks_inner_nutrition_nutrients_inner import SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner
from apileague.models.search_drinks200_response_drinks_inner_nutrition_weight_per_serving import SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing
from apileague.models.search_recipes200_response_recipes_inner_nutrition_nutrients_inner import SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner
from typing import Optional, Set
from typing_extensions import Self

class ComputeNutrition200Response(BaseModel):
    """
    ComputeNutrition200Response
    """ # noqa: E501
    nutrients: Optional[List[SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner]] = None
    properties: Optional[List[SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner]] = None
    flavonoids: Optional[List[SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner]] = None
    ingredient_breakdown: Optional[List[ComputeNutrition200ResponseIngredientBreakdownInner]] = None
    caloric_breakdown: Optional[SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown] = None
    weight_per_serving: Optional[SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing] = None
    __properties: ClassVar[List[str]] = ["nutrients", "properties", "flavonoids", "ingredient_breakdown", "caloric_breakdown", "weight_per_serving"]

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
        """Create an instance of ComputeNutrition200Response from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of each item in properties (list)
        _items = []
        if self.properties:
            for _item in self.properties:
                if _item:
                    _items.append(_item.to_dict())
            _dict['properties'] = _items
        # override the default output from pydantic by calling `to_dict()` of each item in flavonoids (list)
        _items = []
        if self.flavonoids:
            for _item in self.flavonoids:
                if _item:
                    _items.append(_item.to_dict())
            _dict['flavonoids'] = _items
        # override the default output from pydantic by calling `to_dict()` of each item in ingredient_breakdown (list)
        _items = []
        if self.ingredient_breakdown:
            for _item in self.ingredient_breakdown:
                if _item:
                    _items.append(_item.to_dict())
            _dict['ingredient_breakdown'] = _items
        # override the default output from pydantic by calling `to_dict()` of caloric_breakdown
        if self.caloric_breakdown:
            _dict['caloric_breakdown'] = self.caloric_breakdown.to_dict()
        # override the default output from pydantic by calling `to_dict()` of weight_per_serving
        if self.weight_per_serving:
            _dict['weight_per_serving'] = self.weight_per_serving.to_dict()
        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of ComputeNutrition200Response from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "nutrients": [SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner.from_dict(_item) for _item in obj["nutrients"]] if obj.get("nutrients") is not None else None,
            "properties": [SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner.from_dict(_item) for _item in obj["properties"]] if obj.get("properties") is not None else None,
            "flavonoids": [SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.from_dict(_item) for _item in obj["flavonoids"]] if obj.get("flavonoids") is not None else None,
            "ingredient_breakdown": [ComputeNutrition200ResponseIngredientBreakdownInner.from_dict(_item) for _item in obj["ingredient_breakdown"]] if obj.get("ingredient_breakdown") is not None else None,
            "caloric_breakdown": SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown.from_dict(obj["caloric_breakdown"]) if obj.get("caloric_breakdown") is not None else None,
            "weight_per_serving": SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing.from_dict(obj["weight_per_serving"]) if obj.get("weight_per_serving") is not None else None
        })
        return _obj


