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

from apileague.models.score_text200_response_style import ScoreText200ResponseStyle

class TestScoreText200ResponseStyle(unittest.TestCase):
    """ScoreText200ResponseStyle unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ScoreText200ResponseStyle:
        """Test ScoreText200ResponseStyle
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ScoreText200ResponseStyle`
        """
        model = ScoreText200ResponseStyle()
        if include_optional:
            return ScoreText200ResponseStyle(
                mainscores = apileague.models.score_text_200_response_readability_mainscores.scoreText_200_response_readability_mainscores(
                    total_possible = 56, 
                    total = 56, ),
                subscores = apileague.models.score_text_200_response_style_subscores.scoreText_200_response_style_subscores(
                    abbreviation_score = [
                        56
                        ], 
                    style_score = [
                        56
                        ], 
                    spelling_score = [
                        56
                        ], )
            )
        else:
            return ScoreText200ResponseStyle(
        )
        """

    def testScoreText200ResponseStyle(self):
        """Test ScoreText200ResponseStyle"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
