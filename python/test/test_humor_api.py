# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.6.2
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.api.humor_api import HumorApi


class TestHumorApi(unittest.TestCase):
    """HumorApi unit test stubs"""

    def setUp(self) -> None:
        self.api = HumorApi()

    def tearDown(self) -> None:
        pass

    def test_generate_nonsense_word(self) -> None:
        """Test case for generate_nonsense_word

        Generate Nonsense Word
        """
        pass

    def test_random_joke(self) -> None:
        """Test case for random_joke

        Random Joke
        """
        pass

    def test_random_meme(self) -> None:
        """Test case for random_meme

        Random Meme
        """
        pass

    def test_search_gifs(self) -> None:
        """Test case for search_gifs

        Search Gifs
        """
        pass

    def test_search_jokes(self) -> None:
        """Test case for search_jokes

        Search Jokes
        """
        pass

    def test_search_memes(self) -> None:
        """Test case for search_memes

        Search Memes
        """
        pass


if __name__ == '__main__':
    unittest.main()
