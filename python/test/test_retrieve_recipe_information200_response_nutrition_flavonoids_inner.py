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

from apileague.models.retrieve_recipe_information200_response_nutrition_flavonoids_inner import RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner

class TestRetrieveRecipeInformation200ResponseNutritionFlavonoidsInner(unittest.TestCase):
    """RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner:
        """Test RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner`
        """
        model = RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner()
        if include_optional:
            return RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner(
                name = '',
                amount = 56,
                unit = ''
            )
        else:
            return RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner(
        )
        """

    def testRetrieveRecipeInformation200ResponseNutritionFlavonoidsInner(self):
        """Test RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
