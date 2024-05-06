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

from apileague.models.search_books200_response_books_inner import SearchBooks200ResponseBooksInner

class TestSearchBooks200ResponseBooksInner(unittest.TestCase):
    """SearchBooks200ResponseBooksInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchBooks200ResponseBooksInner:
        """Test SearchBooks200ResponseBooksInner
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchBooks200ResponseBooksInner`
        """
        model = SearchBooks200ResponseBooksInner()
        if include_optional:
            return SearchBooks200ResponseBooksInner(
                title = '',
                image = '',
                id = 56
            )
        else:
            return SearchBooks200ResponseBooksInner(
        )
        """

    def testSearchBooks200ResponseBooksInner(self):
        """Test SearchBooks200ResponseBooksInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
