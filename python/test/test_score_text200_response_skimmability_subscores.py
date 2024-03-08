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

from apileague.models.score_text200_response_skimmability_subscores import ScoreText200ResponseSkimmabilitySubscores

class TestScoreText200ResponseSkimmabilitySubscores(unittest.TestCase):
    """ScoreText200ResponseSkimmabilitySubscores unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ScoreText200ResponseSkimmabilitySubscores:
        """Test ScoreText200ResponseSkimmabilitySubscores
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ScoreText200ResponseSkimmabilitySubscores`
        """
        model = ScoreText200ResponseSkimmabilitySubscores()
        if include_optional:
            return ScoreText200ResponseSkimmabilitySubscores(
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
            return ScoreText200ResponseSkimmabilitySubscores(
        )
        """

    def testScoreText200ResponseSkimmabilitySubscores(self):
        """Test ScoreText200ResponseSkimmabilitySubscores"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()