# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.6.4
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.score_text_api200_response_readability_mainscores import ScoreTextAPI200ResponseReadabilityMainscores

class TestScoreTextAPI200ResponseReadabilityMainscores(unittest.TestCase):
    """ScoreTextAPI200ResponseReadabilityMainscores unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ScoreTextAPI200ResponseReadabilityMainscores:
        """Test ScoreTextAPI200ResponseReadabilityMainscores
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ScoreTextAPI200ResponseReadabilityMainscores`
        """
        model = ScoreTextAPI200ResponseReadabilityMainscores()
        if include_optional:
            return ScoreTextAPI200ResponseReadabilityMainscores(
                total_possible = 56,
                total = 56
            )
        else:
            return ScoreTextAPI200ResponseReadabilityMainscores(
        )
        """

    def testScoreTextAPI200ResponseReadabilityMainscores(self):
        """Test ScoreTextAPI200ResponseReadabilityMainscores"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()