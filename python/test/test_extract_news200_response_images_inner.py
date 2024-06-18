# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.3.0
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.extract_news200_response_images_inner import ExtractNews200ResponseImagesInner

class TestExtractNews200ResponseImagesInner(unittest.TestCase):
    """ExtractNews200ResponseImagesInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ExtractNews200ResponseImagesInner:
        """Test ExtractNews200ResponseImagesInner
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ExtractNews200ResponseImagesInner`
        """
        model = ExtractNews200ResponseImagesInner()
        if include_optional:
            return ExtractNews200ResponseImagesInner(
                width = 56,
                title = '',
                url = '',
                height = 56
            )
        else:
            return ExtractNews200ResponseImagesInner(
        )
        """

    def testExtractNews200ResponseImagesInner(self):
        """Test ExtractNews200ResponseImagesInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
