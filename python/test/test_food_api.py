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

from apileague.api.food_api import FoodApi


class TestFoodApi(unittest.TestCase):
    """FoodApi unit test stubs"""

    def setUp(self) -> None:
        self.api = FoodApi()

    def tearDown(self) -> None:
        pass

    def test_compute_nutrition(self) -> None:
        """Test case for compute_nutrition

        Compute Nutrition
        """
        pass

    def test_retrieve_recipe_information(self) -> None:
        """Test case for retrieve_recipe_information

        Retrieve Recipe Information
        """
        pass

    def test_search_drinks(self) -> None:
        """Test case for search_drinks

        Search Drinks
        """
        pass

    def test_search_recipes(self) -> None:
        """Test case for search_recipes

        Search Recipes
        """
        pass

    def test_search_restaurants(self) -> None:
        """Test case for search_restaurants

        Search Restaurants
        """
        pass


if __name__ == '__main__':
    unittest.main()
