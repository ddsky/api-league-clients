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

from apileague.models.score_text_api200_response import ScoreTextAPI200Response

class TestScoreTextAPI200Response(unittest.TestCase):
    """ScoreTextAPI200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ScoreTextAPI200Response:
        """Test ScoreTextAPI200Response
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ScoreTextAPI200Response`
        """
        model = ScoreTextAPI200Response()
        if include_optional:
            return ScoreTextAPI200Response(
                number_of_words = 56,
                number_of_sentences = 56,
                readability = apileague.models.score_text_api_200_response_readability.scoreTextAPI_200_response_readability(
                    mainscores = apileague.models.score_text_api_200_response_readability_mainscores.scoreTextAPI_200_response_readability_mainscores(
                        total_possible = 56, 
                        total = 56, ), 
                    subscores = apileague.models.score_text_api_200_response_readability_subscores.scoreTextAPI_200_response_readability_subscores(
                        reading_time_seconds = 56, 
                        forcast = 1.337, 
                        flesch = 1.337, 
                        smog = 1.337, 
                        ari = 1.337, 
                        lix = 1.337, 
                        coleman_liau = 1.337, 
                        kincaid = 1.337, 
                        fog = 1.337, ), ),
                skimmability = apileague.models.score_text_api_200_response_skimmability.scoreTextAPI_200_response_skimmability(
                    mainscores = apileague.models.score_text_api_200_response_skimmability_mainscores.scoreTextAPI_200_response_skimmability_mainscores(
                        total_possible = 56, 
                        total = 1.337, ), 
                    subscores = apileague.models.score_text_api_200_response_skimmability_subscores.scoreTextAPI_200_response_skimmability_subscores(
                        bullet_point_ratio_score = [
                            56
                            ], 
                        image_score = [
                            56
                            ], 
                        highlighted_word_ratio_score = [
                            56
                            ], 
                        video_score = [
                            56
                            ], 
                        paragraph_score = [
                            56
                            ], 
                        paragraph_headline_ratio_score = [
                            56
                            ], ), ),
                interestingness = apileague.models.score_text_api_200_response_interestingness.scoreTextAPI_200_response_interestingness(
                    mainscores = apileague.models.score_text_api_200_response_skimmability_mainscores.scoreTextAPI_200_response_skimmability_mainscores(
                        total_possible = 56, 
                        total = 1.337, ), 
                    subscores = apileague.models.score_text_api_200_response_interestingness_subscores.scoreTextAPI_200_response_interestingness_subscores(
                        title_rating_score = [
                            56
                            ], 
                        quote_score = [
                            56
                            ], 
                        length_score = [
                            56
                            ], 
                        link_score = [
                            56
                            ], 
                        google_hits_score = [
                            56
                            ], ), ),
                style = apileague.models.score_text_api_200_response_style.scoreTextAPI_200_response_style(
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
                            ], ), ),
                total_score = 1.337
            )
        else:
            return ScoreTextAPI200Response(
        )
        """

    def testScoreTextAPI200Response(self):
        """Test ScoreTextAPI200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
