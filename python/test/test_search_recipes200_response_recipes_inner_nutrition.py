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

from apileague.models.search_recipes200_response_recipes_inner_nutrition import SearchRecipes200ResponseRecipesInnerNutrition

class TestSearchRecipes200ResponseRecipesInnerNutrition(unittest.TestCase):
    """SearchRecipes200ResponseRecipesInnerNutrition unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchRecipes200ResponseRecipesInnerNutrition:
        """Test SearchRecipes200ResponseRecipesInnerNutrition
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchRecipes200ResponseRecipesInnerNutrition`
        """
        model = SearchRecipes200ResponseRecipesInnerNutrition()
        if include_optional:
            return SearchRecipes200ResponseRecipesInnerNutrition(
                nutrients = [
                    apileague.models.search_recipes_200_response_recipes_inner_nutrition_nutrients_inner.searchRecipes_200_response_recipes_inner_nutrition_nutrients_inner(
                        name = '', 
                        amount = 1.337, 
                        unit = '', )
                    ]
            )
        else:
            return SearchRecipes200ResponseRecipesInnerNutrition(
        )
        """

    def testSearchRecipes200ResponseRecipesInnerNutrition(self):
        """Test SearchRecipes200ResponseRecipesInnerNutrition"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
