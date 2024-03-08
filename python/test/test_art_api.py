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

from apileague.api.art_api import ArtApi


class TestArtApi(unittest.TestCase):
    """ArtApi unit test stubs"""

    def setUp(self) -> None:
        self.api = ArtApi()

    def tearDown(self) -> None:
        pass

    def test_image_to_ascii_art_by_url(self) -> None:
        """Test case for image_to_ascii_art_by_url

        Image to Ascii Art by URL
        """
        pass

    def test_random_poem(self) -> None:
        """Test case for random_poem

        Random Poem
        """
        pass


if __name__ == '__main__':
    unittest.main()
