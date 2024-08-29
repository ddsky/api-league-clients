# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.6.2
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.search_restaurants200_response_restaurants_inner_address import SearchRestaurants200ResponseRestaurantsInnerAddress

class TestSearchRestaurants200ResponseRestaurantsInnerAddress(unittest.TestCase):
    """SearchRestaurants200ResponseRestaurantsInnerAddress unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchRestaurants200ResponseRestaurantsInnerAddress:
        """Test SearchRestaurants200ResponseRestaurantsInnerAddress
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchRestaurants200ResponseRestaurantsInnerAddress`
        """
        model = SearchRestaurants200ResponseRestaurantsInnerAddress()
        if include_optional:
            return SearchRestaurants200ResponseRestaurantsInnerAddress(
                zipcode = '',
                country = '',
                city = '',
                latitude = 1.337,
                lon = 1.337,
                street_addr_2 = '',
                state = '',
                street_addr = '',
                lat = 1.337,
                longitude = 1.337
            )
        else:
            return SearchRestaurants200ResponseRestaurantsInnerAddress(
        )
        """

    def testSearchRestaurants200ResponseRestaurantsInnerAddress(self):
        """Test SearchRestaurants200ResponseRestaurantsInnerAddress"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
