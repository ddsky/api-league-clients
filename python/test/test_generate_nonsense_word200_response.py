# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.0
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.generate_nonsense_word200_response import GenerateNonsenseWord200Response

class TestGenerateNonsenseWord200Response(unittest.TestCase):
    """GenerateNonsenseWord200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> GenerateNonsenseWord200Response:
        """Test GenerateNonsenseWord200Response
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `GenerateNonsenseWord200Response`
        """
        model = GenerateNonsenseWord200Response()
        if include_optional:
            return GenerateNonsenseWord200Response(
                word = '',
                rating = 1.337
            )
        else:
            return GenerateNonsenseWord200Response(
        )
        """

    def testGenerateNonsenseWord200Response(self):
        """Test GenerateNonsenseWord200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
