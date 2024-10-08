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

from apileague.models.search_royalty_free_images200_response import SearchRoyaltyFreeImages200Response

class TestSearchRoyaltyFreeImages200Response(unittest.TestCase):
    """SearchRoyaltyFreeImages200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchRoyaltyFreeImages200Response:
        """Test SearchRoyaltyFreeImages200Response
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchRoyaltyFreeImages200Response`
        """
        model = SearchRoyaltyFreeImages200Response()
        if include_optional:
            return SearchRoyaltyFreeImages200Response(
                images = [
                    apileague.models.search_royalty_free_images_200_response_images_inner.searchRoyaltyFreeImages_200_response_images_inner(
                        width = 56, 
                        license = apileague.models.search_royalty_free_images_200_response_images_inner_license.searchRoyaltyFreeImages_200_response_images_inner_license(
                            name = '', 
                            link = '', ), 
                        thumbnail = '', 
                        id = '', 
                        url = '', 
                        height = 56, )
                    ]
            )
        else:
            return SearchRoyaltyFreeImages200Response(
        )
        """

    def testSearchRoyaltyFreeImages200Response(self):
        """Test SearchRoyaltyFreeImages200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
