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

from apileague.models.extract_content_from_a_web_page200_response import ExtractContentFromAWebPage200Response

class TestExtractContentFromAWebPage200Response(unittest.TestCase):
    """ExtractContentFromAWebPage200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ExtractContentFromAWebPage200Response:
        """Test ExtractContentFromAWebPage200Response
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ExtractContentFromAWebPage200Response`
        """
        model = ExtractContentFromAWebPage200Response()
        if include_optional:
            return ExtractContentFromAWebPage200Response(
                title = '',
                main_text = '',
                main_html = '',
                images = [
                    ''
                    ]
            )
        else:
            return ExtractContentFromAWebPage200Response(
        )
        """

    def testExtractContentFromAWebPage200Response(self):
        """Test ExtractContentFromAWebPage200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
