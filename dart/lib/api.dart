//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/art_api.dart';
part 'api/books_api.dart';
part 'api/food_api.dart';
part 'api/humor_api.dart';
part 'api/knowledge_api.dart';
part 'api/math_api.dart';
part 'api/media_api.dart';
part 'api/news_api.dart';
part 'api/storage_api.dart';
part 'api/text_api.dart';
part 'api/web_api.dart';

part 'model/compute_nutrition200_response.dart';
part 'model/compute_nutrition200_response_ingredient_breakdown_inner.dart';
part 'model/compute_nutrition200_response_ingredient_breakdown_inner_nutrients_inner.dart';
part 'model/convert_units200_response.dart';
part 'model/correct_spelling200_response.dart';
part 'model/detect_gender_by_name200_response.dart';
part 'model/detect_main_image_color200_response_inner.dart';
part 'model/extract_authors200_response.dart';
part 'model/extract_authors200_response_authors_inner.dart';
part 'model/extract_content_from_a_web_page200_response.dart';
part 'model/extract_dates200_response.dart';
part 'model/extract_dates200_response_dates_inner.dart';
part 'model/extract_entities200_response.dart';
part 'model/extract_entities200_response_entities_inner.dart';
part 'model/extract_news200_response.dart';
part 'model/extract_news200_response_images_inner.dart';
part 'model/extract_news200_response_videos_inner.dart';
part 'model/extract_publish_date200_response.dart';
part 'model/find_similar_books200_response.dart';
part 'model/generate_nonsense_word200_response.dart';
part 'model/list_word_synonyms200_response.dart';
part 'model/pluralize_word200_response.dart';
part 'model/random_meme200_response.dart';
part 'model/random_poem200_response.dart';
part 'model/random_quote200_response.dart';
part 'model/random_riddle200_response.dart';
part 'model/random_trivia200_response.dart';
part 'model/read_key_value_from_store200_response.dart';
part 'model/retrieve_page_rank200_response.dart';
part 'model/retrieve_recipe_information200_response.dart';
part 'model/retrieve_recipe_information200_response_credits.dart';
part 'model/retrieve_recipe_information200_response_dietary_properties.dart';
part 'model/retrieve_recipe_information200_response_ingredients_inner.dart';
part 'model/retrieve_recipe_information200_response_ingredients_inner_measures.dart';
part 'model/retrieve_recipe_information200_response_instructions_inner.dart';
part 'model/retrieve_recipe_information200_response_instructions_inner_steps_inner.dart';
part 'model/retrieve_recipe_information200_response_nutrition.dart';
part 'model/retrieve_recipe_information200_response_nutrition_ingredient_breakdown_inner.dart';
part 'model/retrieve_recipe_information200_response_scores.dart';
part 'model/retrieve_recipe_information200_response_taste.dart';
part 'model/retrieve_recipe_information200_response_times.dart';
part 'model/score_readability200_response.dart';
part 'model/score_text200_response.dart';
part 'model/score_text200_response_interestingness.dart';
part 'model/score_text200_response_interestingness_subscores.dart';
part 'model/score_text200_response_readability.dart';
part 'model/score_text200_response_readability_mainscores.dart';
part 'model/score_text200_response_readability_subscores.dart';
part 'model/score_text200_response_skimmability.dart';
part 'model/score_text200_response_skimmability_mainscores.dart';
part 'model/score_text200_response_skimmability_subscores.dart';
part 'model/score_text200_response_style.dart';
part 'model/score_text200_response_style_subscores.dart';
part 'model/search_books200_response.dart';
part 'model/search_books200_response_books_inner_inner.dart';
part 'model/search_drinks200_response.dart';
part 'model/search_drinks200_response_drinks_inner.dart';
part 'model/search_drinks200_response_drinks_inner_credits.dart';
part 'model/search_drinks200_response_drinks_inner_ingredients_inner.dart';
part 'model/search_drinks200_response_drinks_inner_ingredients_inner_measures.dart';
part 'model/search_drinks200_response_drinks_inner_ingredients_inner_measures_metric.dart';
part 'model/search_drinks200_response_drinks_inner_ingredients_inner_measures_us.dart';
part 'model/search_drinks200_response_drinks_inner_instructions_inner.dart';
part 'model/search_drinks200_response_drinks_inner_instructions_inner_steps_inner.dart';
part 'model/search_drinks200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner.dart';
part 'model/search_drinks200_response_drinks_inner_nutrition.dart';
part 'model/search_drinks200_response_drinks_inner_nutrition_caloric_breakdown.dart';
part 'model/search_drinks200_response_drinks_inner_nutrition_flavonoids_inner.dart';
part 'model/search_drinks200_response_drinks_inner_nutrition_ingredient_breakdown_inner.dart';
part 'model/search_drinks200_response_drinks_inner_nutrition_ingredient_breakdown_inner_nutrients_inner.dart';
part 'model/search_drinks200_response_drinks_inner_nutrition_nutrients_inner.dart';
part 'model/search_drinks200_response_drinks_inner_nutrition_weight_per_serving.dart';
part 'model/search_gifs200_response.dart';
part 'model/search_gifs200_response_images_inner.dart';
part 'model/search_icons200_response.dart';
part 'model/search_jokes200_response.dart';
part 'model/search_jokes200_response_jokes_inner.dart';
part 'model/search_memes200_response.dart';
part 'model/search_memes200_response_memes_inner.dart';
part 'model/search_news200_response.dart';
part 'model/search_news200_response_news_inner.dart';
part 'model/search_recipes200_response.dart';
part 'model/search_recipes200_response_recipes_inner.dart';
part 'model/search_recipes200_response_recipes_inner_nutrition.dart';
part 'model/search_recipes200_response_recipes_inner_nutrition_nutrients_inner.dart';
part 'model/search_restaurants200_response.dart';
part 'model/search_restaurants200_response_restaurants_inner.dart';
part 'model/search_restaurants200_response_restaurants_inner_address.dart';
part 'model/search_restaurants200_response_restaurants_inner_local_hours.dart';
part 'model/search_restaurants200_response_restaurants_inner_local_hours_operational.dart';
part 'model/search_royalty_free_images200_response.dart';
part 'model/search_royalty_free_images200_response_images_inner.dart';
part 'model/search_royalty_free_images200_response_images_inner_license.dart';
part 'model/search_web200_response.dart';
part 'model/search_web200_response_results_inner.dart';
part 'model/singularize_word200_response.dart';
part 'model/stem_text200_response.dart';
part 'model/store_key_value_get200_response.dart';
part 'model/tag_part_of_speech200_response.dart';
part 'model/top_news200_response.dart';
part 'model/top_news200_response_top_news_inner.dart';
part 'model/top_news200_response_top_news_inner_news_inner.dart';
part 'model/verify_email_address200_response.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
