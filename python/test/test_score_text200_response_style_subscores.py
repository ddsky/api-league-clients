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

from apileague.models.score_text200_response_style_subscores import ScoreText200ResponseStyleSubscores

class TestScoreText200ResponseStyleSubscores(unittest.TestCase):
    """ScoreText200ResponseStyleSubscores unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ScoreText200ResponseStyleSubscores:
        """Test ScoreText200ResponseStyleSubscores
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ScoreText200ResponseStyleSubscores`
        """
        model = ScoreText200ResponseStyleSubscores()
        if include_optional:
            return ScoreText200ResponseStyleSubscores(
                abbreviation_score = [
                    56
                    ],
                style_score = [
                    56
                    ],
                spelling_score = [
                    56
                    ]
            )
        else:
            return ScoreText200ResponseStyleSubscores(
        )
        """

    def testScoreText200ResponseStyleSubscores(self):
        """Test ScoreText200ResponseStyleSubscores"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
