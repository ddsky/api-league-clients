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

from apileague.models.search_drinks_api200_response_drinks_inner_ingredients_inner import SearchDrinksAPI200ResponseDrinksInnerIngredientsInner

class TestSearchDrinksAPI200ResponseDrinksInnerIngredientsInner(unittest.TestCase):
    """SearchDrinksAPI200ResponseDrinksInnerIngredientsInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchDrinksAPI200ResponseDrinksInnerIngredientsInner:
        """Test SearchDrinksAPI200ResponseDrinksInnerIngredientsInner
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchDrinksAPI200ResponseDrinksInnerIngredientsInner`
        """
        model = SearchDrinksAPI200ResponseDrinksInnerIngredientsInner()
        if include_optional:
            return SearchDrinksAPI200ResponseDrinksInnerIngredientsInner(
                image = '',
                name_clean = '',
                amount = 56,
                unit = '',
                measures = apileague.models.search_drinks_api_200_response_drinks_inner_ingredients_inner_measures.searchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures(
                    metric = apileague.models.search_drinks_api_200_response_drinks_inner_ingredients_inner_measures_metric.searchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric(
                        unit_short = '', 
                        amount = 1.337, 
                        unit_long = '', ), 
                    us = apileague.models.search_drinks_api_200_response_drinks_inner_ingredients_inner_measures_us.searchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_us(
                        unit_short = '', 
                        amount = 56, 
                        unit_long = '', ), ),
                original = '',
                meta = [
                    ''
                    ],
                original_name = '',
                name = '',
                id = 56,
                aisle = '',
                consistency = ''
            )
        else:
            return SearchDrinksAPI200ResponseDrinksInnerIngredientsInner(
        )
        """

    def testSearchDrinksAPI200ResponseDrinksInnerIngredientsInner(self):
        """Test SearchDrinksAPI200ResponseDrinksInnerIngredientsInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
