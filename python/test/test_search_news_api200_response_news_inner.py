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

from apileague.models.search_news_api200_response_news_inner import SearchNewsAPI200ResponseNewsInner

class TestSearchNewsAPI200ResponseNewsInner(unittest.TestCase):
    """SearchNewsAPI200ResponseNewsInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> SearchNewsAPI200ResponseNewsInner:
        """Test SearchNewsAPI200ResponseNewsInner
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `SearchNewsAPI200ResponseNewsInner`
        """
        model = SearchNewsAPI200ResponseNewsInner()
        if include_optional:
            return SearchNewsAPI200ResponseNewsInner(
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
                    ]
            )
        else:
            return SearchNewsAPI200ResponseNewsInner(
        )
        """

    def testSearchNewsAPI200ResponseNewsInner(self):
        """Test SearchNewsAPI200ResponseNewsInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
