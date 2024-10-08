QT += network

HEADERS += \
# Models
    $${PWD}/OAIComputeNutrition_200_response.h \
    $${PWD}/OAIComputeNutrition_200_response_ingredient_breakdown_inner.h \
    $${PWD}/OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner.h \
    $${PWD}/OAIConvertUnits_200_response.h \
    $${PWD}/OAICorrectSpelling_200_response.h \
    $${PWD}/OAIDetectGenderByName_200_response.h \
    $${PWD}/OAIDetectLanguage_200_response_inner.h \
    $${PWD}/OAIDetectMainImageColor_200_response_inner.h \
    $${PWD}/OAIDetectSentiment_200_response.h \
    $${PWD}/OAIDetectSentiment_200_response_document.h \
    $${PWD}/OAIDetectSentiment_200_response_sentences_inner.h \
    $${PWD}/OAIExtractAuthors_200_response.h \
    $${PWD}/OAIExtractAuthors_200_response_authors_inner.h \
    $${PWD}/OAIExtractContentFromAWebPage_200_response.h \
    $${PWD}/OAIExtractDates_200_response.h \
    $${PWD}/OAIExtractDates_200_response_dates_inner.h \
    $${PWD}/OAIExtractEntities_200_response.h \
    $${PWD}/OAIExtractEntities_200_response_entities_inner.h \
    $${PWD}/OAIExtractNews_200_response.h \
    $${PWD}/OAIExtractNews_200_response_images_inner.h \
    $${PWD}/OAIExtractNews_200_response_videos_inner.h \
    $${PWD}/OAIExtractPublishDate_200_response.h \
    $${PWD}/OAIFindSimilarBooks_200_response.h \
    $${PWD}/OAIGenerateNonsenseWord_200_response.h \
    $${PWD}/OAIListWordSynonyms_200_response.h \
    $${PWD}/OAIPluralizeWord_200_response.h \
    $${PWD}/OAIRandomMeme_200_response.h \
    $${PWD}/OAIRandomPoem_200_response.h \
    $${PWD}/OAIRandomQuote_200_response.h \
    $${PWD}/OAIRandomRiddle_200_response.h \
    $${PWD}/OAIRandomTrivia_200_response.h \
    $${PWD}/OAIReadKeyValueFromStore_200_response.h \
    $${PWD}/OAIRetrievePageRank_200_response.h \
    $${PWD}/OAIRetrieveRecipeInformation_200_response.h \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_credits.h \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_dietary_properties.h \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_ingredients_inner.h \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures.h \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_instructions_inner.h \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner.h \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_nutrition.h \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner.h \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_scores.h \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_taste.h \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_times.h \
    $${PWD}/OAIScoreReadability_200_response.h \
    $${PWD}/OAIScoreText_200_response.h \
    $${PWD}/OAIScoreText_200_response_interestingness.h \
    $${PWD}/OAIScoreText_200_response_interestingness_subscores.h \
    $${PWD}/OAIScoreText_200_response_readability.h \
    $${PWD}/OAIScoreText_200_response_readability_mainscores.h \
    $${PWD}/OAIScoreText_200_response_readability_subscores.h \
    $${PWD}/OAIScoreText_200_response_skimmability.h \
    $${PWD}/OAIScoreText_200_response_skimmability_mainscores.h \
    $${PWD}/OAIScoreText_200_response_skimmability_subscores.h \
    $${PWD}/OAIScoreText_200_response_style.h \
    $${PWD}/OAIScoreText_200_response_style_subscores.h \
    $${PWD}/OAISearchBooks_200_response.h \
    $${PWD}/OAISearchBooks_200_response_books_inner_inner.h \
    $${PWD}/OAISearchDrinks_200_response.h \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner.h \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_credits.h \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_ingredients_inner.h \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_ingredients_inner_measures.h \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_ingredients_inner_measures_metric.h \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_ingredients_inner_measures_us.h \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_instructions_inner.h \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_instructions_inner_steps_inner.h \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner.h \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_nutrition.h \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_nutrition_caloric_breakdown.h \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_nutrition_flavonoids_inner.h \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_nutrition_ingredient_breakdown_inner.h \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_nutrition_ingredient_breakdown_inner_nutrients_inner.h \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_nutrition_nutrients_inner.h \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_nutrition_weight_per_serving.h \
    $${PWD}/OAISearchGifs_200_response.h \
    $${PWD}/OAISearchGifs_200_response_images_inner.h \
    $${PWD}/OAISearchIcons_200_response.h \
    $${PWD}/OAISearchJokes_200_response.h \
    $${PWD}/OAISearchJokes_200_response_jokes_inner.h \
    $${PWD}/OAISearchMemes_200_response.h \
    $${PWD}/OAISearchMemes_200_response_memes_inner.h \
    $${PWD}/OAISearchNews_200_response.h \
    $${PWD}/OAISearchNews_200_response_news_inner.h \
    $${PWD}/OAISearchRecipes_200_response.h \
    $${PWD}/OAISearchRecipes_200_response_recipes_inner.h \
    $${PWD}/OAISearchRecipes_200_response_recipes_inner_nutrition.h \
    $${PWD}/OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner.h \
    $${PWD}/OAISearchRestaurants_200_response.h \
    $${PWD}/OAISearchRestaurants_200_response_restaurants_inner.h \
    $${PWD}/OAISearchRestaurants_200_response_restaurants_inner_address.h \
    $${PWD}/OAISearchRestaurants_200_response_restaurants_inner_local_hours.h \
    $${PWD}/OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational.h \
    $${PWD}/OAISearchRoyaltyFreeImages_200_response.h \
    $${PWD}/OAISearchRoyaltyFreeImages_200_response_images_inner.h \
    $${PWD}/OAISearchRoyaltyFreeImages_200_response_images_inner_license.h \
    $${PWD}/OAISearchWeb_200_response.h \
    $${PWD}/OAISearchWeb_200_response_results_inner.h \
    $${PWD}/OAISingularizeWord_200_response.h \
    $${PWD}/OAIStemText_200_response.h \
    $${PWD}/OAIStoreKeyValueGET_200_response.h \
    $${PWD}/OAITagPartOfSpeech_200_response.h \
    $${PWD}/OAITopNews_200_response.h \
    $${PWD}/OAITopNews_200_response_top_news_inner.h \
    $${PWD}/OAITopNews_200_response_top_news_inner_news_inner.h \
    $${PWD}/OAIVerifyEmailAddress_200_response.h \
