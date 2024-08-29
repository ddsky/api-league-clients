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

from apileague.models.score_text200_response_interestingness_subscores import ScoreText200ResponseInterestingnessSubscores

class TestScoreText200ResponseInterestingnessSubscores(unittest.TestCase):
    """ScoreText200ResponseInterestingnessSubscores unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ScoreText200ResponseInterestingnessSubscores:
        """Test ScoreText200ResponseInterestingnessSubscores
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ScoreText200ResponseInterestingnessSubscores`
        """
        model = ScoreText200ResponseInterestingnessSubscores()
        if include_optional:
            return ScoreText200ResponseInterestingnessSubscores(
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
                    ]
            )
        else:
            return ScoreText200ResponseInterestingnessSubscores(
        )
        """

    def testScoreText200ResponseInterestingnessSubscores(self):
        """Test ScoreText200ResponseInterestingnessSubscores"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
