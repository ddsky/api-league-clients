# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.3.0
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.score_text200_response_readability_mainscores import ScoreText200ResponseReadabilityMainscores

class TestScoreText200ResponseReadabilityMainscores(unittest.TestCase):
    """ScoreText200ResponseReadabilityMainscores unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ScoreText200ResponseReadabilityMainscores:
        """Test ScoreText200ResponseReadabilityMainscores
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ScoreText200ResponseReadabilityMainscores`
        """
        model = ScoreText200ResponseReadabilityMainscores()
        if include_optional:
            return ScoreText200ResponseReadabilityMainscores(
                total_possible = 56,
                total = 56
            )
        else:
            return ScoreText200ResponseReadabilityMainscores(
        )
        """

    def testScoreText200ResponseReadabilityMainscores(self):
        """Test ScoreText200ResponseReadabilityMainscores"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
