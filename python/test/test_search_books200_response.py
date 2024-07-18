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

from apileague.models.search_books200_response import SearchBooks200Response

class TestSearchBooks200Response(unittest.TestCase):
    """SearchBooks200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchBooks200Response:
        """Test SearchBooks200Response
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchBooks200Response`
        """
        model = SearchBooks200Response()
        if include_optional:
            return SearchBooks200Response(
                total_results = 56,
                number = 56,
                offset = 56,
                books = [
                    [
                        apileague.models.search_books_200_response_books_inner_inner.searchBooks_200_response_books_inner_inner(
                            title = '', 
                            image = '', 
                            id = 56, )
                        ]
                    ]
            )
        else:
            return SearchBooks200Response(
        )
        """

    def testSearchBooks200Response(self):
        """Test SearchBooks200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
