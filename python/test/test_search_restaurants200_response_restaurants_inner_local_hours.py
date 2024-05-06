# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.0.0
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.search_restaurants200_response_restaurants_inner_local_hours import SearchRestaurants200ResponseRestaurantsInnerLocalHours

class TestSearchRestaurants200ResponseRestaurantsInnerLocalHours(unittest.TestCase):
    """SearchRestaurants200ResponseRestaurantsInnerLocalHours unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchRestaurants200ResponseRestaurantsInnerLocalHours:
        """Test SearchRestaurants200ResponseRestaurantsInnerLocalHours
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchRestaurants200ResponseRestaurantsInnerLocalHours`
        """
        model = SearchRestaurants200ResponseRestaurantsInnerLocalHours()
        if include_optional:
            return SearchRestaurants200ResponseRestaurantsInnerLocalHours(
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
                pickup = apileague.models.search_restaurants_200_response_restaurants_inner_local_hours_operational.searchRestaurants_200_response_restaurants_inner_local_hours_operational(
                    sunday = '', 
                    saturday = '', 
                    tuesday = '', 
                    thursday = '', 
                    friday = '', 
                    wednesday = '', 
                    monday = '', ),
                dine_in = apileague.models.search_restaurants_200_response_restaurants_inner_local_hours_operational.searchRestaurants_200_response_restaurants_inner_local_hours_operational(
                    sunday = '', 
                    saturday = '', 
                    tuesday = '', 
                    thursday = '', 
                    friday = '', 
                    wednesday = '', 
                    monday = '', )
            )
        else:
            return SearchRestaurants200ResponseRestaurantsInnerLocalHours(
        )
        """

    def testSearchRestaurants200ResponseRestaurantsInnerLocalHours(self):
        """Test SearchRestaurants200ResponseRestaurantsInnerLocalHours"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
