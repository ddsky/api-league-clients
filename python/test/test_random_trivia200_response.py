# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.6.3
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.random_trivia200_response import RandomTrivia200Response

class TestRandomTrivia200Response(unittest.TestCase):
    """RandomTrivia200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RandomTrivia200Response:
        """Test RandomTrivia200Response
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RandomTrivia200Response`
        """
        model = RandomTrivia200Response()
        if include_optional:
            return RandomTrivia200Response(
                trivia = ''
            )
        else:
            return RandomTrivia200Response(
        )
        """

    def testRandomTrivia200Response(self):
        """Test RandomTrivia200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
