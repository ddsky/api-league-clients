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

from apileague.api.knowledge_api import KnowledgeApi


class TestKnowledgeApi(unittest.TestCase):
    """KnowledgeApi unit test stubs"""

    def setUp(self) -> None:
        self.api = KnowledgeApi()

    def tearDown(self) -> None:
        pass

    def test_random_quote(self) -> None:
        """Test case for random_quote

        Random Quote
        """
        pass

    def test_random_trivia(self) -> None:
        """Test case for random_trivia

        Random Trivia
        """
        pass


if __name__ == '__main__':
    unittest.main()
