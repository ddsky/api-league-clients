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

from apileague.models.correct_spelling200_response import CorrectSpelling200Response

class TestCorrectSpelling200Response(unittest.TestCase):
    """CorrectSpelling200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> CorrectSpelling200Response:
        """Test CorrectSpelling200Response
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `CorrectSpelling200Response`
        """
        model = CorrectSpelling200Response()
        if include_optional:
            return CorrectSpelling200Response(
                corrected_text = ''
            )
        else:
            return CorrectSpelling200Response(
        )
        """

    def testCorrectSpelling200Response(self):
        """Test CorrectSpelling200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
