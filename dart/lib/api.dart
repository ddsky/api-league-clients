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
part 'api/games_api.dart';
part 'api/humor_api.dart';
part 'api/knowledge_api.dart';
part 'api/math_api.dart';
part 'api/media_api.dart';
part 'api/news_api.dart';
part 'api/storage_api.dart';
part 'api/text_api.dart';
part 'api/web_api.dart';

part 'model/art_search_api200_response.dart';
part 'model/compute_nutrition_api200_response.dart';
part 'model/compute_nutrition_api200_response_ingredient_breakdown_inner.dart';
part 'model/compute_nutrition_api200_response_ingredient_breakdown_inner_nutrients_inner.dart';
part 'model/convert_units_api200_response.dart';
part 'model/correct_spelling_api200_response.dart';
part 'model/detect_gender_by_name_api200_response.dart';
part 'model/detect_language_api200_response_inner.dart';
part 'model/detect_main_image_color_api200_response_inner.dart';
part 'model/detect_sentiment_api200_response.dart';
part 'model/detect_sentiment_api200_response_document.dart';
part 'model/detect_sentiment_api200_response_sentences_inner.dart';
part 'model/extract_authors_api200_response.dart';
part 'model/extract_authors_api200_response_authors_inner.dart';
part 'model/extract_content_from_a_web_page_api200_response.dart';
part 'model/extract_dates_api200_response.dart';
part 'model/extract_dates_api200_response_dates_inner.dart';
part 'model/extract_entities_api200_response.dart';
part 'model/extract_entities_api200_response_entities_inner.dart';
part 'model/extract_news_api200_response.dart';
part 'model/extract_news_api200_response_images_inner.dart';
part 'model/extract_news_api200_response_videos_inner.dart';
part 'model/extract_publish_date_api200_response.dart';
part 'model/find_similar_books_api200_response.dart';
part 'model/find_similar_games_api200_response.dart';
part 'model/find_similar_games_api200_response_results_inner.dart';
part 'model/generate_nonsense_word_api200_response.dart';
part 'model/list_word_synonyms_api200_response.dart';
part 'model/pluralize_word_api200_response.dart';
part 'model/random_meme_api200_response.dart';
part 'model/random_poem_api200_response.dart';
part 'model/random_quote_api200_response.dart';
part 'model/random_riddle_api200_response.dart';
part 'model/random_trivia_api200_response.dart';
part 'model/read_key_value_from_store_api200_response.dart';
part 'model/retrieve_artwork_by_id200_response.dart';
part 'model/retrieve_game_by_id200_response.dart';
part 'model/retrieve_game_by_id200_response_offers_inner.dart';
part 'model/retrieve_game_by_id200_response_offers_inner_price.dart';
part 'model/retrieve_game_by_id200_response_official_stores_inner.dart';
part 'model/retrieve_game_by_id200_response_playtime.dart';
part 'model/retrieve_game_by_id200_response_rating.dart';
part 'model/retrieve_page_rank_api200_response.dart';
part 'model/retrieve_recipe_information_api200_response.dart';
part 'model/retrieve_recipe_information_api200_response_credits.dart';
part 'model/retrieve_recipe_information_api200_response_dietary_properties.dart';
part 'model/retrieve_recipe_information_api200_response_ingredients_inner.dart';
part 'model/retrieve_recipe_information_api200_response_ingredients_inner_measures.dart';
part 'model/retrieve_recipe_information_api200_response_instructions_inner.dart';
part 'model/retrieve_recipe_information_api200_response_instructions_inner_steps_inner.dart';
part 'model/retrieve_recipe_information_api200_response_nutrition.dart';
part 'model/retrieve_recipe_information_api200_response_nutrition_ingredient_breakdown_inner.dart';
part 'model/retrieve_recipe_information_api200_response_scores.dart';
part 'model/retrieve_recipe_information_api200_response_taste.dart';
part 'model/retrieve_recipe_information_api200_response_times.dart';
part 'model/score_readability_api200_response.dart';
part 'model/score_text_api200_response.dart';
part 'model/score_text_api200_response_interestingness.dart';
part 'model/score_text_api200_response_interestingness_subscores.dart';
part 'model/score_text_api200_response_readability.dart';
part 'model/score_text_api200_response_readability_mainscores.dart';
part 'model/score_text_api200_response_readability_subscores.dart';
part 'model/score_text_api200_response_skimmability.dart';
part 'model/score_text_api200_response_skimmability_mainscores.dart';
part 'model/score_text_api200_response_skimmability_subscores.dart';
part 'model/score_text_api200_response_style.dart';
part 'model/score_text_api200_response_style_subscores.dart';
part 'model/search_books_api200_response.dart';
part 'model/search_books_api200_response_books_inner_inner.dart';
part 'model/search_drinks_api200_response.dart';
part 'model/search_drinks_api200_response_drinks_inner.dart';
part 'model/search_drinks_api200_response_drinks_inner_credits.dart';
part 'model/search_drinks_api200_response_drinks_inner_ingredients_inner.dart';
part 'model/search_drinks_api200_response_drinks_inner_ingredients_inner_measures.dart';
part 'model/search_drinks_api200_response_drinks_inner_ingredients_inner_measures_metric.dart';
part 'model/search_drinks_api200_response_drinks_inner_ingredients_inner_measures_us.dart';
part 'model/search_drinks_api200_response_drinks_inner_instructions_inner.dart';
part 'model/search_drinks_api200_response_drinks_inner_instructions_inner_steps_inner.dart';
part 'model/search_drinks_api200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner.dart';
part 'model/search_drinks_api200_response_drinks_inner_nutrition.dart';
part 'model/search_drinks_api200_response_drinks_inner_nutrition_caloric_breakdown.dart';
part 'model/search_drinks_api200_response_drinks_inner_nutrition_flavonoids_inner.dart';
part 'model/search_drinks_api200_response_drinks_inner_nutrition_ingredient_breakdown_inner.dart';
part 'model/search_drinks_api200_response_drinks_inner_nutrition_ingredient_breakdown_inner_nutrients_inner.dart';
part 'model/search_drinks_api200_response_drinks_inner_nutrition_nutrients_inner.dart';
part 'model/search_drinks_api200_response_drinks_inner_nutrition_weight_per_serving.dart';
part 'model/search_games_api200_response.dart';
part 'model/search_games_api200_response_active_filter_options_inner.dart';
part 'model/search_games_api200_response_active_filter_options_inner_values_inner.dart';
part 'model/search_games_api200_response_filter_options_inner.dart';
part 'model/search_games_api200_response_filter_options_inner_values_inner.dart';
part 'model/search_games_api200_response_results_inner.dart';
part 'model/search_games_api200_response_results_inner_platforms_inner.dart';
part 'model/search_games_api200_response_results_inner_rating.dart';
part 'model/search_games_api200_response_sorting_options_inner.dart';
part 'model/search_gifs_api200_response.dart';
part 'model/search_gifs_api200_response_images_inner.dart';
part 'model/search_icons_api200_response.dart';
part 'model/search_jokes_api200_response.dart';
part 'model/search_jokes_api200_response_jokes_inner.dart';
part 'model/search_memes_api200_response.dart';
part 'model/search_memes_api200_response_memes_inner.dart';
part 'model/search_news_api200_response.dart';
part 'model/search_news_api200_response_news_inner.dart';
part 'model/search_recipes_api200_response.dart';
part 'model/search_recipes_api200_response_recipes_inner.dart';
part 'model/search_recipes_api200_response_recipes_inner_nutrition.dart';
part 'model/search_recipes_api200_response_recipes_inner_nutrition_nutrients_inner.dart';
part 'model/search_restaurants_api200_response.dart';
part 'model/search_restaurants_api200_response_restaurants_inner.dart';
part 'model/search_restaurants_api200_response_restaurants_inner_address.dart';
part 'model/search_restaurants_api200_response_restaurants_inner_local_hours.dart';
part 'model/search_restaurants_api200_response_restaurants_inner_local_hours_operational.dart';
part 'model/search_royalty_free_images_api200_response.dart';
part 'model/search_royalty_free_images_api200_response_images_inner.dart';
part 'model/search_royalty_free_images_api200_response_images_inner_license.dart';
part 'model/search_web_api200_response.dart';
part 'model/search_web_api200_response_results_inner.dart';
part 'model/singularize_word_api200_response.dart';
part 'model/stem_text_api200_response.dart';
part 'model/store_key_value_getapi200_response.dart';
part 'model/tag_part_of_speech_api200_response.dart';
part 'model/top_news_api200_response.dart';
part 'model/top_news_api200_response_top_news_inner.dart';
part 'model/top_news_api200_response_top_news_inner_news_inner.dart';
part 'model/vector_search_api200_response.dart';
part 'model/vector_search_api200_response_vectors_inner.dart';
part 'model/verify_email_address_api200_response.dart';


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