# APIs
    $${PWD}/OAIArtApi.h \
    $${PWD}/OAIBooksApi.h \
    $${PWD}/OAIFoodApi.h \
    $${PWD}/OAIHumorApi.h \
    $${PWD}/OAIKnowledgeApi.h \
    $${PWD}/OAIMathApi.h \
    $${PWD}/OAIMediaApi.h \
    $${PWD}/OAINewsApi.h \
    $${PWD}/OAIStorageApi.h \
    $${PWD}/OAITextApi.h \
    $${PWD}/OAIWebApi.h \
# Others
    $${PWD}/OAIHelpers.h \
    $${PWD}/OAIHttpRequest.h \
    $${PWD}/OAIObject.h \
    $${PWD}/OAIEnum.h \
    $${PWD}/OAIHttpFileElement.h \
    $${PWD}/OAIServerConfiguration.h \
    $${PWD}/OAIServerVariable.h \
    $${PWD}/OAIOauth.h

SOURCES += \
# Models
    $${PWD}/OAIComputeNutrition_200_response.cpp \
    $${PWD}/OAIComputeNutrition_200_response_ingredient_breakdown_inner.cpp \
    $${PWD}/OAIComputeNutrition_200_response_ingredient_breakdown_inner_nutrients_inner.cpp \
    $${PWD}/OAIConvertUnits_200_response.cpp \
    $${PWD}/OAICorrectSpelling_200_response.cpp \
    $${PWD}/OAIDetectGenderByName_200_response.cpp \
    $${PWD}/OAIDetectLanguage_200_response_inner.cpp \
    $${PWD}/OAIDetectMainImageColor_200_response_inner.cpp \
    $${PWD}/OAIDetectSentiment_200_response.cpp \
    $${PWD}/OAIDetectSentiment_200_response_document.cpp \
    $${PWD}/OAIDetectSentiment_200_response_sentences_inner.cpp \
    $${PWD}/OAIExtractAuthors_200_response.cpp \
    $${PWD}/OAIExtractAuthors_200_response_authors_inner.cpp \
    $${PWD}/OAIExtractContentFromAWebPage_200_response.cpp \
    $${PWD}/OAIExtractDates_200_response.cpp \
    $${PWD}/OAIExtractDates_200_response_dates_inner.cpp \
    $${PWD}/OAIExtractEntities_200_response.cpp \
    $${PWD}/OAIExtractEntities_200_response_entities_inner.cpp \
    $${PWD}/OAIExtractNews_200_response.cpp \
    $${PWD}/OAIExtractNews_200_response_images_inner.cpp \
    $${PWD}/OAIExtractNews_200_response_videos_inner.cpp \
    $${PWD}/OAIExtractPublishDate_200_response.cpp \
    $${PWD}/OAIFindSimilarBooks_200_response.cpp \
    $${PWD}/OAIGenerateNonsenseWord_200_response.cpp \
    $${PWD}/OAIListWordSynonyms_200_response.cpp \
    $${PWD}/OAIPluralizeWord_200_response.cpp \
    $${PWD}/OAIRandomMeme_200_response.cpp \
    $${PWD}/OAIRandomPoem_200_response.cpp \
    $${PWD}/OAIRandomQuote_200_response.cpp \
    $${PWD}/OAIRandomRiddle_200_response.cpp \
    $${PWD}/OAIRandomTrivia_200_response.cpp \
    $${PWD}/OAIReadKeyValueFromStore_200_response.cpp \
    $${PWD}/OAIRetrievePageRank_200_response.cpp \
    $${PWD}/OAIRetrieveRecipeInformation_200_response.cpp \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_credits.cpp \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_dietary_properties.cpp \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_ingredients_inner.cpp \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_ingredients_inner_measures.cpp \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_instructions_inner.cpp \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_instructions_inner_steps_inner.cpp \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_nutrition.cpp \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_nutrition_ingredient_breakdown_inner.cpp \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_scores.cpp \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_taste.cpp \
    $${PWD}/OAIRetrieveRecipeInformation_200_response_times.cpp \
    $${PWD}/OAIScoreReadability_200_response.cpp \
    $${PWD}/OAIScoreText_200_response.cpp \
    $${PWD}/OAIScoreText_200_response_interestingness.cpp \
    $${PWD}/OAIScoreText_200_response_interestingness_subscores.cpp \
    $${PWD}/OAIScoreText_200_response_readability.cpp \
    $${PWD}/OAIScoreText_200_response_readability_mainscores.cpp \
    $${PWD}/OAIScoreText_200_response_readability_subscores.cpp \
    $${PWD}/OAIScoreText_200_response_skimmability.cpp \
    $${PWD}/OAIScoreText_200_response_skimmability_mainscores.cpp \
    $${PWD}/OAIScoreText_200_response_skimmability_subscores.cpp \
    $${PWD}/OAIScoreText_200_response_style.cpp \
    $${PWD}/OAIScoreText_200_response_style_subscores.cpp \
    $${PWD}/OAISearchBooks_200_response.cpp \
    $${PWD}/OAISearchBooks_200_response_books_inner_inner.cpp \
    $${PWD}/OAISearchDrinks_200_response.cpp \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner.cpp \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_credits.cpp \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_ingredients_inner.cpp \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_ingredients_inner_measures.cpp \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_ingredients_inner_measures_metric.cpp \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_ingredients_inner_measures_us.cpp \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_instructions_inner.cpp \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_instructions_inner_steps_inner.cpp \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner.cpp \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_nutrition.cpp \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_nutrition_caloric_breakdown.cpp \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_nutrition_flavonoids_inner.cpp \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_nutrition_ingredient_breakdown_inner.cpp \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_nutrition_ingredient_breakdown_inner_nutrients_inner.cpp \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_nutrition_nutrients_inner.cpp \
    $${PWD}/OAISearchDrinks_200_response_drinks_inner_nutrition_weight_per_serving.cpp \
    $${PWD}/OAISearchGifs_200_response.cpp \
    $${PWD}/OAISearchGifs_200_response_images_inner.cpp \
    $${PWD}/OAISearchIcons_200_response.cpp \
    $${PWD}/OAISearchJokes_200_response.cpp \
    $${PWD}/OAISearchJokes_200_response_jokes_inner.cpp \
    $${PWD}/OAISearchMemes_200_response.cpp \
    $${PWD}/OAISearchMemes_200_response_memes_inner.cpp \
    $${PWD}/OAISearchNews_200_response.cpp \
    $${PWD}/OAISearchNews_200_response_news_inner.cpp \
    $${PWD}/OAISearchRecipes_200_response.cpp \
    $${PWD}/OAISearchRecipes_200_response_recipes_inner.cpp \
    $${PWD}/OAISearchRecipes_200_response_recipes_inner_nutrition.cpp \
    $${PWD}/OAISearchRecipes_200_response_recipes_inner_nutrition_nutrients_inner.cpp \
    $${PWD}/OAISearchRestaurants_200_response.cpp \
    $${PWD}/OAISearchRestaurants_200_response_restaurants_inner.cpp \
    $${PWD}/OAISearchRestaurants_200_response_restaurants_inner_address.cpp \
    $${PWD}/OAISearchRestaurants_200_response_restaurants_inner_local_hours.cpp \
    $${PWD}/OAISearchRestaurants_200_response_restaurants_inner_local_hours_operational.cpp \
    $${PWD}/OAISearchRoyaltyFreeImages_200_response.cpp \
    $${PWD}/OAISearchRoyaltyFreeImages_200_response_images_inner.cpp \
    $${PWD}/OAISearchRoyaltyFreeImages_200_response_images_inner_license.cpp \
    $${PWD}/OAISearchWeb_200_response.cpp \
    $${PWD}/OAISearchWeb_200_response_results_inner.cpp \
    $${PWD}/OAISingularizeWord_200_response.cpp \
    $${PWD}/OAIStemText_200_response.cpp \
    $${PWD}/OAIStoreKeyValueGET_200_response.cpp \
    $${PWD}/OAITagPartOfSpeech_200_response.cpp \
    $${PWD}/OAITopNews_200_response.cpp \
    $${PWD}/OAITopNews_200_response_top_news_inner.cpp \
    $${PWD}/OAITopNews_200_response_top_news_inner_news_inner.cpp \
    $${PWD}/OAIVerifyEmailAddress_200_response.cpp \
# APIs
    $${PWD}/OAIArtApi.cpp \
    $${PWD}/OAIBooksApi.cpp \
    $${PWD}/OAIFoodApi.cpp \
    $${PWD}/OAIHumorApi.cpp \
    $${PWD}/OAIKnowledgeApi.cpp \
    $${PWD}/OAIMathApi.cpp \
    $${PWD}/OAIMediaApi.cpp \
    $${PWD}/OAINewsApi.cpp \
    $${PWD}/OAIStorageApi.cpp \
    $${PWD}/OAITextApi.cpp \
    $${PWD}/OAIWebApi.cpp \
# Others
    $${PWD}/OAIHelpers.cpp \
    $${PWD}/OAIHttpRequest.cpp \
    $${PWD}/OAIHttpFileElement.cpp \
    $${PWD}/OAIOauth.cpp
