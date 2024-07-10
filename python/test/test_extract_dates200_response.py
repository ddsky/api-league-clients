# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.4.0
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.extract_dates200_response import ExtractDates200Response

class TestExtractDates200Response(unittest.TestCase):
    """ExtractDates200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ExtractDates200Response:
        """Test ExtractDates200Response
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ExtractDates200Response`
        """
        model = ExtractDates200Response()
        if include_optional:
            return ExtractDates200Response(
                dates = [
                    apileague.models.extract_dates_200_response_dates_inner.extractDates_200_response_dates_inner(
                        start_position = 56, 
                        date = '', 
                        normalized_date = 1.337, 
                        tag = '', 
                        end_position = 56, )
                    ]
            )
        else:
            return ExtractDates200Response(
        )
        """

    def testExtractDates200Response(self):
        """Test ExtractDates200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
