# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.4.2
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.search_news200_response import SearchNews200Response

class TestSearchNews200Response(unittest.TestCase):
    """SearchNews200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchNews200Response:
        """Test SearchNews200Response
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchNews200Response`
        """
        model = SearchNews200Response()
        if include_optional:
            return SearchNews200Response(
                offset = 56,
                number = 56,
                available = 56,
                news = [
                    apileague.models.search_news_200_response_news_inner.searchNews_200_response_news_inner(
                        summary = '', 
                        image = '', 
                        sentiment = 1.337, 
                        language = '', 
                        video = '', 
                        title = '', 
                        url = '', 
                        source_country = '', 
                        id = 56, 
                        text = '', 
                        category = '', 
                        publish_date = '', 
                        authors = [
                            ''
                            ], )
                    ]
            )
        else:
            return SearchNews200Response(
        )
        """

    def testSearchNews200Response(self):
        """Test SearchNews200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
