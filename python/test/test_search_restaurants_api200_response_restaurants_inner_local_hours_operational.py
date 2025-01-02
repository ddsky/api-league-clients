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

from apileague.models.search_restaurants_api200_response_restaurants_inner_local_hours_operational import SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational

class TestSearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational(unittest.TestCase):
    """SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational:
        """Test SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational`
        """
        model = SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational()
        if include_optional:
            return SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational(
                sunday = '',
                saturday = '',
                tuesday = '',
                thursday = '',
                friday = '',
                wednesday = '',
                monday = ''
            )
        else:
            return SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational(
        )
        """

    def testSearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational(self):
        """Test SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()