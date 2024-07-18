# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.5.0
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.search_royalty_free_images200_response_images_inner import SearchRoyaltyFreeImages200ResponseImagesInner

class TestSearchRoyaltyFreeImages200ResponseImagesInner(unittest.TestCase):
    """SearchRoyaltyFreeImages200ResponseImagesInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchRoyaltyFreeImages200ResponseImagesInner:
        """Test SearchRoyaltyFreeImages200ResponseImagesInner
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchRoyaltyFreeImages200ResponseImagesInner`
        """
        model = SearchRoyaltyFreeImages200ResponseImagesInner()
        if include_optional:
            return SearchRoyaltyFreeImages200ResponseImagesInner(
                width = 56,
                license = apileague.models.search_royalty_free_images_200_response_images_inner_license.searchRoyaltyFreeImages_200_response_images_inner_license(
                    name = '', 
                    link = '', ),
                thumbnail = '',
                id = '',
                url = '',
                height = 56
            )
        else:
            return SearchRoyaltyFreeImages200ResponseImagesInner(
        )
        """

    def testSearchRoyaltyFreeImages200ResponseImagesInner(self):
        """Test SearchRoyaltyFreeImages200ResponseImagesInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
