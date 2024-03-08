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

from apileague.models.search_memes200_response import SearchMemes200Response

class TestSearchMemes200Response(unittest.TestCase):
    """SearchMemes200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchMemes200Response:
        """Test SearchMemes200Response
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchMemes200Response`
        """
        model = SearchMemes200Response()
        if include_optional:
            return SearchMemes200Response(
                memes = [
                    apileague.models.search_memes_200_response_memes_inner.searchMemes_200_response_memes_inner(
                        type = '', 
                        description = '', 
                        url = '', )
                    ],
                available = 56
            )
        else:
            return SearchMemes200Response(
        )
        """

    def testSearchMemes200Response(self):
        """Test SearchMemes200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
