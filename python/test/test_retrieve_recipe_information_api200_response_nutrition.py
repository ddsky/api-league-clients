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

from apileague.models.retrieve_recipe_information_api200_response_nutrition import RetrieveRecipeInformationAPI200ResponseNutrition

class TestRetrieveRecipeInformationAPI200ResponseNutrition(unittest.TestCase):
    """RetrieveRecipeInformationAPI200ResponseNutrition unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RetrieveRecipeInformationAPI200ResponseNutrition:
        """Test RetrieveRecipeInformationAPI200ResponseNutrition
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RetrieveRecipeInformationAPI200ResponseNutrition`
        """
        model = RetrieveRecipeInformationAPI200ResponseNutrition()
        if include_optional:
            return RetrieveRecipeInformationAPI200ResponseNutrition(
                weight_per_serving = apileague.models.search_drinks_api_200_response_drinks_inner_nutrition_weight_per_serving.searchDrinksAPI_200_response_drinks_inner_nutrition_weight_per_serving(
                    amount = 56, 
                    unit = '', ),
                caloric_breakdown = apileague.models.search_drinks_api_200_response_drinks_inner_nutrition_caloric_breakdown.searchDrinksAPI_200_response_drinks_inner_nutrition_caloric_breakdown(
                    percent_fat = 1.337, 
                    percent_carbs = 1.337, 
                    percent_protein = 1.337, ),
                flavonoids = [
                    apileague.models.search_drinks_api_200_response_drinks_inner_nutrition_flavonoids_inner.searchDrinksAPI_200_response_drinks_inner_nutrition_flavonoids_inner(
                        name = '', 
                        amount = 56, 
                        unit = '', )
                    ],
                ingredient_breakdown = [
                    apileague.models.retrieve_recipe_information_api_200_response_nutrition_ingredient_breakdown_inner.retrieveRecipeInformationAPI_200_response_nutrition_ingredient_breakdown_inner(
                        name = '', 
                        amount = 1.337, 
                        unit = '', 
                        id = 56, 
                        nutrients = [
                            apileague.models.search_drinks_api_200_response_drinks_inner_nutrition_nutrients_inner.searchDrinksAPI_200_response_drinks_inner_nutrition_nutrients_inner(
                                name = '', 
                                percent_of_daily_needs = 1.337, 
                                amount = 1.337, 
                                unit = '', )
                            ], )
                    ],
                properties = [
                    apileague.models.search_recipes_api_200_response_recipes_inner_nutrition_nutrients_inner.searchRecipesAPI_200_response_recipes_inner_nutrition_nutrients_inner(
                        name = '', 
                        amount = 1.337, 
                        unit = '', )
                    ],
                nutrients = [
                    apileague.models.search_drinks_api_200_response_drinks_inner_nutrition_nutrients_inner.searchDrinksAPI_200_response_drinks_inner_nutrition_nutrients_inner(
                        name = '', 
                        percent_of_daily_needs = 1.337, 
                        amount = 1.337, 
                        unit = '', )
                    ]
            )
        else:
            return RetrieveRecipeInformationAPI200ResponseNutrition(
        )
        """

    def testRetrieveRecipeInformationAPI200ResponseNutrition(self):
        """Test RetrieveRecipeInformationAPI200ResponseNutrition"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
