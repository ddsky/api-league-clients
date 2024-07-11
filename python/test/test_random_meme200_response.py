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

from apileague.models.random_meme200_response import RandomMeme200Response

class TestRandomMeme200Response(unittest.TestCase):
    """RandomMeme200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RandomMeme200Response:
        """Test RandomMeme200Response
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RandomMeme200Response`
        """
        model = RandomMeme200Response()
        if include_optional:
            return RandomMeme200Response(
                description = '',
                url = '',
                type = '',
                width = 56,
                height = 56,
                ratio = 1.337
            )
        else:
            return RandomMeme200Response(
        )
        """

    def testRandomMeme200Response(self):
        """Test RandomMeme200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
