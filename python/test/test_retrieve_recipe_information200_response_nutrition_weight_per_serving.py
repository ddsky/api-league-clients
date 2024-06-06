# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.2.0
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.retrieve_recipe_information200_response_nutrition_weight_per_serving import RetrieveRecipeInformation200ResponseNutritionWeightPerServing

class TestRetrieveRecipeInformation200ResponseNutritionWeightPerServing(unittest.TestCase):
    """RetrieveRecipeInformation200ResponseNutritionWeightPerServing unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RetrieveRecipeInformation200ResponseNutritionWeightPerServing:
        """Test RetrieveRecipeInformation200ResponseNutritionWeightPerServing
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RetrieveRecipeInformation200ResponseNutritionWeightPerServing`
        """
        model = RetrieveRecipeInformation200ResponseNutritionWeightPerServing()
        if include_optional:
            return RetrieveRecipeInformation200ResponseNutritionWeightPerServing(
                amount = 56,
                unit = ''
            )
        else:
            return RetrieveRecipeInformation200ResponseNutritionWeightPerServing(
        )
        """

    def testRetrieveRecipeInformation200ResponseNutritionWeightPerServing(self):
        """Test RetrieveRecipeInformation200ResponseNutritionWeightPerServing"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
