# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.0
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.search_recipes200_response_recipes_inner_nutrition_nutrients_inner import SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner

class TestSearchRecipes200ResponseRecipesInnerNutritionNutrientsInner(unittest.TestCase):
    """SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner:
        """Test SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner`
        """
        model = SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner()
        if include_optional:
            return SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner(
                name = '',
                amount = 1.337,
                unit = ''
            )
        else:
            return SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner(
        )
        """

    def testSearchRecipes200ResponseRecipesInnerNutritionNutrientsInner(self):
        """Test SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
