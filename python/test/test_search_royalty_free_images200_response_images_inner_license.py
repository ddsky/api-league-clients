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

from apileague.models.search_royalty_free_images200_response_images_inner_license import SearchRoyaltyFreeImages200ResponseImagesInnerLicense

class TestSearchRoyaltyFreeImages200ResponseImagesInnerLicense(unittest.TestCase):
    """SearchRoyaltyFreeImages200ResponseImagesInnerLicense unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchRoyaltyFreeImages200ResponseImagesInnerLicense:
        """Test SearchRoyaltyFreeImages200ResponseImagesInnerLicense
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchRoyaltyFreeImages200ResponseImagesInnerLicense`
        """
        model = SearchRoyaltyFreeImages200ResponseImagesInnerLicense()
        if include_optional:
            return SearchRoyaltyFreeImages200ResponseImagesInnerLicense(
                name = '',
                link = ''
            )
        else:
            return SearchRoyaltyFreeImages200ResponseImagesInnerLicense(
        )
        """

    def testSearchRoyaltyFreeImages200ResponseImagesInnerLicense(self):
        """Test SearchRoyaltyFreeImages200ResponseImagesInnerLicense"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()