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

from apileague.models.find_similar_books200_response import FindSimilarBooks200Response

class TestFindSimilarBooks200Response(unittest.TestCase):
    """FindSimilarBooks200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> FindSimilarBooks200Response:
        """Test FindSimilarBooks200Response
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `FindSimilarBooks200Response`
        """
        model = FindSimilarBooks200Response()
        if include_optional:
            return FindSimilarBooks200Response(
                similar_books = [
                    apileague.models.search_books_200_response_books_inner.searchBooks_200_response_books_inner(
                        title = '', 
                        image = '', 
                        id = 56, )
                    ]
            )
        else:
            return FindSimilarBooks200Response(
        )
        """

    def testFindSimilarBooks200Response(self):
        """Test FindSimilarBooks200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
