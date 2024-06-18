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

from apileague.models.tag_part_of_speech200_response import TagPartOfSpeech200Response

class TestTagPartOfSpeech200Response(unittest.TestCase):
    """TagPartOfSpeech200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> TagPartOfSpeech200Response:
        """Test TagPartOfSpeech200Response
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `TagPartOfSpeech200Response`
        """
        model = TagPartOfSpeech200Response()
        if include_optional:
            return TagPartOfSpeech200Response(
                tagged_text = ''
            )
        else:
            return TagPartOfSpeech200Response(
        )
        """

    def testTagPartOfSpeech200Response(self):
        """Test TagPartOfSpeech200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
