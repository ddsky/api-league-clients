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

from apileague.models.top_news_api200_response_top_news_inner import TopNewsAPI200ResponseTopNewsInner

class TestTopNewsAPI200ResponseTopNewsInner(unittest.TestCase):
    """TopNewsAPI200ResponseTopNewsInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> TopNewsAPI200ResponseTopNewsInner:
        """Test TopNewsAPI200ResponseTopNewsInner
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `TopNewsAPI200ResponseTopNewsInner`
        """
        model = TopNewsAPI200ResponseTopNewsInner()
        if include_optional:
            return TopNewsAPI200ResponseTopNewsInner(
                news = [
                    apileague.models.top_news_api_200_response_top_news_inner_news_inner.topNewsAPI_200_response_top_news_inner_news_inner(
                        summary = '', 
                        image = '', 
                        id = 56, 
                        text = '', 
                        title = '', 
                        publish_date = '', 
                        url = '', 
                        authors = [
                            ''
                            ], )
                    ]
            )
        else:
            return TopNewsAPI200ResponseTopNewsInner(
        )
        """

    def testTopNewsAPI200ResponseTopNewsInner(self):
        """Test TopNewsAPI200ResponseTopNewsInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()