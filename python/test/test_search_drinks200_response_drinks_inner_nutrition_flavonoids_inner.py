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

from apileague.models.search_drinks200_response_drinks_inner_nutrition_flavonoids_inner import SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner

class TestSearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner(unittest.TestCase):
    """SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner:
        """Test SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner`
        """
        model = SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner()
        if include_optional:
            return SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner(
                name = '',
                amount = 56,
                unit = ''
            )
        else:
            return SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner(
        )
        """

    def testSearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner(self):
        """Test SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
