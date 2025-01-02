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

from apileague.models.retrieve_recipe_information_api200_response_nutrition_ingredient_breakdown_inner import RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner

class TestRetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner(unittest.TestCase):
    """RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner:
        """Test RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner`
        """
        model = RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner()
        if include_optional:
            return RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner(
                name = '',
                amount = 1.337,
                unit = '',
                id = 56,
                nutrients = [
                    apileague.models.search_drinks_api_200_response_drinks_inner_nutrition_nutrients_inner.searchDrinksAPI_200_response_drinks_inner_nutrition_nutrients_inner(
                        name = '', 
                        percent_of_daily_needs = 1.337, 
                        amount = 1.337, 
                        unit = '', )
                    ]
            )
        else:
            return RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner(
        )
        """

    def testRetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner(self):
        """Test RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
