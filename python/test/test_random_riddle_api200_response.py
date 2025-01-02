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

from apileague.models.random_riddle_api200_response import RandomRiddleAPI200Response

class TestRandomRiddleAPI200Response(unittest.TestCase):
    """RandomRiddleAPI200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RandomRiddleAPI200Response:
        """Test RandomRiddleAPI200Response
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RandomRiddleAPI200Response`
        """
        model = RandomRiddleAPI200Response()
        if include_optional:
            return RandomRiddleAPI200Response(
                riddle = '',
                answer = '',
                difficulty = ''
            )
        else:
            return RandomRiddleAPI200Response(
        )
        """

    def testRandomRiddleAPI200Response(self):
        """Test RandomRiddleAPI200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
