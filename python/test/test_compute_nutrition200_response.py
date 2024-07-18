# coding: utf-8

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.5.0
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from apileague.models.compute_nutrition200_response import ComputeNutrition200Response

class TestComputeNutrition200Response(unittest.TestCase):
    """ComputeNutrition200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ComputeNutrition200Response:
        """Test ComputeNutrition200Response
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ComputeNutrition200Response`
        """
        model = ComputeNutrition200Response()
        if include_optional:
            return ComputeNutrition200Response(
                nutrients = [
                    apileague.models.search_drinks_200_response_drinks_inner_nutrition_nutrients_inner.searchDrinks_200_response_drinks_inner_nutrition_nutrients_inner(
                        name = '', 
                        percent_of_daily_needs = 1.337, 
                        amount = 1.337, 
                        unit = '', )
                    ],
                properties = [
                    apileague.models.search_drinks_200_response_drinks_inner_nutrition_flavonoids_inner.searchDrinks_200_response_drinks_inner_nutrition_flavonoids_inner(
                        name = '', 
                        amount = 56, 
                        unit = '', )
                    ],
                flavonoids = [
                    apileague.models.search_recipes_200_response_recipes_inner_nutrition_nutrients_inner.searchRecipes_200_response_recipes_inner_nutrition_nutrients_inner(
                        name = '', 
                        amount = 1.337, 
                        unit = '', )
                    ],
                ingredient_breakdown = [
                    apileague.models.compute_nutrition_200_response_ingredient_breakdown_inner.computeNutrition_200_response_ingredient_breakdown_inner(
                        name = '', 
                        amount = 56, 
                        unit = '', 
                        id = 56, 
                        nutrients = [
                            apileague.models.compute_nutrition_200_response_ingredient_breakdown_inner_nutrients_inner.computeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner(
                                name = '', 
                                percent_of_daily_needs = 56, 
                                amount = 56, 
                                unit = '', )
                            ], )
                    ],
                caloric_breakdown = apileague.models.search_drinks_200_response_drinks_inner_nutrition_caloric_breakdown.searchDrinks_200_response_drinks_inner_nutrition_caloric_breakdown(
                    percent_fat = 1.337, 
                    percent_carbs = 1.337, 
                    percent_protein = 1.337, ),
                weight_per_serving = apileague.models.search_drinks_200_response_drinks_inner_nutrition_weight_per_serving.searchDrinks_200_response_drinks_inner_nutrition_weight_per_serving(
                    amount = 56, 
                    unit = '', )
            )
        else:
            return ComputeNutrition200Response(
        )
        """

    def testComputeNutrition200Response(self):
        """Test ComputeNutrition200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
