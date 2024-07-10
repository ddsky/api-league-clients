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

from apileague.models.retrieve_recipe_information200_response_nutrition_caloric_breakdown import RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown

class TestRetrieveRecipeInformation200ResponseNutritionCaloricBreakdown(unittest.TestCase):
    """RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown:
        """Test RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown`
        """
        model = RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown()
        if include_optional:
            return RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown(
                percent_fat = 1.337,
                percent_carbs = 1.337,
                percent_protein = 1.337
            )
        else:
            return RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown(
        )
        """

    def testRetrieveRecipeInformation200ResponseNutritionCaloricBreakdown(self):
        """Test RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
