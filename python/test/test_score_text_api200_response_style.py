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

from apileague.models.score_text_api200_response_style import ScoreTextAPI200ResponseStyle

class TestScoreTextAPI200ResponseStyle(unittest.TestCase):
    """ScoreTextAPI200ResponseStyle unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ScoreTextAPI200ResponseStyle:
        """Test ScoreTextAPI200ResponseStyle
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ScoreTextAPI200ResponseStyle`
        """
        model = ScoreTextAPI200ResponseStyle()
        if include_optional:
            return ScoreTextAPI200ResponseStyle(
                mainscores = apileague.models.score_text_api_200_response_readability_mainscores.scoreTextAPI_200_response_readability_mainscores(
                    total_possible = 56, 
                    total = 56, ),
                subscores = apileague.models.score_text_api_200_response_style_subscores.scoreTextAPI_200_response_style_subscores(
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
            return ScoreTextAPI200ResponseStyle(
        )
        """

    def testScoreTextAPI200ResponseStyle(self):
        """Test ScoreTextAPI200ResponseStyle"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
