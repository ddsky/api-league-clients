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

from apileague.models.retrieve_recipe_information200_response_instructions_inner_steps_inner_ingredients_inner import RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner

class TestRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner(unittest.TestCase):
    """RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner:
        """Test RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner`
        """
        model = RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner()
        if include_optional:
            return RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner(
                name = '',
                image = '',
                id = 56
            )
        else:
            return RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner(
        )
        """

    def testRetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner(self):
        """Test RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
