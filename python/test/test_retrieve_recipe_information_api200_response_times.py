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

from apileague.models.retrieve_recipe_information_api200_response_times import RetrieveRecipeInformationAPI200ResponseTimes

class TestRetrieveRecipeInformationAPI200ResponseTimes(unittest.TestCase):
    """RetrieveRecipeInformationAPI200ResponseTimes unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RetrieveRecipeInformationAPI200ResponseTimes:
        """Test RetrieveRecipeInformationAPI200ResponseTimes
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RetrieveRecipeInformationAPI200ResponseTimes`
        """
        model = RetrieveRecipeInformationAPI200ResponseTimes()
        if include_optional:
            return RetrieveRecipeInformationAPI200ResponseTimes(
                total_minutes = 56
            )
        else:
            return RetrieveRecipeInformationAPI200ResponseTimes(
        )
        """

    def testRetrieveRecipeInformationAPI200ResponseTimes(self):
        """Test RetrieveRecipeInformationAPI200ResponseTimes"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
