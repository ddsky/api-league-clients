# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.3.0
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.retrieve_recipe_information200_response_ingredients_inner_measures import RetrieveRecipeInformation200ResponseIngredientsInnerMeasures

class TestRetrieveRecipeInformation200ResponseIngredientsInnerMeasures(unittest.TestCase):
    """RetrieveRecipeInformation200ResponseIngredientsInnerMeasures unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RetrieveRecipeInformation200ResponseIngredientsInnerMeasures:
        """Test RetrieveRecipeInformation200ResponseIngredientsInnerMeasures
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RetrieveRecipeInformation200ResponseIngredientsInnerMeasures`
        """
        model = RetrieveRecipeInformation200ResponseIngredientsInnerMeasures()
        if include_optional:
            return RetrieveRecipeInformation200ResponseIngredientsInnerMeasures(
                metric = apileague.models.retrieve_recipe_information_200_response_ingredients_inner_measures_metric.retrieveRecipeInformation_200_response_ingredients_inner_measures_metric(
                    unit_short = '', 
                    amount = 1.337, 
                    unit_long = '', ),
                us = apileague.models.retrieve_recipe_information_200_response_ingredients_inner_measures_metric.retrieveRecipeInformation_200_response_ingredients_inner_measures_metric(
                    unit_short = '', 
                    amount = 1.337, 
                    unit_long = '', )
            )
        else:
            return RetrieveRecipeInformation200ResponseIngredientsInnerMeasures(
        )
        """

    def testRetrieveRecipeInformation200ResponseIngredientsInnerMeasures(self):
        """Test RetrieveRecipeInformation200ResponseIngredientsInnerMeasures"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
