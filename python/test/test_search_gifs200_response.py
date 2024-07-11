# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.4.1
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.search_gifs200_response import SearchGifs200Response

class TestSearchGifs200Response(unittest.TestCase):
    """SearchGifs200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchGifs200Response:
        """Test SearchGifs200Response
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchGifs200Response`
        """
        model = SearchGifs200Response()
        if include_optional:
            return SearchGifs200Response(
                images = [
                    apileague.models.search_gifs_200_response_images_inner.searchGifs_200_response_images_inner(
                        width = 56, 
                        url = '', 
                        height = 56, )
                    ]
            )
        else:
            return SearchGifs200Response(
        )
        """

    def testSearchGifs200Response(self):
        """Test SearchGifs200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
