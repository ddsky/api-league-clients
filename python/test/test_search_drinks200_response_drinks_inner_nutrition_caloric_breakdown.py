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

from apileague.models.search_drinks200_response_drinks_inner_nutrition_caloric_breakdown import SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown

class TestSearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown(unittest.TestCase):
    """SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown:
        """Test SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown`
        """
        model = SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown()
        if include_optional:
            return SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown(
                percent_fat = 1.337,
                percent_carbs = 1.337,
                percent_protein = 1.337
            )
        else:
            return SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown(
        )
        """

    def testSearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown(self):
        """Test SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
