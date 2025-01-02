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

from apileague.models.search_restaurants_api200_response import SearchRestaurantsAPI200Response

class TestSearchRestaurantsAPI200Response(unittest.TestCase):
    """SearchRestaurantsAPI200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchRestaurantsAPI200Response:
        """Test SearchRestaurantsAPI200Response
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchRestaurantsAPI200Response`
        """
        model = SearchRestaurantsAPI200Response()
        if include_optional:
            return SearchRestaurantsAPI200Response(
                restaurants = [
                    apileague.models.search_restaurants_api_200_response_restaurants_inner.searchRestaurantsAPI_200_response_restaurants_inner(
                        offers_third_party_delivery = True, 
                        address = apileague.models.search_restaurants_api_200_response_restaurants_inner_address.searchRestaurantsAPI_200_response_restaurants_inner_address(
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
                        _id = '', 
                        local_hours = apileague.models.search_restaurants_api_200_response_restaurants_inner_local_hours.searchRestaurantsAPI_200_response_restaurants_inner_local_hours(
                            operational = apileague.models.search_restaurants_api_200_response_restaurants_inner_local_hours_operational.searchRestaurantsAPI_200_response_restaurants_inner_local_hours_operational(
                                sunday = '', 
                                saturday = '', 
                                tuesday = '', 
                                thursday = '', 
                                friday = '', 
                                wednesday = '', 
                                monday = '', ), 
                            delivery = apileague.models.search_restaurants_api_200_response_restaurants_inner_local_hours_operational.searchRestaurantsAPI_200_response_restaurants_inner_local_hours_operational(
                                sunday = '', 
                                saturday = '', 
                                tuesday = '', 
                                thursday = '', 
                                friday = '', 
                                wednesday = '', 
                                monday = '', ), 
                            pickup = , 
                            dine_in = , ), )
                    ]
            )
        else:
            return SearchRestaurantsAPI200Response(
        )
        """

    def testSearchRestaurantsAPI200Response(self):
        """Test SearchRestaurantsAPI200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()