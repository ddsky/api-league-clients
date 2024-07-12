# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.4.2
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.api.media_api import MediaApi


class TestMediaApi(unittest.TestCase):
    """MediaApi unit test stubs"""

    def setUp(self) -> None:
        self.api = MediaApi()

    def tearDown(self) -> None:
        pass

    def test_detect_main_image_color(self) -> None:
        """Test case for detect_main_image_color

        Detect Main Image Color
        """
        pass

    def test_rescale_image(self) -> None:
        """Test case for rescale_image

        Rescale Image
        """
        pass

    def test_search_royalty_free_images(self) -> None:
        """Test case for search_royalty_free_images

        Search Royalty Free Images
        """
        pass


if __name__ == '__main__':
    unittest.main()
