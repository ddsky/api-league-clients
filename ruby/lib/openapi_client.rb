=begin
#API League

#API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.2.0
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/compute_nutrition200_response'
require 'openapi_client/models/compute_nutrition200_response_ingredient_breakdown_inner'
require 'openapi_client/models/compute_nutrition200_response_ingredient_breakdown_inner_nutrients_inner'
require 'openapi_client/models/convert_units200_response'
require 'openapi_client/models/correct_spelling200_response'
require 'openapi_client/models/detect_language200_response_inner'
require 'openapi_client/models/detect_main_image_color200_response_inner'
require 'openapi_client/models/detect_sentiment200_response'
require 'openapi_client/models/detect_sentiment200_response_document'
require 'openapi_client/models/detect_sentiment200_response_sentences_inner'
require 'openapi_client/models/extract_authors200_response'
require 'openapi_client/models/extract_authors200_response_authors_inner'
require 'openapi_client/models/extract_content_from_a_web_page200_response'
require 'openapi_client/models/extract_dates200_response'
require 'openapi_client/models/extract_dates200_response_dates_inner'
require 'openapi_client/models/extract_entities200_response'
require 'openapi_client/models/extract_entities200_response_entities_inner'
require 'openapi_client/models/extract_news200_response'
require 'openapi_client/models/extract_publish_date200_response'
require 'openapi_client/models/find_similar_books200_response'
require 'openapi_client/models/generate_nonsense_word200_response'
require 'openapi_client/models/list_word_synonyms200_response'
require 'openapi_client/models/pluralize_word200_response'
require 'openapi_client/models/random_meme200_response'
require 'openapi_client/models/random_poem200_response'
require 'openapi_client/models/random_quote200_response'
require 'openapi_client/models/random_trivia200_response'
require 'openapi_client/models/read_key_value_from_store200_response'
require 'openapi_client/models/retrieve_page_rank200_response'
require 'openapi_client/models/retrieve_recipe_information200_response'
require 'openapi_client/models/retrieve_recipe_information200_response_credits'
require 'openapi_client/models/retrieve_recipe_information200_response_dietary_properties'
require 'openapi_client/models/retrieve_recipe_information200_response_ingredients_inner'
require 'openapi_client/models/retrieve_recipe_information200_response_ingredients_inner_measures'
require 'openapi_client/models/retrieve_recipe_information200_response_ingredients_inner_measures_metric'
require 'openapi_client/models/retrieve_recipe_information200_response_instructions_inner'
require 'openapi_client/models/retrieve_recipe_information200_response_instructions_inner_steps_inner'
require 'openapi_client/models/retrieve_recipe_information200_response_instructions_inner_steps_inner_ingredients_inner'
require 'openapi_client/models/retrieve_recipe_information200_response_nutrition'
require 'openapi_client/models/retrieve_recipe_information200_response_nutrition_caloric_breakdown'
require 'openapi_client/models/retrieve_recipe_information200_response_nutrition_flavonoids_inner'
require 'openapi_client/models/retrieve_recipe_information200_response_nutrition_ingredient_breakdown_inner'
require 'openapi_client/models/retrieve_recipe_information200_response_nutrition_ingredient_breakdown_inner_nutrients_inner'
require 'openapi_client/models/retrieve_recipe_information200_response_nutrition_weight_per_serving'
require 'openapi_client/models/retrieve_recipe_information200_response_scores'
require 'openapi_client/models/retrieve_recipe_information200_response_taste'
require 'openapi_client/models/retrieve_recipe_information200_response_times'
require 'openapi_client/models/score_readability200_response'
require 'openapi_client/models/score_text200_response'
require 'openapi_client/models/score_text200_response_interestingness'
require 'openapi_client/models/score_text200_response_interestingness_subscores'
require 'openapi_client/models/score_text200_response_readability'
require 'openapi_client/models/score_text200_response_readability_mainscores'
require 'openapi_client/models/score_text200_response_readability_subscores'
require 'openapi_client/models/score_text200_response_skimmability'
require 'openapi_client/models/score_text200_response_skimmability_mainscores'
require 'openapi_client/models/score_text200_response_skimmability_subscores'
require 'openapi_client/models/score_text200_response_style'
require 'openapi_client/models/score_text200_response_style_subscores'
require 'openapi_client/models/search_books200_response'
require 'openapi_client/models/search_books200_response_books_inner'
require 'openapi_client/models/search_gifs200_response'
require 'openapi_client/models/search_gifs200_response_images_inner'
require 'openapi_client/models/search_jokes200_response'
require 'openapi_client/models/search_jokes200_response_jokes_inner'
require 'openapi_client/models/search_memes200_response'
require 'openapi_client/models/search_memes200_response_memes_inner'
require 'openapi_client/models/search_news200_response'
require 'openapi_client/models/search_news200_response_news_inner'
require 'openapi_client/models/search_recipes200_response'
require 'openapi_client/models/search_recipes200_response_recipes_inner'
require 'openapi_client/models/search_recipes200_response_recipes_inner_nutrition'
require 'openapi_client/models/search_recipes200_response_recipes_inner_nutrition_nutrients_inner'
require 'openapi_client/models/search_restaurants200_response'
require 'openapi_client/models/search_restaurants200_response_restaurants_inner'
require 'openapi_client/models/search_restaurants200_response_restaurants_inner_address'
require 'openapi_client/models/search_restaurants200_response_restaurants_inner_local_hours'
require 'openapi_client/models/search_restaurants200_response_restaurants_inner_local_hours_operational'
require 'openapi_client/models/search_royalty_free_images200_response'
require 'openapi_client/models/search_royalty_free_images200_response_images_inner'
require 'openapi_client/models/search_royalty_free_images200_response_images_inner_license'
require 'openapi_client/models/search_web200_response'
require 'openapi_client/models/search_web200_response_results_inner'
require 'openapi_client/models/singularize_word200_response'
require 'openapi_client/models/stem_text200_response'
require 'openapi_client/models/store_key_value_get200_response'
require 'openapi_client/models/tag_part_of_speech200_response'
require 'openapi_client/models/top_news200_response'
require 'openapi_client/models/top_news200_response_top_news_inner'
require 'openapi_client/models/top_news200_response_top_news_inner_news_inner'

# APIs
require 'openapi_client/api/art_api'
require 'openapi_client/api/books_api'
require 'openapi_client/api/food_api'
require 'openapi_client/api/humor_api'
require 'openapi_client/api/knowledge_api'
require 'openapi_client/api/math_api'
require 'openapi_client/api/media_api'
require 'openapi_client/api/news_api'
require 'openapi_client/api/storage_api'
require 'openapi_client/api/text_api'
require 'openapi_client/api/web_api'

module OpenapiClient
  class << self
    # Customize default settings for the SDK using block.
    #   OpenapiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
