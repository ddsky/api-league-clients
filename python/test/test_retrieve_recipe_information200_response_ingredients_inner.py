# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.4.0
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.retrieve_recipe_information200_response_ingredients_inner import RetrieveRecipeInformation200ResponseIngredientsInner

class TestRetrieveRecipeInformation200ResponseIngredientsInner(unittest.TestCase):
    """RetrieveRecipeInformation200ResponseIngredientsInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RetrieveRecipeInformation200ResponseIngredientsInner:
        """Test RetrieveRecipeInformation200ResponseIngredientsInner
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RetrieveRecipeInformation200ResponseIngredientsInner`
        """
        model = RetrieveRecipeInformation200ResponseIngredientsInner()
        if include_optional:
            return RetrieveRecipeInformation200ResponseIngredientsInner(
                image = '',
                name_clean = '',
                amount = 1.337,
                unit = '',
                measures = apileague.models.retrieve_recipe_information_200_response_ingredients_inner_measures.retrieveRecipeInformation_200_response_ingredients_inner_measures(
                    metric = apileague.models.retrieve_recipe_information_200_response_ingredients_inner_measures_metric.retrieveRecipeInformation_200_response_ingredients_inner_measures_metric(
                        unit_short = '', 
                        amount = 1.337, 
                        unit_long = '', ), 
                    us = apileague.models.retrieve_recipe_information_200_response_ingredients_inner_measures_metric.retrieveRecipeInformation_200_response_ingredients_inner_measures_metric(
                        unit_short = '', 
                        amount = 1.337, 
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
            return RetrieveRecipeInformation200ResponseIngredientsInner(
        )
        """

    def testRetrieveRecipeInformation200ResponseIngredientsInner(self):
        """Test RetrieveRecipeInformation200ResponseIngredientsInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
