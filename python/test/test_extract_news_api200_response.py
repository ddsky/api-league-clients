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

from apileague.models.extract_news_api200_response import ExtractNewsAPI200Response

class TestExtractNewsAPI200Response(unittest.TestCase):
    """ExtractNewsAPI200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ExtractNewsAPI200Response:
        """Test ExtractNewsAPI200Response
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ExtractNewsAPI200Response`
        """
        model = ExtractNewsAPI200Response()
        if include_optional:
            return ExtractNewsAPI200Response(
                title = '',
                text = '',
                url = '',
                images = [
                    apileague.models.extract_news_api_200_response_images_inner.extractNewsAPI_200_response_images_inner(
                        width = 56, 
                        title = '', 
                        url = '', 
                        height = 56, )
                    ],
                videos = [
                    apileague.models.extract_news_api_200_response_videos_inner.extractNewsAPI_200_response_videos_inner(
                        summary = '', 
                        duration = 56, 
                        thumbnail = '', 
                        title = '', 
                        url = '', )
                    ],
                publish_date = '',
                authors = [
                    ''
                    ],
                language = ''
            )
        else:
            return ExtractNewsAPI200Response(
        )
        """

    def testExtractNewsAPI200Response(self):
        """Test ExtractNewsAPI200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
