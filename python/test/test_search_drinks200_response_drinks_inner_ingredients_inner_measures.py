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

from apileague.models.search_drinks200_response_drinks_inner_ingredients_inner_measures import SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures

class TestSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures(unittest.TestCase):
    """SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures:
        """Test SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures`
        """
        model = SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures()
        if include_optional:
            return SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures(
                metric = apileague.models.search_drinks_200_response_drinks_inner_ingredients_inner_measures_metric.searchDrinks_200_response_drinks_inner_ingredients_inner_measures_metric(
                    unit_short = '', 
                    amount = 1.337, 
                    unit_long = '', ),
                us = apileague.models.search_drinks_200_response_drinks_inner_ingredients_inner_measures_us.searchDrinks_200_response_drinks_inner_ingredients_inner_measures_us(
                    unit_short = '', 
                    amount = 56, 
                    unit_long = '', )
            )
        else:
            return SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures(
        )
        """

    def testSearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures(self):
        """Test SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
