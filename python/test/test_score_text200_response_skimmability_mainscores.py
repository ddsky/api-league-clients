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

from apileague.models.score_text200_response_skimmability_mainscores import ScoreText200ResponseSkimmabilityMainscores

class TestScoreText200ResponseSkimmabilityMainscores(unittest.TestCase):
    """ScoreText200ResponseSkimmabilityMainscores unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ScoreText200ResponseSkimmabilityMainscores:
        """Test ScoreText200ResponseSkimmabilityMainscores
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ScoreText200ResponseSkimmabilityMainscores`
        """
        model = ScoreText200ResponseSkimmabilityMainscores()
        if include_optional:
            return ScoreText200ResponseSkimmabilityMainscores(
                total_possible = 56,
                total = 1.337
            )
        else:
            return ScoreText200ResponseSkimmabilityMainscores(
        )
        """

    def testScoreText200ResponseSkimmabilityMainscores(self):
        """Test ScoreText200ResponseSkimmabilityMainscores"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
