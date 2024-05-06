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

from apileague.models.search_web200_response import SearchWeb200Response

class TestSearchWeb200Response(unittest.TestCase):
    """SearchWeb200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchWeb200Response:
        """Test SearchWeb200Response
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchWeb200Response`
        """
        model = SearchWeb200Response()
        if include_optional:
            return SearchWeb200Response(
                results = [
                    apileague.models.search_web_200_response_results_inner.searchWeb_200_response_results_inner(
                        title = '', 
                        summary = '', 
                        url = '', )
                    ]
            )
        else:
            return SearchWeb200Response(
        )
        """

    def testSearchWeb200Response(self):
        """Test SearchWeb200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
