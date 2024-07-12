# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.4.2
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.score_text200_response_readability_subscores import ScoreText200ResponseReadabilitySubscores

class TestScoreText200ResponseReadabilitySubscores(unittest.TestCase):
    """ScoreText200ResponseReadabilitySubscores unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ScoreText200ResponseReadabilitySubscores:
        """Test ScoreText200ResponseReadabilitySubscores
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ScoreText200ResponseReadabilitySubscores`
        """
        model = ScoreText200ResponseReadabilitySubscores()
        if include_optional:
            return ScoreText200ResponseReadabilitySubscores(
                reading_time_seconds = 56,
                forcast = 1.337,
                flesch = 1.337,
                smog = 1.337,
                ari = 1.337,
                lix = 1.337,
                coleman_liau = 1.337,
                kincaid = 1.337,
                fog = 1.337
            )
        else:
            return ScoreText200ResponseReadabilitySubscores(
        )
        """

    def testScoreText200ResponseReadabilitySubscores(self):
        """Test ScoreText200ResponseReadabilitySubscores"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
