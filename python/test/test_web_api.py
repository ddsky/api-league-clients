# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.4.0
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.api.web_api import WebApi


class TestWebApi(unittest.TestCase):
    """WebApi unit test stubs"""

    def setUp(self) -> None:
        self.api = WebApi()

    def tearDown(self) -> None:
        pass

    def test_extract_authors(self) -> None:
        """Test case for extract_authors

        Extract Authors
        """
        pass

    def test_extract_content_from_a_web_page(self) -> None:
        """Test case for extract_content_from_a_web_page

        Extract Content from a Web Page
        """
        pass

    def test_extract_publish_date(self) -> None:
        """Test case for extract_publish_date

        Extract Publish Date
        """
        pass

    def test_retrieve_page_rank(self) -> None:
        """Test case for retrieve_page_rank

        Retrieve Page Rank
        """
        pass

    def test_search_web(self) -> None:
        """Test case for search_web

        Search Web
        """
        pass

    def test_verify_email_address(self) -> None:
        """Test case for verify_email_address

        Verify Email Address
        """
        pass


if __name__ == '__main__':
    unittest.main()
