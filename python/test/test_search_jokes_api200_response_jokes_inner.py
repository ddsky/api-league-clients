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

from apileague.models.search_jokes_api200_response_jokes_inner import SearchJokesAPI200ResponseJokesInner

class TestSearchJokesAPI200ResponseJokesInner(unittest.TestCase):
    """SearchJokesAPI200ResponseJokesInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchJokesAPI200ResponseJokesInner:
        """Test SearchJokesAPI200ResponseJokesInner
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchJokesAPI200ResponseJokesInner`
        """
        model = SearchJokesAPI200ResponseJokesInner()
        if include_optional:
            return SearchJokesAPI200ResponseJokesInner(
                joke = ''
            )
        else:
            return SearchJokesAPI200ResponseJokesInner(
        )
        """

    def testSearchJokesAPI200ResponseJokesInner(self):
        """Test SearchJokesAPI200ResponseJokesInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
