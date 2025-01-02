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

from apileague.models.retrieve_recipe_information_api200_response_taste import RetrieveRecipeInformationAPI200ResponseTaste

class TestRetrieveRecipeInformationAPI200ResponseTaste(unittest.TestCase):
    """RetrieveRecipeInformationAPI200ResponseTaste unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RetrieveRecipeInformationAPI200ResponseTaste:
        """Test RetrieveRecipeInformationAPI200ResponseTaste
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RetrieveRecipeInformationAPI200ResponseTaste`
        """
        model = RetrieveRecipeInformationAPI200ResponseTaste()
        if include_optional:
            return RetrieveRecipeInformationAPI200ResponseTaste(
                fattiness = 1.337,
                spiciness = 56,
                saltiness = 56,
                bitterness = 1.337,
                savoriness = 1.337,
                sweetness = 1.337,
                sourness = 1.337
            )
        else:
            return RetrieveRecipeInformationAPI200ResponseTaste(
        )
        """

    def testRetrieveRecipeInformationAPI200ResponseTaste(self):
        """Test RetrieveRecipeInformationAPI200ResponseTaste"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
