=begin comment

API League

API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.5.0
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator
# Please update the test cases below to test the API endpoints.
# Ref: https://openapi-generator.tech
#
use Test::More;
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::OpenAPIClient::FoodApi');

my $api = WWW::OpenAPIClient::FoodApi->new();
isa_ok($api, 'WWW::OpenAPIClient::FoodApi');

#
# compute_nutrition test
#
# uncomment below and update the test
#my $compute_nutrition_ingredients = undef; # replace NULL with a proper value
#my $compute_nutrition_servings = undef; # replace NULL with a proper value
#my $compute_nutrition_reduce_oils = undef; # replace NULL with a proper value
#my $compute_nutrition_result = $api->compute_nutrition(ingredients => $compute_nutrition_ingredients, servings => $compute_nutrition_servings, reduce_oils => $compute_nutrition_reduce_oils);

#
# retrieve_recipe_information test
#
# uncomment below and update the test
#my $retrieve_recipe_information_id = undef; # replace NULL with a proper value
#my $retrieve_recipe_information_add_wine_pairing = undef; # replace NULL with a proper value
#my $retrieve_recipe_information_result = $api->retrieve_recipe_information(id => $retrieve_recipe_information_id, add_wine_pairing => $retrieve_recipe_information_add_wine_pairing);

#
# search_drinks test
#
# uncomment below and update the test
#my $search_drinks_query = undef; # replace NULL with a proper value
#my $search_drinks_glass_types = undef; # replace NULL with a proper value
#my $search_drinks_flavors = undef; # replace NULL with a proper value
#my $search_drinks_diet = undef; # replace NULL with a proper value
#my $search_drinks_include_ingredients = undef; # replace NULL with a proper value
#my $search_drinks_exclude_ingredients = undef; # replace NULL with a proper value
#my $search_drinks_min_calories = undef; # replace NULL with a proper value
#my $search_drinks_max_calories = undef; # replace NULL with a proper value
#my $search_drinks_min_carbs = undef; # replace NULL with a proper value
#my $search_drinks_max_carbs = undef; # replace NULL with a proper value
#my $search_drinks_min_protein = undef; # replace NULL with a proper value
#my $search_drinks_max_protein = undef; # replace NULL with a proper value
#my $search_drinks_min_fat = undef; # replace NULL with a proper value
#my $search_drinks_max_fat = undef; # replace NULL with a proper value
#my $search_drinks_min_alcohol_percent = undef; # replace NULL with a proper value
#my $search_drinks_max_alcohol_percent = undef; # replace NULL with a proper value
#my $search_drinks_min_caffeine = undef; # replace NULL with a proper value
#my $search_drinks_max_caffeine = undef; # replace NULL with a proper value
#my $search_drinks_sort = undef; # replace NULL with a proper value
#my $search_drinks_sort_direction = undef; # replace NULL with a proper value
#my $search_drinks_offset = undef; # replace NULL with a proper value
#my $search_drinks_number = undef; # replace NULL with a proper value
#my $search_drinks_result = $api->search_drinks(query => $search_drinks_query, glass_types => $search_drinks_glass_types, flavors => $search_drinks_flavors, diet => $search_drinks_diet, include_ingredients => $search_drinks_include_ingredients, exclude_ingredients => $search_drinks_exclude_ingredients, min_calories => $search_drinks_min_calories, max_calories => $search_drinks_max_calories, min_carbs => $search_drinks_min_carbs, max_carbs => $search_drinks_max_carbs, min_protein => $search_drinks_min_protein, max_protein => $search_drinks_max_protein, min_fat => $search_drinks_min_fat, max_fat => $search_drinks_max_fat, min_alcohol_percent => $search_drinks_min_alcohol_percent, max_alcohol_percent => $search_drinks_max_alcohol_percent, min_caffeine => $search_drinks_min_caffeine, max_caffeine => $search_drinks_max_caffeine, sort => $search_drinks_sort, sort_direction => $search_drinks_sort_direction, offset => $search_drinks_offset, number => $search_drinks_number);

