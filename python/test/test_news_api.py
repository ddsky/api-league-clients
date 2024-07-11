# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.4.1
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.api.news_api import NewsApi


class TestNewsApi(unittest.TestCase):
    """NewsApi unit test stubs"""

    def setUp(self) -> None:
        self.api = NewsApi()

    def tearDown(self) -> None:
        pass

    def test_extract_news(self) -> None:
        """Test case for extract_news

        Extract News
        """
        pass

    def test_search_news(self) -> None:
        """Test case for search_news

        Search News
        """
        pass

    def test_top_news(self) -> None:
        """Test case for top_news

        Top News
        """
        pass


if __name__ == '__main__':
    unittest.main()
