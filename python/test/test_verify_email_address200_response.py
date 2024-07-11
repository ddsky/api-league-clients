# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.4.1
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.verify_email_address200_response import VerifyEmailAddress200Response

class TestVerifyEmailAddress200Response(unittest.TestCase):
    """VerifyEmailAddress200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> VerifyEmailAddress200Response:
        """Test VerifyEmailAddress200Response
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `VerifyEmailAddress200Response`
        """
        model = VerifyEmailAddress200Response()
        if include_optional:
            return VerifyEmailAddress200Response(
                email = '',
                domain = '',
                first_name = '',
                middle_name = '',
                last_name = '',
                full_name = '',
                username = '',
                image = '',
                result = '',
                disposable = True,
                accept_all = True,
                free_provider = True
            )
        else:
            return VerifyEmailAddress200Response(
        )
        """

    def testVerifyEmailAddress200Response(self):
        """Test VerifyEmailAddress200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