#
# search_recipes test
#
# uncomment below and update the test
#my $search_recipes_query = undef; # replace NULL with a proper value
#my $search_recipes_cuisines = undef; # replace NULL with a proper value
#my $search_recipes_exclude_cuisines = undef; # replace NULL with a proper value
#my $search_recipes_meal_type = undef; # replace NULL with a proper value
#my $search_recipes_diet = undef; # replace NULL with a proper value
#my $search_recipes_intolerances = undef; # replace NULL with a proper value
#my $search_recipes_equipment = undef; # replace NULL with a proper value
#my $search_recipes_include_ingredients = undef; # replace NULL with a proper value
#my $search_recipes_exclude_ingredients = undef; # replace NULL with a proper value
#my $search_recipes_fill_ingredients = undef; # replace NULL with a proper value
#my $search_recipes_add_recipe_information = undef; # replace NULL with a proper value
#my $search_recipes_max_time = undef; # replace NULL with a proper value
#my $search_recipes_min_servings = undef; # replace NULL with a proper value
#my $search_recipes_max_servings = undef; # replace NULL with a proper value
#my $search_recipes_min_calories = undef; # replace NULL with a proper value
#my $search_recipes_max_calories = undef; # replace NULL with a proper value
#my $search_recipes_min_carbs = undef; # replace NULL with a proper value
#my $search_recipes_max_carbs = undef; # replace NULL with a proper value
#my $search_recipes_min_protein = undef; # replace NULL with a proper value
#my $search_recipes_max_protein = undef; # replace NULL with a proper value
#my $search_recipes_min_fat = undef; # replace NULL with a proper value
#my $search_recipes_max_fat = undef; # replace NULL with a proper value
#my $search_recipes_min_sugar = undef; # replace NULL with a proper value
#my $search_recipes_max_sugar = undef; # replace NULL with a proper value
#my $search_recipes_min_fiber = undef; # replace NULL with a proper value
#my $search_recipes_max_fiber = undef; # replace NULL with a proper value
#my $search_recipes_min_folate = undef; # replace NULL with a proper value
#my $search_recipes_max_folate = undef; # replace NULL with a proper value
#my $search_recipes_min_folic_acid = undef; # replace NULL with a proper value
#my $search_recipes_max_folic_acid = undef; # replace NULL with a proper value
#my $search_recipes_min_iodine = undef; # replace NULL with a proper value
#my $search_recipes_max_iodine = undef; # replace NULL with a proper value
#my $search_recipes_min_iron = undef; # replace NULL with a proper value
#my $search_recipes_max_iron = undef; # replace NULL with a proper value
#my $search_recipes_min_zinc = undef; # replace NULL with a proper value
#my $search_recipes_max_zinc = undef; # replace NULL with a proper value
#my $search_recipes_min_magnesium = undef; # replace NULL with a proper value
#my $search_recipes_max_magnesium = undef; # replace NULL with a proper value
#my $search_recipes_min_manganese = undef; # replace NULL with a proper value
#my $search_recipes_max_manganese = undef; # replace NULL with a proper value
#my $search_recipes_min_phosphorus = undef; # replace NULL with a proper value
#my $search_recipes_max_phosphorus = undef; # replace NULL with a proper value
#my $search_recipes_min_potassium = undef; # replace NULL with a proper value
#my $search_recipes_max_potassium = undef; # replace NULL with a proper value
#my $search_recipes_min_sodium = undef; # replace NULL with a proper value
#my $search_recipes_max_sodium = undef; # replace NULL with a proper value
#my $search_recipes_min_selenium = undef; # replace NULL with a proper value
#my $search_recipes_max_selenium = undef; # replace NULL with a proper value
#my $search_recipes_min_copper = undef; # replace NULL with a proper value
#my $search_recipes_max_copper = undef; # replace NULL with a proper value
#my $search_recipes_min_calcium = undef; # replace NULL with a proper value
#my $search_recipes_max_calcium = undef; # replace NULL with a proper value
#my $search_recipes_min_choline = undef; # replace NULL with a proper value
#my $search_recipes_max_choline = undef; # replace NULL with a proper value
#my $search_recipes_min_cholesterol = undef; # replace NULL with a proper value
#my $search_recipes_max_cholesterol = undef; # replace NULL with a proper value
#my $search_recipes_min_fluoride = undef; # replace NULL with a proper value
#my $search_recipes_max_fluoride = undef; # replace NULL with a proper value
#my $search_recipes_min_alcohol = undef; # replace NULL with a proper value
#my $search_recipes_max_alcohol = undef; # replace NULL with a proper value
#my $search_recipes_min_caffeine = undef; # replace NULL with a proper value
#my $search_recipes_max_caffeine = undef; # replace NULL with a proper value
#my $search_recipes_min_saturated_fat = undef; # replace NULL with a proper value
#my $search_recipes_max_saturated_fat = undef; # replace NULL with a proper value
#my $search_recipes_min_vitamin_a = undef; # replace NULL with a proper value
#my $search_recipes_max_vitamin_a = undef; # replace NULL with a proper value
#my $search_recipes_min_vitamin_c = undef; # replace NULL with a proper value
#my $search_recipes_max_vitamin_c = undef; # replace NULL with a proper value
#my $search_recipes_min_vitamin_d = undef; # replace NULL with a proper value
#my $search_recipes_max_vitamin_d = undef; # replace NULL with a proper value
#my $search_recipes_min_vitamin_e = undef; # replace NULL with a proper value
#my $search_recipes_max_vitamin_e = undef; # replace NULL with a proper value
#my $search_recipes_min_vitamin_k = undef; # replace NULL with a proper value
#my $search_recipes_max_vitamin_k = undef; # replace NULL with a proper value
#my $search_recipes_min_vitamin_b1 = undef; # replace NULL with a proper value
#my $search_recipes_max_vitamin_b1 = undef; # replace NULL with a proper value
#my $search_recipes_min_vitamin_b2 = undef; # replace NULL with a proper value
#my $search_recipes_max_vitamin_b2 = undef; # replace NULL with a proper value
#my $search_recipes_min_vitamin_b3 = undef; # replace NULL with a proper value
#my $search_recipes_max_vitamin_b3 = undef; # replace NULL with a proper value
#my $search_recipes_min_vitamin_b5 = undef; # replace NULL with a proper value
#my $search_recipes_max_vitamin_b5 = undef; # replace NULL with a proper value
#my $search_recipes_min_vitamin_b6 = undef; # replace NULL with a proper value
#my $search_recipes_max_vitamin_b6 = undef; # replace NULL with a proper value
#my $search_recipes_min_vitamin_b12 = undef; # replace NULL with a proper value
#my $search_recipes_max_vitamin_b12 = undef; # replace NULL with a proper value
#my $search_recipes_sort = undef; # replace NULL with a proper value
#my $search_recipes_sort_direction = undef; # replace NULL with a proper value
#my $search_recipes_offset = undef; # replace NULL with a proper value
#my $search_recipes_number = undef; # replace NULL with a proper value
#my $search_recipes_result = $api->search_recipes(query => $search_recipes_query, cuisines => $search_recipes_cuisines, exclude_cuisines => $search_recipes_exclude_cuisines, meal_type => $search_recipes_meal_type, diet => $search_recipes_diet, intolerances => $search_recipes_intolerances, equipment => $search_recipes_equipment, include_ingredients => $search_recipes_include_ingredients, exclude_ingredients => $search_recipes_exclude_ingredients, fill_ingredients => $search_recipes_fill_ingredients, add_recipe_information => $search_recipes_add_recipe_information, max_time => $search_recipes_max_time, min_servings => $search_recipes_min_servings, max_servings => $search_recipes_max_servings, min_calories => $search_recipes_min_calories, max_calories => $search_recipes_max_calories, min_carbs => $search_recipes_min_carbs, max_carbs => $search_recipes_max_carbs, min_protein => $search_recipes_min_protein, max_protein => $search_recipes_max_protein, min_fat => $search_recipes_min_fat, max_fat => $search_recipes_max_fat, min_sugar => $search_recipes_min_sugar, max_sugar => $search_recipes_max_sugar, min_fiber => $search_recipes_min_fiber, max_fiber => $search_recipes_max_fiber, min_folate => $search_recipes_min_folate, max_folate => $search_recipes_max_folate, min_folic_acid => $search_recipes_min_folic_acid, max_folic_acid => $search_recipes_max_folic_acid, min_iodine => $search_recipes_min_iodine, max_iodine => $search_recipes_max_iodine, min_iron => $search_recipes_min_iron, max_iron => $search_recipes_max_iron, min_zinc => $search_recipes_min_zinc, max_zinc => $search_recipes_max_zinc, min_magnesium => $search_recipes_min_magnesium, max_magnesium => $search_recipes_max_magnesium, min_manganese => $search_recipes_min_manganese, max_manganese => $search_recipes_max_manganese, min_phosphorus => $search_recipes_min_phosphorus, max_phosphorus => $search_recipes_max_phosphorus, min_potassium => $search_recipes_min_potassium, max_potassium => $search_recipes_max_potassium, min_sodium => $search_recipes_min_sodium, max_sodium => $search_recipes_max_sodium, min_selenium => $search_recipes_min_selenium, max_selenium => $search_recipes_max_selenium, min_copper => $search_recipes_min_copper, max_copper => $search_recipes_max_copper, min_calcium => $search_recipes_min_calcium, max_calcium => $search_recipes_max_calcium, min_choline => $search_recipes_min_choline, max_choline => $search_recipes_max_choline, min_cholesterol => $search_recipes_min_cholesterol, max_cholesterol => $search_recipes_max_cholesterol, min_fluoride => $search_recipes_min_fluoride, max_fluoride => $search_recipes_max_fluoride, min_alcohol => $search_recipes_min_alcohol, max_alcohol => $search_recipes_max_alcohol, min_caffeine => $search_recipes_min_caffeine, max_caffeine => $search_recipes_max_caffeine, min_saturated_fat => $search_recipes_min_saturated_fat, max_saturated_fat => $search_recipes_max_saturated_fat, min_vitamin_a => $search_recipes_min_vitamin_a, max_vitamin_a => $search_recipes_max_vitamin_a, min_vitamin_c => $search_recipes_min_vitamin_c, max_vitamin_c => $search_recipes_max_vitamin_c, min_vitamin_d => $search_recipes_min_vitamin_d, max_vitamin_d => $search_recipes_max_vitamin_d, min_vitamin_e => $search_recipes_min_vitamin_e, max_vitamin_e => $search_recipes_max_vitamin_e, min_vitamin_k => $search_recipes_min_vitamin_k, max_vitamin_k => $search_recipes_max_vitamin_k, min_vitamin_b1 => $search_recipes_min_vitamin_b1, max_vitamin_b1 => $search_recipes_max_vitamin_b1, min_vitamin_b2 => $search_recipes_min_vitamin_b2, max_vitamin_b2 => $search_recipes_max_vitamin_b2, min_vitamin_b3 => $search_recipes_min_vitamin_b3, max_vitamin_b3 => $search_recipes_max_vitamin_b3, min_vitamin_b5 => $search_recipes_min_vitamin_b5, max_vitamin_b5 => $search_recipes_max_vitamin_b5, min_vitamin_b6 => $search_recipes_min_vitamin_b6, max_vitamin_b6 => $search_recipes_max_vitamin_b6, min_vitamin_b12 => $search_recipes_min_vitamin_b12, max_vitamin_b12 => $search_recipes_max_vitamin_b12, sort => $search_recipes_sort, sort_direction => $search_recipes_sort_direction, offset => $search_recipes_offset, number => $search_recipes_number);

#
# search_restaurants test
#
# uncomment below and update the test
#my $search_restaurants_lat = undef; # replace NULL with a proper value
#my $search_restaurants_lon = undef; # replace NULL with a proper value
#my $search_restaurants_query = undef; # replace NULL with a proper value
#my $search_restaurants_distance = undef; # replace NULL with a proper value
#my $search_restaurants_budget = undef; # replace NULL with a proper value
#my $search_restaurants_min_rating = undef; # replace NULL with a proper value
#my $search_restaurants_cuisine = undef; # replace NULL with a proper value
#my $search_restaurants_is_open = undef; # replace NULL with a proper value
#my $search_restaurants_page = undef; # replace NULL with a proper value
#my $search_restaurants_sort = undef; # replace NULL with a proper value
#my $search_restaurants_result = $api->search_restaurants(lat => $search_restaurants_lat, lon => $search_restaurants_lon, query => $search_restaurants_query, distance => $search_restaurants_distance, budget => $search_restaurants_budget, min_rating => $search_restaurants_min_rating, cuisine => $search_restaurants_cuisine, is_open => $search_restaurants_is_open, page => $search_restaurants_page, sort => $search_restaurants_sort);


done_testing();
