# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.6.3
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.search_books200_response_books_inner_inner import SearchBooks200ResponseBooksInnerInner

class TestSearchBooks200ResponseBooksInnerInner(unittest.TestCase):
    """SearchBooks200ResponseBooksInnerInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchBooks200ResponseBooksInnerInner:
        """Test SearchBooks200ResponseBooksInnerInner
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchBooks200ResponseBooksInnerInner`
        """
        model = SearchBooks200ResponseBooksInnerInner()
        if include_optional:
            return SearchBooks200ResponseBooksInnerInner(
                title = '',
                image = '',
                id = 56
            )
        else:
            return SearchBooks200ResponseBooksInnerInner(
        )
        """

    def testSearchBooks200ResponseBooksInnerInner(self):
        """Test SearchBooks200ResponseBooksInnerInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
