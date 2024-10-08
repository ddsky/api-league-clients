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

from apileague.models.detect_gender_by_name200_response import DetectGenderByName200Response

class TestDetectGenderByName200Response(unittest.TestCase):
    """DetectGenderByName200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> DetectGenderByName200Response:
        """Test DetectGenderByName200Response
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `DetectGenderByName200Response`
        """
        model = DetectGenderByName200Response()
        if include_optional:
            return DetectGenderByName200Response(
                name = '',
                probability_male = 1.337,
                probability_female = 1.337,
                popularity = 1.337
            )
        else:
            return DetectGenderByName200Response(
        )
        """

    def testDetectGenderByName200Response(self):
        """Test DetectGenderByName200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
