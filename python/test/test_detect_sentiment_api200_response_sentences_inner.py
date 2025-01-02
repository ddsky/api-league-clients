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

from apileague.models.detect_sentiment_api200_response_sentences_inner import DetectSentimentAPI200ResponseSentencesInner

class TestDetectSentimentAPI200ResponseSentencesInner(unittest.TestCase):
    """DetectSentimentAPI200ResponseSentencesInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> DetectSentimentAPI200ResponseSentencesInner:
        """Test DetectSentimentAPI200ResponseSentencesInner
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `DetectSentimentAPI200ResponseSentencesInner`
        """
        model = DetectSentimentAPI200ResponseSentencesInner()
        if include_optional:
            return DetectSentimentAPI200ResponseSentencesInner(
                length = 56,
                sentiment = '',
                offset = 56,
                confidence = 56
            )
        else:
            return DetectSentimentAPI200ResponseSentencesInner(
        )
        """

    def testDetectSentimentAPI200ResponseSentencesInner(self):
        """Test DetectSentimentAPI200ResponseSentencesInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
