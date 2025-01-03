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

from apileague.models.extract_news_api200_response_images_inner import ExtractNewsAPI200ResponseImagesInner

class TestExtractNewsAPI200ResponseImagesInner(unittest.TestCase):
    """ExtractNewsAPI200ResponseImagesInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ExtractNewsAPI200ResponseImagesInner:
        """Test ExtractNewsAPI200ResponseImagesInner
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ExtractNewsAPI200ResponseImagesInner`
        """
        model = ExtractNewsAPI200ResponseImagesInner()
        if include_optional:
            return ExtractNewsAPI200ResponseImagesInner(
                width = 56,
                title = '',
                url = '',
                height = 56
            )
        else:
            return ExtractNewsAPI200ResponseImagesInner(
        )
        """

    def testExtractNewsAPI200ResponseImagesInner(self):
        """Test ExtractNewsAPI200ResponseImagesInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
