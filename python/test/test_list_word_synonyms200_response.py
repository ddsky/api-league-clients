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

from apileague.models.list_word_synonyms200_response import ListWordSynonyms200Response

class TestListWordSynonyms200Response(unittest.TestCase):
    """ListWordSynonyms200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ListWordSynonyms200Response:
        """Test ListWordSynonyms200Response
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ListWordSynonyms200Response`
        """
        model = ListWordSynonyms200Response()
        if include_optional:
            return ListWordSynonyms200Response(
                synonyms = [
                    ''
                    ]
            )
        else:
            return ListWordSynonyms200Response(
        )
        """

    def testListWordSynonyms200Response(self):
        """Test ListWordSynonyms200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
