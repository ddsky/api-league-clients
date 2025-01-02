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

from apileague.models.score_text_api200_response_skimmability_subscores import ScoreTextAPI200ResponseSkimmabilitySubscores

class TestScoreTextAPI200ResponseSkimmabilitySubscores(unittest.TestCase):
    """ScoreTextAPI200ResponseSkimmabilitySubscores unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ScoreTextAPI200ResponseSkimmabilitySubscores:
        """Test ScoreTextAPI200ResponseSkimmabilitySubscores
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ScoreTextAPI200ResponseSkimmabilitySubscores`
        """
        model = ScoreTextAPI200ResponseSkimmabilitySubscores()
        if include_optional:
            return ScoreTextAPI200ResponseSkimmabilitySubscores(
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
                    ]
            )
        else:
            return ScoreTextAPI200ResponseSkimmabilitySubscores(
        )
        """

    def testScoreTextAPI200ResponseSkimmabilitySubscores(self):
        """Test ScoreTextAPI200ResponseSkimmabilitySubscores"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()