# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.2.0
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.search_restaurants200_response_restaurants_inner import SearchRestaurants200ResponseRestaurantsInner

class TestSearchRestaurants200ResponseRestaurantsInner(unittest.TestCase):
    """SearchRestaurants200ResponseRestaurantsInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchRestaurants200ResponseRestaurantsInner:
        """Test SearchRestaurants200ResponseRestaurantsInner
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchRestaurants200ResponseRestaurantsInner`
        """
        model = SearchRestaurants200ResponseRestaurantsInner()
        if include_optional:
            return SearchRestaurants200ResponseRestaurantsInner(
                offers_third_party_delivery = True,
                address = apileague.models.search_restaurants_200_response_restaurants_inner_address.searchRestaurants_200_response_restaurants_inner_address(
                    zipcode = '', 
                    country = '', 
                    city = '', 
                    latitude = 1.337, 
                    lon = 1.337, 
                    street_addr_2 = '', 
                    state = '', 
                    street_addr = '', 
                    lat = 1.337, 
                    longitude = 1.337, ),
                supports_upc_codes = True,
                is_open = True,
                description = '',
                weighted_rating_value = 56,
                type = '',
                offers_first_party_delivery = True,
                aggregated_rating_count = 56,
                pickup_enabled = True,
                cuisines = [
                    ''
                    ],
                miles = 1.337,
                dollar_signs = 56,
                delivery_enabled = True,
                name = '',
                phone_number = 1.337,
                id = '',
                local_hours = apileague.models.search_restaurants_200_response_restaurants_inner_local_hours.searchRestaurants_200_response_restaurants_inner_local_hours(
                    operational = apileague.models.search_restaurants_200_response_restaurants_inner_local_hours_operational.searchRestaurants_200_response_restaurants_inner_local_hours_operational(
                        sunday = '', 
                        saturday = '', 
                        tuesday = '', 
                        thursday = '', 
                        friday = '', 
                        wednesday = '', 
                        monday = '', ), 
                    delivery = apileague.models.search_restaurants_200_response_restaurants_inner_local_hours_operational.searchRestaurants_200_response_restaurants_inner_local_hours_operational(
                        sunday = '', 
                        saturday = '', 
                        tuesday = '', 
                        thursday = '', 
                        friday = '', 
                        wednesday = '', 
                        monday = '', ), 
                    pickup = , 
                    dine_in = , )
            )
        else:
            return SearchRestaurants200ResponseRestaurantsInner(
        )
        """

    def testSearchRestaurants200ResponseRestaurantsInner(self):
        """Test SearchRestaurants200ResponseRestaurantsInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
