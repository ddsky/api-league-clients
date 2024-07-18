# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.5.0
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.search_recipes200_response_recipes_inner import SearchRecipes200ResponseRecipesInner

class TestSearchRecipes200ResponseRecipesInner(unittest.TestCase):
    """SearchRecipes200ResponseRecipesInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchRecipes200ResponseRecipesInner:
        """Test SearchRecipes200ResponseRecipesInner
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchRecipes200ResponseRecipesInner`
        """
        model = SearchRecipes200ResponseRecipesInner()
        if include_optional:
            return SearchRecipes200ResponseRecipesInner(
                images = [
                    ''
                    ],
                nutrition = apileague.models.search_recipes_200_response_recipes_inner_nutrition.searchRecipes_200_response_recipes_inner_nutrition(
                    nutrients = [
                        apileague.models.search_recipes_200_response_recipes_inner_nutrition_nutrients_inner.searchRecipes_200_response_recipes_inner_nutrition_nutrients_inner(
                            name = '', 
                            amount = 1.337, 
                            unit = '', )
                        ], ),
                id = 56,
                title = ''
            )
        else:
            return SearchRecipes200ResponseRecipesInner(
        )
        """

    def testSearchRecipes200ResponseRecipesInner(self):
        """Test SearchRecipes200ResponseRecipesInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
