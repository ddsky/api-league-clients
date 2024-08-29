# coding: utf-8

# flake8: noqa

"""
    API League

    API League is a Hub for World Class APIs.

    The version of the OpenAPI document: 1.6.3
    Contact: mail@apileague.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


__version__ = "1.6.3"

# import apis into sdk package
from apileague.api.art_api import ArtApi
from apileague.api.books_api import BooksApi
from apileague.api.food_api import FoodApi
from apileague.api.humor_api import HumorApi
from apileague.api.knowledge_api import KnowledgeApi
from apileague.api.math_api import MathApi
from apileague.api.media_api import MediaApi
from apileague.api.news_api import NewsApi
from apileague.api.storage_api import StorageApi
from apileague.api.text_api import TextApi
from apileague.api.web_api import WebApi

# import ApiClient
from apileague.api_response import ApiResponse
from apileague.api_client import ApiClient
from apileague.configuration import Configuration
from apileague.exceptions import OpenApiException
from apileague.exceptions import ApiTypeError
from apileague.exceptions import ApiValueError
from apileague.exceptions import ApiKeyError
from apileague.exceptions import ApiAttributeError
from apileague.exceptions import ApiException

# import models into sdk package
from apileague.models.compute_nutrition200_response import ComputeNutrition200Response
from apileague.models.compute_nutrition200_response_ingredient_breakdown_inner import ComputeNutrition200ResponseIngredientBreakdownInner
from apileague.models.compute_nutrition200_response_ingredient_breakdown_inner_nutrients_inner import ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner
from apileague.models.convert_units200_response import ConvertUnits200Response
from apileague.models.correct_spelling200_response import CorrectSpelling200Response
from apileague.models.detect_gender_by_name200_response import DetectGenderByName200Response
from apileague.models.detect_language200_response_inner import DetectLanguage200ResponseInner
from apileague.models.detect_main_image_color200_response_inner import DetectMainImageColor200ResponseInner
from apileague.models.detect_sentiment200_response import DetectSentiment200Response
from apileague.models.detect_sentiment200_response_document import DetectSentiment200ResponseDocument
from apileague.models.detect_sentiment200_response_sentences_inner import DetectSentiment200ResponseSentencesInner
from apileague.models.extract_authors200_response import ExtractAuthors200Response
from apileague.models.extract_authors200_response_authors_inner import ExtractAuthors200ResponseAuthorsInner
from apileague.models.extract_content_from_a_web_page200_response import ExtractContentFromAWebPage200Response
from apileague.models.extract_dates200_response import ExtractDates200Response
from apileague.models.extract_dates200_response_dates_inner import ExtractDates200ResponseDatesInner
from apileague.models.extract_entities200_response import ExtractEntities200Response
from apileague.models.extract_entities200_response_entities_inner import ExtractEntities200ResponseEntitiesInner
from apileague.models.extract_news200_response import ExtractNews200Response
from apileague.models.extract_news200_response_images_inner import ExtractNews200ResponseImagesInner
from apileague.models.extract_news200_response_videos_inner import ExtractNews200ResponseVideosInner
from apileague.models.extract_publish_date200_response import ExtractPublishDate200Response
from apileague.models.find_similar_books200_response import FindSimilarBooks200Response
from apileague.models.generate_nonsense_word200_response import GenerateNonsenseWord200Response
from apileague.models.list_word_synonyms200_response import ListWordSynonyms200Response
from apileague.models.pluralize_word200_response import PluralizeWord200Response
from apileague.models.random_meme200_response import RandomMeme200Response
from apileague.models.random_poem200_response import RandomPoem200Response
from apileague.models.random_quote200_response import RandomQuote200Response
from apileague.models.random_riddle200_response import RandomRiddle200Response
from apileague.models.random_trivia200_response import RandomTrivia200Response
from apileague.models.read_key_value_from_store200_response import ReadKeyValueFromStore200Response
from apileague.models.retrieve_page_rank200_response import RetrievePageRank200Response
from apileague.models.retrieve_recipe_information200_response import RetrieveRecipeInformation200Response
from apileague.models.retrieve_recipe_information200_response_credits import RetrieveRecipeInformation200ResponseCredits
from apileague.models.retrieve_recipe_information200_response_dietary_properties import RetrieveRecipeInformation200ResponseDietaryProperties
from apileague.models.retrieve_recipe_information200_response_ingredients_inner import RetrieveRecipeInformation200ResponseIngredientsInner
from apileague.models.retrieve_recipe_information200_response_ingredients_inner_measures import RetrieveRecipeInformation200ResponseIngredientsInnerMeasures
from apileague.models.retrieve_recipe_information200_response_instructions_inner import RetrieveRecipeInformation200ResponseInstructionsInner
from apileague.models.retrieve_recipe_information200_response_instructions_inner_steps_inner import RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner
from apileague.models.retrieve_recipe_information200_response_nutrition import RetrieveRecipeInformation200ResponseNutrition
from apileague.models.retrieve_recipe_information200_response_nutrition_ingredient_breakdown_inner import RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner
from apileague.models.retrieve_recipe_information200_response_scores import RetrieveRecipeInformation200ResponseScores
from apileague.models.retrieve_recipe_information200_response_taste import RetrieveRecipeInformation200ResponseTaste
from apileague.models.retrieve_recipe_information200_response_times import RetrieveRecipeInformation200ResponseTimes
from apileague.models.score_readability200_response import ScoreReadability200Response
from apileague.models.score_text200_response import ScoreText200Response
from apileague.models.score_text200_response_interestingness import ScoreText200ResponseInterestingness
from apileague.models.score_text200_response_interestingness_subscores import ScoreText200ResponseInterestingnessSubscores
from apileague.models.score_text200_response_readability import ScoreText200ResponseReadability
from apileague.models.score_text200_response_readability_mainscores import ScoreText200ResponseReadabilityMainscores
from apileague.models.score_text200_response_readability_subscores import ScoreText200ResponseReadabilitySubscores
from apileague.models.score_text200_response_skimmability import ScoreText200ResponseSkimmability
from apileague.models.score_text200_response_skimmability_mainscores import ScoreText200ResponseSkimmabilityMainscores
from apileague.models.score_text200_response_skimmability_subscores import ScoreText200ResponseSkimmabilitySubscores
from apileague.models.score_text200_response_style import ScoreText200ResponseStyle
from apileague.models.score_text200_response_style_subscores import ScoreText200ResponseStyleSubscores
from apileague.models.search_books200_response import SearchBooks200Response
from apileague.models.search_books200_response_books_inner_inner import SearchBooks200ResponseBooksInnerInner
from apileague.models.search_drinks200_response import SearchDrinks200Response
from apileague.models.search_drinks200_response_drinks_inner import SearchDrinks200ResponseDrinksInner
from apileague.models.search_drinks200_response_drinks_inner_credits import SearchDrinks200ResponseDrinksInnerCredits
from apileague.models.search_drinks200_response_drinks_inner_ingredients_inner import SearchDrinks200ResponseDrinksInnerIngredientsInner
from apileague.models.search_drinks200_response_drinks_inner_ingredients_inner_measures import SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures
from apileague.models.search_drinks200_response_drinks_inner_ingredients_inner_measures_metric import SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric
from apileague.models.search_drinks200_response_drinks_inner_ingredients_inner_measures_us import SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs
from apileague.models.search_drinks200_response_drinks_inner_instructions_inner import SearchDrinks200ResponseDrinksInnerInstructionsInner
from apileague.models.search_drinks200_response_drinks_inner_instructions_inner_steps_inner import SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner
from apileague.models.search_drinks200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner import SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner
from apileague.models.search_drinks200_response_drinks_inner_nutrition import SearchDrinks200ResponseDrinksInnerNutrition
from apileague.models.search_drinks200_response_drinks_inner_nutrition_caloric_breakdown import SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown
from apileague.models.search_drinks200_response_drinks_inner_nutrition_flavonoids_inner import SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner
from apileague.models.search_drinks200_response_drinks_inner_nutrition_ingredient_breakdown_inner import SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner
from apileague.models.search_drinks200_response_drinks_inner_nutrition_ingredient_breakdown_inner_nutrients_inner import SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner
from apileague.models.search_drinks200_response_drinks_inner_nutrition_nutrients_inner import SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner
from apileague.models.search_drinks200_response_drinks_inner_nutrition_weight_per_serving import SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing
from apileague.models.search_gifs200_response import SearchGifs200Response
from apileague.models.search_gifs200_response_images_inner import SearchGifs200ResponseImagesInner
from apileague.models.search_icons200_response import SearchIcons200Response
from apileague.models.search_jokes200_response import SearchJokes200Response
from apileague.models.search_jokes200_response_jokes_inner import SearchJokes200ResponseJokesInner
from apileague.models.search_memes200_response import SearchMemes200Response
from apileague.models.search_memes200_response_memes_inner import SearchMemes200ResponseMemesInner
from apileague.models.search_news200_response import SearchNews200Response
from apileague.models.search_news200_response_news_inner import SearchNews200ResponseNewsInner
from apileague.models.search_recipes200_response import SearchRecipes200Response
from apileague.models.search_recipes200_response_recipes_inner import SearchRecipes200ResponseRecipesInner
from apileague.models.search_recipes200_response_recipes_inner_nutrition import SearchRecipes200ResponseRecipesInnerNutrition
from apileague.models.search_recipes200_response_recipes_inner_nutrition_nutrients_inner import SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner
from apileague.models.search_restaurants200_response import SearchRestaurants200Response
from apileague.models.search_restaurants200_response_restaurants_inner import SearchRestaurants200ResponseRestaurantsInner
from apileague.models.search_restaurants200_response_restaurants_inner_address import SearchRestaurants200ResponseRestaurantsInnerAddress
from apileague.models.search_restaurants200_response_restaurants_inner_local_hours import SearchRestaurants200ResponseRestaurantsInnerLocalHours
from apileague.models.search_restaurants200_response_restaurants_inner_local_hours_operational import SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
from apileague.models.search_royalty_free_images200_response import SearchRoyaltyFreeImages200Response
from apileague.models.search_royalty_free_images200_response_images_inner import SearchRoyaltyFreeImages200ResponseImagesInner
from apileague.models.search_royalty_free_images200_response_images_inner_license import SearchRoyaltyFreeImages200ResponseImagesInnerLicense
from apileague.models.search_web200_response import SearchWeb200Response
from apileague.models.search_web200_response_results_inner import SearchWeb200ResponseResultsInner
from apileague.models.singularize_word200_response import SingularizeWord200Response
from apileague.models.stem_text200_response import StemText200Response
from apileague.models.store_key_value_get200_response import StoreKeyValueGET200Response
from apileague.models.tag_part_of_speech200_response import TagPartOfSpeech200Response
from apileague.models.top_news200_response import TopNews200Response
from apileague.models.top_news200_response_top_news_inner import TopNews200ResponseTopNewsInner
from apileague.models.top_news200_response_top_news_inner_news_inner import TopNews200ResponseTopNewsInnerNewsInner
from apileague.models.verify_email_address200_response import VerifyEmailAddress200Response
