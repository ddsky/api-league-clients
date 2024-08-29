# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.6.3
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.retrieve_recipe_information200_response_nutrition_ingredient_breakdown_inner import RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner

class TestRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner(unittest.TestCase):
    """RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner:
        """Test RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner`
        """
        model = RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner()
        if include_optional:
            return RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner(
                name = '',
                amount = 1.337,
                unit = '',
                id = 56,
                nutrients = [
                    apileague.models.search_drinks_200_response_drinks_inner_nutrition_nutrients_inner.searchDrinks_200_response_drinks_inner_nutrition_nutrients_inner(
                        name = '', 
                        percent_of_daily_needs = 1.337, 
                        amount = 1.337, 
                        unit = '', )
                    ]
            )
        else:
            return RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner(
        )
        """

    def testRetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner(self):
        """Test RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
