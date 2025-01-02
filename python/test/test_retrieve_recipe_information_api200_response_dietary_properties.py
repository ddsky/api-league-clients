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

from apileague.models.retrieve_recipe_information_api200_response_dietary_properties import RetrieveRecipeInformationAPI200ResponseDietaryProperties

class TestRetrieveRecipeInformationAPI200ResponseDietaryProperties(unittest.TestCase):
    """RetrieveRecipeInformationAPI200ResponseDietaryProperties unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RetrieveRecipeInformationAPI200ResponseDietaryProperties:
        """Test RetrieveRecipeInformationAPI200ResponseDietaryProperties
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RetrieveRecipeInformationAPI200ResponseDietaryProperties`
        """
        model = RetrieveRecipeInformationAPI200ResponseDietaryProperties()
        if include_optional:
            return RetrieveRecipeInformationAPI200ResponseDietaryProperties(
                low_fodmap = True,
                vegetarian = True,
                vegan = True,
                gluten_free = True,
                dairy_free = True,
                gaps = '',
                diets = [
                    ''
                    ]
            )
        else:
            return RetrieveRecipeInformationAPI200ResponseDietaryProperties(
        )
        """

    def testRetrieveRecipeInformationAPI200ResponseDietaryProperties(self):
        """Test RetrieveRecipeInformationAPI200ResponseDietaryProperties"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()