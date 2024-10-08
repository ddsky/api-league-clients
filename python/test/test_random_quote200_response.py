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

from apileague.models.random_quote200_response import RandomQuote200Response

class TestRandomQuote200Response(unittest.TestCase):
    """RandomQuote200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RandomQuote200Response:
        """Test RandomQuote200Response
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RandomQuote200Response`
        """
        model = RandomQuote200Response()
        if include_optional:
            return RandomQuote200Response(
                author = '',
                quote = ''
            )
        else:
            return RandomQuote200Response(
        )
        """

    def testRandomQuote200Response(self):
        """Test RandomQuote200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
