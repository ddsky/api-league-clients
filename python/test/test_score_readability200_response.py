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

from apileague.models.score_readability200_response import ScoreReadability200Response

class TestScoreReadability200Response(unittest.TestCase):
    """ScoreReadability200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ScoreReadability200Response:
        """Test ScoreReadability200Response
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ScoreReadability200Response`
        """
        model = ScoreReadability200Response()
        if include_optional:
            return ScoreReadability200Response(
                readability = apileague.models.score_text_200_response_readability.scoreText_200_response_readability(
                    mainscores = apileague.models.score_text_200_response_readability_mainscores.scoreText_200_response_readability_mainscores(
                        total_possible = 56, 
                        total = 56, ), 
                    subscores = apileague.models.score_text_200_response_readability_subscores.scoreText_200_response_readability_subscores(
                        reading_time_seconds = 56, 
                        forcast = 1.337, 
                        flesch = 1.337, 
                        smog = 1.337, 
                        ari = 1.337, 
                        lix = 1.337, 
                        coleman_liau = 1.337, 
                        kincaid = 1.337, 
                        fog = 1.337, ), )
            )
        else:
            return ScoreReadability200Response(
        )
        """

    def testScoreReadability200Response(self):
        """Test ScoreReadability200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
