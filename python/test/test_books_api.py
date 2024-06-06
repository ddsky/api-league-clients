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

from apileague.api.books_api import BooksApi


class TestBooksApi(unittest.TestCase):
    """BooksApi unit test stubs"""

    def setUp(self) -> None:
        self.api = BooksApi()

    def tearDown(self) -> None:
        pass

    def test_find_similar_books(self) -> None:
        """Test case for find_similar_books

        Find Similar Books
        """
        pass

    def test_search_books(self) -> None:
        """Test case for search_books

        Search Books
        """
        pass


if __name__ == '__main__':
    unittest.main()
