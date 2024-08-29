# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.6.2
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.search_drinks200_response_drinks_inner_nutrition_ingredient_breakdown_inner_nutrients_inner import SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner

class TestSearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner(unittest.TestCase):
    """SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner:
        """Test SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner`
        """
        model = SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner()
        if include_optional:
            return SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner(
                name = '',
                percent_of_daily_needs = 1.337,
                amount = 56,
                unit = ''
            )
        else:
            return SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner(
        )
        """

    def testSearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner(self):
        """Test SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
