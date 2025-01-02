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

from apileague.models.retrieve_recipe_information_api200_response import RetrieveRecipeInformationAPI200Response

class TestRetrieveRecipeInformationAPI200Response(unittest.TestCase):
    """RetrieveRecipeInformationAPI200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RetrieveRecipeInformationAPI200Response:
        """Test RetrieveRecipeInformationAPI200Response
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RetrieveRecipeInformationAPI200Response`
        """
        model = RetrieveRecipeInformationAPI200Response()
        if include_optional:
            return RetrieveRecipeInformationAPI200Response(
                id = 56,
                title = '',
                servings = 56,
                images = [
                    ''
                    ],
                dietary_properties = apileague.models.retrieve_recipe_information_api_200_response_dietary_properties.retrieveRecipeInformationAPI_200_response_dietary_properties(
                    low_fodmap = True, 
                    vegetarian = True, 
                    vegan = True, 
                    gluten_free = True, 
                    dairy_free = True, 
                    gaps = '', 
                    diets = [
                        ''
                        ], ),
                price_per_serving = 1.337,
                times = apileague.models.retrieve_recipe_information_api_200_response_times.retrieveRecipeInformationAPI_200_response_times(
                    total_minutes = 56, ),
                nutrition = apileague.models.retrieve_recipe_information_api_200_response_nutrition.retrieveRecipeInformationAPI_200_response_nutrition(
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
                        ], ),
                taste = apileague.models.retrieve_recipe_information_api_200_response_taste.retrieveRecipeInformationAPI_200_response_taste(
                    fattiness = 1.337, 
                    spiciness = 56, 
                    saltiness = 56, 
                    bitterness = 1.337, 
                    savoriness = 1.337, 
                    sweetness = 1.337, 
                    sourness = 1.337, ),
                cuisines = [
                    ''
                    ],
                meal_types = [
                    ''
                    ],
                occasions = [
                    ''
                    ],
                ingredients = [
                    apileague.models.retrieve_recipe_information_api_200_response_ingredients_inner.retrieveRecipeInformationAPI_200_response_ingredients_inner(
                        image = '', 
                        name_clean = '', 
                        amount = 1.337, 
                        unit = '', 
                        measures = apileague.models.retrieve_recipe_information_api_200_response_ingredients_inner_measures.retrieveRecipeInformationAPI_200_response_ingredients_inner_measures(
                            metric = apileague.models.search_drinks_api_200_response_drinks_inner_ingredients_inner_measures_metric.searchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric(
                                unit_short = '', 
                                amount = 1.337, 
                                unit_long = '', ), 
                            us = apileague.models.search_drinks_api_200_response_drinks_inner_ingredients_inner_measures_metric.searchDrinksAPI_200_response_drinks_inner_ingredients_inner_measures_metric(
                                unit_short = '', 
                                amount = 1.337, 
                                unit_long = '', ), ), 
                        original = '', 
                        meta = [
                            ''
                            ], 
                        original_name = '', 
                        name = '', 
                        id = 56, 
                        aisle = '', 
                        consistency = '', )
                    ],
                instructions = [
                    apileague.models.retrieve_recipe_information_api_200_response_instructions_inner.retrieveRecipeInformationAPI_200_response_instructions_inner(
                        name = '', 
                        steps = [
                            apileague.models.retrieve_recipe_information_api_200_response_instructions_inner_steps_inner.retrieveRecipeInformationAPI_200_response_instructions_inner_steps_inner(
                                number = 56, 
                                ingredients = [
                                    apileague.models.search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner.searchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner(
                                        name = '', 
                                        image = '', 
                                        id = 56, )
                                    ], 
                                equipment = [
                                    apileague.models.search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner.searchDrinksAPI_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner(
                                        name = '', 
                                        image = '', 
                                        id = 56, )
                                    ], 
                                step = '', )
                            ], )
                    ],
                credits = apileague.models.retrieve_recipe_information_api_200_response_credits.retrieveRecipeInformationAPI_200_response_credits(
                    license = '', 
                    text = '', 
                    source_name = '', 
                    source_url = '', ),
                scores = apileague.models.retrieve_recipe_information_api_200_response_scores.retrieveRecipeInformationAPI_200_response_scores(
                    meta_score = 1.337, 
                    weight_watcher_smart_points = 56, 
                    health_score = 56, )
            )
        else:
            return RetrieveRecipeInformationAPI200Response(
        )
        """

    def testRetrieveRecipeInformationAPI200Response(self):
        """Test RetrieveRecipeInformationAPI200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()