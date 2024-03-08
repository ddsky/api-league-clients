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

from apileague.models.detect_language200_response_inner import DetectLanguage200ResponseInner

class TestDetectLanguage200ResponseInner(unittest.TestCase):
    """DetectLanguage200ResponseInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> DetectLanguage200ResponseInner:
        """Test DetectLanguage200ResponseInner
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `DetectLanguage200ResponseInner`
        """
        model = DetectLanguage200ResponseInner()
        if include_optional:
            return DetectLanguage200ResponseInner(
                language = '',
                confidence = 1.337
            )
        else:
            return DetectLanguage200ResponseInner(
        )
        """

    def testDetectLanguage200ResponseInner(self):
        """Test DetectLanguage200ResponseInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()