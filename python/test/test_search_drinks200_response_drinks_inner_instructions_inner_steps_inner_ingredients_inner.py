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

from apileague.models.search_drinks200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner import SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner

class TestSearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner(unittest.TestCase):
    """SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner:
        """Test SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner`
        """
        model = SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner()
        if include_optional:
            return SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner(
                name = '',
                image = '',
                id = 56
            )
        else:
            return SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner(
        )
        """

    def testSearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner(self):
        """Test SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
