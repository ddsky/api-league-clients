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

from apileague.models.detect_sentiment200_response import DetectSentiment200Response

class TestDetectSentiment200Response(unittest.TestCase):
    """DetectSentiment200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> DetectSentiment200Response:
        """Test DetectSentiment200Response
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `DetectSentiment200Response`
        """
        model = DetectSentiment200Response()
        if include_optional:
            return DetectSentiment200Response(
                document = apileague.models.detect_sentiment_200_response_document.detectSentiment_200_response_document(
                    sentiment = '', 
                    confidence = 56, 
                    average_confidence = 56, ),
                sentences = [
                    apileague.models.detect_sentiment_200_response_sentences_inner.detectSentiment_200_response_sentences_inner(
                        length = 56, 
                        sentiment = '', 
                        offset = 56, 
                        confidence = 56, )
                    ]
            )
        else:
            return DetectSentiment200Response(
        )
        """

    def testDetectSentiment200Response(self):
        """Test DetectSentiment200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
