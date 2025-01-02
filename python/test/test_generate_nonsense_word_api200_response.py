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

from apileague.models.generate_nonsense_word_api200_response import GenerateNonsenseWordAPI200Response

class TestGenerateNonsenseWordAPI200Response(unittest.TestCase):
    """GenerateNonsenseWordAPI200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> GenerateNonsenseWordAPI200Response:
        """Test GenerateNonsenseWordAPI200Response
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `GenerateNonsenseWordAPI200Response`
        """
        model = GenerateNonsenseWordAPI200Response()
        if include_optional:
            return GenerateNonsenseWordAPI200Response(
                word = '',
                rating = 1.337
            )
        else:
            return GenerateNonsenseWordAPI200Response(
        )
        """

    def testGenerateNonsenseWordAPI200Response(self):
        """Test GenerateNonsenseWordAPI200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
