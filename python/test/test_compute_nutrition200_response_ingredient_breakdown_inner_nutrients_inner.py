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

from apileague.models.compute_nutrition200_response_ingredient_breakdown_inner_nutrients_inner import ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner

class TestComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner(unittest.TestCase):
    """ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner:
        """Test ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner`
        """
        model = ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner()
        if include_optional:
            return ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner(
                name = '',
                percent_of_daily_needs = 56,
                amount = 56,
                unit = ''
            )
        else:
            return ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner(
        )
        """

    def testComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner(self):
        """Test ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
