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

from apileague.models.retrieve_recipe_information200_response_credits import RetrieveRecipeInformation200ResponseCredits

class TestRetrieveRecipeInformation200ResponseCredits(unittest.TestCase):
    """RetrieveRecipeInformation200ResponseCredits unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RetrieveRecipeInformation200ResponseCredits:
        """Test RetrieveRecipeInformation200ResponseCredits
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RetrieveRecipeInformation200ResponseCredits`
        """
        model = RetrieveRecipeInformation200ResponseCredits()
        if include_optional:
            return RetrieveRecipeInformation200ResponseCredits(
                license = '',
                text = '',
                source_name = '',
                source_url = ''
            )
        else:
            return RetrieveRecipeInformation200ResponseCredits(
        )
        """

    def testRetrieveRecipeInformation200ResponseCredits(self):
        """Test RetrieveRecipeInformation200ResponseCredits"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
