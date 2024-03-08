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

from apileague.models.pluralize_word200_response import PluralizeWord200Response

class TestPluralizeWord200Response(unittest.TestCase):
    """PluralizeWord200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> PluralizeWord200Response:
        """Test PluralizeWord200Response
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `PluralizeWord200Response`
        """
        model = PluralizeWord200Response()
        if include_optional:
            return PluralizeWord200Response(
                original = '',
                plural = ''
            )
        else:
            return PluralizeWord200Response(
        )
        """

    def testPluralizeWord200Response(self):
        """Test PluralizeWord200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()