# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.4.0
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.top_news200_response_top_news_inner_news_inner import TopNews200ResponseTopNewsInnerNewsInner

class TestTopNews200ResponseTopNewsInnerNewsInner(unittest.TestCase):
    """TopNews200ResponseTopNewsInnerNewsInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> TopNews200ResponseTopNewsInnerNewsInner:
        """Test TopNews200ResponseTopNewsInnerNewsInner
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `TopNews200ResponseTopNewsInnerNewsInner`
        """
        model = TopNews200ResponseTopNewsInnerNewsInner()
        if include_optional:
            return TopNews200ResponseTopNewsInnerNewsInner(
                summary = '',
                image = '',
                id = 56,
                text = '',
                title = '',
                publish_date = '',
                url = '',
                authors = [
                    ''
                    ]
            )
        else:
            return TopNews200ResponseTopNewsInnerNewsInner(
        )
        """

    def testTopNews200ResponseTopNewsInnerNewsInner(self):
        """Test TopNews200ResponseTopNewsInnerNewsInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
