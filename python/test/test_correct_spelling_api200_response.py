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

from apileague.models.correct_spelling_api200_response import CorrectSpellingAPI200Response

class TestCorrectSpellingAPI200Response(unittest.TestCase):
    """CorrectSpellingAPI200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> CorrectSpellingAPI200Response:
        """Test CorrectSpellingAPI200Response
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `CorrectSpellingAPI200Response`
        """
        model = CorrectSpellingAPI200Response()
        if include_optional:
            return CorrectSpellingAPI200Response(
                corrected_text = ''
            )
        else:
            return CorrectSpellingAPI200Response(
        )
        """

    def testCorrectSpellingAPI200Response(self):
        """Test CorrectSpellingAPI200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
