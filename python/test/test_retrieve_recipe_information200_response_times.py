# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.4.2
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.retrieve_recipe_information200_response_times import RetrieveRecipeInformation200ResponseTimes

class TestRetrieveRecipeInformation200ResponseTimes(unittest.TestCase):
    """RetrieveRecipeInformation200ResponseTimes unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RetrieveRecipeInformation200ResponseTimes:
        """Test RetrieveRecipeInformation200ResponseTimes
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RetrieveRecipeInformation200ResponseTimes`
        """
        model = RetrieveRecipeInformation200ResponseTimes()
        if include_optional:
            return RetrieveRecipeInformation200ResponseTimes(
                total_minutes = 56
            )
        else:
            return RetrieveRecipeInformation200ResponseTimes(
        )
        """

    def testRetrieveRecipeInformation200ResponseTimes(self):
        """Test RetrieveRecipeInformation200ResponseTimes"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
