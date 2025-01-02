# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.6.4
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.search_drinks_api200_response_drinks_inner_nutrition_ingredient_breakdown_inner import SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner

class TestSearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner(unittest.TestCase):
    """SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner:
        """Test SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner`
        """
        model = SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner()
        if include_optional:
            return SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner(
                name = '',
                amount = 56,
                unit = '',
                id = 56,
                nutrients = [
                    apileague.models.search_drinks_api_200_response_drinks_inner_nutrition_ingredient_breakdown_inner_nutrients_inner.searchDrinksAPI_200_response_drinks_inner_nutrition_ingredient_breakdown_inner_nutrients_inner(
                        name = '', 
                        percent_of_daily_needs = 1.337, 
                        amount = 56, 
                        unit = '', )
                    ]
            )
        else:
            return SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner(
        )
        """

    def testSearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner(self):
        """Test SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
