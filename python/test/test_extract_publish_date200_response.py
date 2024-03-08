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

from apileague.models.extract_publish_date200_response import ExtractPublishDate200Response

class TestExtractPublishDate200Response(unittest.TestCase):
    """ExtractPublishDate200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ExtractPublishDate200Response:
        """Test ExtractPublishDate200Response
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ExtractPublishDate200Response`
        """
        model = ExtractPublishDate200Response()
        if include_optional:
            return ExtractPublishDate200Response(
                publish_date = ''
            )
        else:
            return ExtractPublishDate200Response(
        )
        """

    def testExtractPublishDate200Response(self):
        """Test ExtractPublishDate200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
