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

from apileague.models.extract_authors200_response_authors_inner import ExtractAuthors200ResponseAuthorsInner

class TestExtractAuthors200ResponseAuthorsInner(unittest.TestCase):
    """ExtractAuthors200ResponseAuthorsInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ExtractAuthors200ResponseAuthorsInner:
        """Test ExtractAuthors200ResponseAuthorsInner
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ExtractAuthors200ResponseAuthorsInner`
        """
        model = ExtractAuthors200ResponseAuthorsInner()
        if include_optional:
            return ExtractAuthors200ResponseAuthorsInner(
                link = '',
                name = ''
            )
        else:
            return ExtractAuthors200ResponseAuthorsInner(
        )
        """

    def testExtractAuthors200ResponseAuthorsInner(self):
        """Test ExtractAuthors200ResponseAuthorsInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
