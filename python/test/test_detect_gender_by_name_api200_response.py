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

from apileague.models.detect_gender_by_name_api200_response import DetectGenderByNameAPI200Response

class TestDetectGenderByNameAPI200Response(unittest.TestCase):
    """DetectGenderByNameAPI200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> DetectGenderByNameAPI200Response:
        """Test DetectGenderByNameAPI200Response
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `DetectGenderByNameAPI200Response`
        """
        model = DetectGenderByNameAPI200Response()
        if include_optional:
            return DetectGenderByNameAPI200Response(
                name = '',
                probability_male = 1.337,
                probability_female = 1.337,
                popularity = 1.337
            )
        else:
            return DetectGenderByNameAPI200Response(
        )
        """

    def testDetectGenderByNameAPI200Response(self):
        """Test DetectGenderByNameAPI200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()