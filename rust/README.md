# Rust API client for apileague

API League is a Hub for World Class APIs.


## Overview

This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://openapis.org) from a remote server, you can easily generate an API client.

- API version: 1.6.3
- Package version: 1.6.3
- Generator version: 7.8.0-SNAPSHOT
- Build package: `org.openapitools.codegen.languages.RustClientCodegen`

## Installation

Put the package under your project folder in a directory named `apileague` and add the following to `Cargo.toml` under `[dependencies]`:

```
apileague = { path = "./apileague" }
```

## Documentation for API Endpoints

All URIs are relative to *https://api.apileague.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ArtApi* | [**image_to_ascii_art_by_url**](docs/ArtApi.md#image_to_ascii_art_by_url) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL
*ArtApi* | [**random_poem**](docs/ArtApi.md#random_poem) | **GET** /retrieve-random-poem | Random Poem
*BooksApi* | [**find_similar_books**](docs/BooksApi.md#find_similar_books) | **GET** /list-similar-books | Find Similar Books
*BooksApi* | [**search_books**](docs/BooksApi.md#search_books) | **GET** /search-books | Search Books
*FoodApi* | [**compute_nutrition**](docs/FoodApi.md#compute_nutrition) | **GET** /compute-nutrition | Compute Nutrition
*FoodApi* | [**retrieve_recipe_information**](docs/FoodApi.md#retrieve_recipe_information) | **GET** /retrieve-recipe | Retrieve Recipe Information
*FoodApi* | [**search_drinks**](docs/FoodApi.md#search_drinks) | **GET** /search-drinks | Search Drinks
*FoodApi* | [**search_recipes**](docs/FoodApi.md#search_recipes) | **GET** /search-recipes | Search Recipes
*FoodApi* | [**search_restaurants**](docs/FoodApi.md#search_restaurants) | **GET** /search-restaurants | Search Restaurants
*HumorApi* | [**generate_nonsense_word**](docs/HumorApi.md#generate_nonsense_word) | **GET** /generate-nonsense-word | Generate Nonsense Word
*HumorApi* | [**random_joke**](docs/HumorApi.md#random_joke) | **GET** /retrieve-random-joke | Random Joke
*HumorApi* | [**random_meme**](docs/HumorApi.md#random_meme) | **GET** /retrieve-random-meme | Random Meme
*HumorApi* | [**search_gifs**](docs/HumorApi.md#search_gifs) | **GET** /search-gifs | Search Gifs
*HumorApi* | [**search_jokes**](docs/HumorApi.md#search_jokes) | **GET** /search-jokes | Search Jokes
*HumorApi* | [**search_memes**](docs/HumorApi.md#search_memes) | **GET** /search-memes | Search Memes
*KnowledgeApi* | [**random_quote**](docs/KnowledgeApi.md#random_quote) | **GET** /retrieve-random-quote | Random Quote
*KnowledgeApi* | [**random_riddle**](docs/KnowledgeApi.md#random_riddle) | **GET** /retrieve-random-riddle | Random Riddle
*KnowledgeApi* | [**random_trivia**](docs/KnowledgeApi.md#random_trivia) | **GET** /retrieve-random-trivia | Random Trivia
*MathApi* | [**convert_units**](docs/MathApi.md#convert_units) | **GET** /convert-units | Convert Units
*MediaApi* | [**detect_main_image_color**](docs/MediaApi.md#detect_main_image_color) | **GET** /detect-color | Detect Main Image Color
*MediaApi* | [**rescale_image**](docs/MediaApi.md#rescale_image) | **GET** /rescale-image | Rescale Image
*MediaApi* | [**search_icons**](docs/MediaApi.md#search_icons) | **GET** /search-icons | Search Icons
*MediaApi* | [**search_royalty_free_images**](docs/MediaApi.md#search_royalty_free_images) | **GET** /search-images | Search Royalty Free Images
*NewsApi* | [**extract_news**](docs/NewsApi.md#extract_news) | **GET** /extract-news | Extract News
*NewsApi* | [**search_news**](docs/NewsApi.md#search_news) | **GET** /search-news | Search News
*NewsApi* | [**top_news**](docs/NewsApi.md#top_news) | **GET** /retrieve-top-news | Top News
*StorageApi* | [**read_key_value_from_store**](docs/StorageApi.md#read_key_value_from_store) | **GET** /read-key-value | Read Key Value from Store
*StorageApi* | [**store_key_value_get**](docs/StorageApi.md#store_key_value_get) | **GET** /store-key-value | Store Key Value (GET)
*TextApi* | [**correct_spelling**](docs/TextApi.md#correct_spelling) | **GET** /correct-spelling | Correct Spelling
*TextApi* | [**detect_gender_by_name**](docs/TextApi.md#detect_gender_by_name) | **GET** /detect-gender | Detect Gender by Name
*TextApi* | [**detect_language**](docs/TextApi.md#detect_language) | **GET** /detect-language | Detect Language
*TextApi* | [**detect_sentiment**](docs/TextApi.md#detect_sentiment) | **GET** /detect-sentiment | Detect Sentiment
*TextApi* | [**extract_dates**](docs/TextApi.md#extract_dates) | **GET** /extract-dates | Extract Dates
*TextApi* | [**extract_entities**](docs/TextApi.md#extract_entities) | **GET** /extract-entities | Extract Entities
*TextApi* | [**list_word_synonyms**](docs/TextApi.md#list_word_synonyms) | **GET** /list-synonyms | List Word Synonyms
*TextApi* | [**pluralize_word**](docs/TextApi.md#pluralize_word) | **GET** /pluralize-word | Pluralize Word
*TextApi* | [**score_readability**](docs/TextApi.md#score_readability) | **GET** /score-readability | Score Readability
*TextApi* | [**score_text**](docs/TextApi.md#score_text) | **GET** /score-text | Score Text
*TextApi* | [**singularize_word**](docs/TextApi.md#singularize_word) | **GET** /singularize-word | Singularize Word
*TextApi* | [**stem_text**](docs/TextApi.md#stem_text) | **GET** /stem-text | Stem Text
*TextApi* | [**tag_part_of_speech**](docs/TextApi.md#tag_part_of_speech) | **GET** /tag-pos | Tag Part of Speech
*WebApi* | [**extract_authors**](docs/WebApi.md#extract_authors) | **GET** /extract-authors | Extract Authors
*WebApi* | [**extract_content_from_a_web_page**](docs/WebApi.md#extract_content_from_a_web_page) | **GET** /extract-content | Extract Content from a Web Page
*WebApi* | [**extract_publish_date**](docs/WebApi.md#extract_publish_date) | **GET** /extract-publish-date | Extract Publish Date
*WebApi* | [**retrieve_page_rank**](docs/WebApi.md#retrieve_page_rank) | **GET** /retrieve-page-rank | Retrieve Page Rank
*WebApi* | [**search_web**](docs/WebApi.md#search_web) | **GET** /search-web | Search Web
*WebApi* | [**verify_email_address**](docs/WebApi.md#verify_email_address) | **GET** /verify-email | Verify Email Address


## Documentation For Models

 - [ComputeNutrition200Response](docs/ComputeNutrition200Response.md)
 - [ComputeNutrition200ResponseIngredientBreakdownInner](docs/ComputeNutrition200ResponseIngredientBreakdownInner.md)
 - [ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner](docs/ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.md)
 - [ConvertUnits200Response](docs/ConvertUnits200Response.md)
 - [CorrectSpelling200Response](docs/CorrectSpelling200Response.md)
 - [DetectGenderByName200Response](docs/DetectGenderByName200Response.md)
 - [DetectLanguage200ResponseInner](docs/DetectLanguage200ResponseInner.md)
 - [DetectMainImageColor200ResponseInner](docs/DetectMainImageColor200ResponseInner.md)
 - [DetectSentiment200Response](docs/DetectSentiment200Response.md)
 - [DetectSentiment200ResponseDocument](docs/DetectSentiment200ResponseDocument.md)
 - [DetectSentiment200ResponseSentencesInner](docs/DetectSentiment200ResponseSentencesInner.md)
 - [ExtractAuthors200Response](docs/ExtractAuthors200Response.md)
 - [ExtractAuthors200ResponseAuthorsInner](docs/ExtractAuthors200ResponseAuthorsInner.md)
 - [ExtractContentFromAWebPage200Response](docs/ExtractContentFromAWebPage200Response.md)
 - [ExtractDates200Response](docs/ExtractDates200Response.md)
 - [ExtractDates200ResponseDatesInner](docs/ExtractDates200ResponseDatesInner.md)
 - [ExtractEntities200Response](docs/ExtractEntities200Response.md)
 - [ExtractEntities200ResponseEntitiesInner](docs/ExtractEntities200ResponseEntitiesInner.md)
 - [ExtractNews200Response](docs/ExtractNews200Response.md)
 - [ExtractNews200ResponseImagesInner](docs/ExtractNews200ResponseImagesInner.md)
 - [ExtractNews200ResponseVideosInner](docs/ExtractNews200ResponseVideosInner.md)
 - [ExtractPublishDate200Response](docs/ExtractPublishDate200Response.md)
 - [FindSimilarBooks200Response](docs/FindSimilarBooks200Response.md)
 - [GenerateNonsenseWord200Response](docs/GenerateNonsenseWord200Response.md)
 - [ListWordSynonyms200Response](docs/ListWordSynonyms200Response.md)
 - [PluralizeWord200Response](docs/PluralizeWord200Response.md)
 - [RandomMeme200Response](docs/RandomMeme200Response.md)
 - [RandomPoem200Response](docs/RandomPoem200Response.md)
 - [RandomQuote200Response](docs/RandomQuote200Response.md)
 - [RandomRiddle200Response](docs/RandomRiddle200Response.md)
 - [RandomTrivia200Response](docs/RandomTrivia200Response.md)
 - [ReadKeyValueFromStore200Response](docs/ReadKeyValueFromStore200Response.md)
 - [RetrievePageRank200Response](docs/RetrievePageRank200Response.md)
 - [RetrieveRecipeInformation200Response](docs/RetrieveRecipeInformation200Response.md)
 - [RetrieveRecipeInformation200ResponseCredits](docs/RetrieveRecipeInformation200ResponseCredits.md)
 - [RetrieveRecipeInformation200ResponseDietaryProperties](docs/RetrieveRecipeInformation200ResponseDietaryProperties.md)
 - [RetrieveRecipeInformation200ResponseIngredientsInner](docs/RetrieveRecipeInformation200ResponseIngredientsInner.md)
 - [RetrieveRecipeInformation200ResponseIngredientsInnerMeasures](docs/RetrieveRecipeInformation200ResponseIngredientsInnerMeasures.md)
 - [RetrieveRecipeInformation200ResponseInstructionsInner](docs/RetrieveRecipeInformation200ResponseInstructionsInner.md)
 - [RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner](docs/RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.md)
 - [RetrieveRecipeInformation200ResponseNutrition](docs/RetrieveRecipeInformation200ResponseNutrition.md)
 - [RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner](docs/RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.md)
 - [RetrieveRecipeInformation200ResponseScores](docs/RetrieveRecipeInformation200ResponseScores.md)
 - [RetrieveRecipeInformation200ResponseTaste](docs/RetrieveRecipeInformation200ResponseTaste.md)
 - [RetrieveRecipeInformation200ResponseTimes](docs/RetrieveRecipeInformation200ResponseTimes.md)
 - [ScoreReadability200Response](docs/ScoreReadability200Response.md)
 - [ScoreText200Response](docs/ScoreText200Response.md)
 - [ScoreText200ResponseInterestingness](docs/ScoreText200ResponseInterestingness.md)
 - [ScoreText200ResponseInterestingnessSubscores](docs/ScoreText200ResponseInterestingnessSubscores.md)
 - [ScoreText200ResponseReadability](docs/ScoreText200ResponseReadability.md)
 - [ScoreText200ResponseReadabilityMainscores](docs/ScoreText200ResponseReadabilityMainscores.md)
 - [ScoreText200ResponseReadabilitySubscores](docs/ScoreText200ResponseReadabilitySubscores.md)
 - [ScoreText200ResponseSkimmability](docs/ScoreText200ResponseSkimmability.md)
 - [ScoreText200ResponseSkimmabilityMainscores](docs/ScoreText200ResponseSkimmabilityMainscores.md)
 - [ScoreText200ResponseSkimmabilitySubscores](docs/ScoreText200ResponseSkimmabilitySubscores.md)
 - [ScoreText200ResponseStyle](docs/ScoreText200ResponseStyle.md)
 - [ScoreText200ResponseStyleSubscores](docs/ScoreText200ResponseStyleSubscores.md)
 - [SearchBooks200Response](docs/SearchBooks200Response.md)
 - [SearchBooks200ResponseBooksInnerInner](docs/SearchBooks200ResponseBooksInnerInner.md)
 - [SearchDrinks200Response](docs/SearchDrinks200Response.md)
 - [SearchDrinks200ResponseDrinksInner](docs/SearchDrinks200ResponseDrinksInner.md)
 - [SearchDrinks200ResponseDrinksInnerCredits](docs/SearchDrinks200ResponseDrinksInnerCredits.md)
 - [SearchDrinks200ResponseDrinksInnerIngredientsInner](docs/SearchDrinks200ResponseDrinksInnerIngredientsInner.md)
 - [SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures](docs/SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures.md)
 - [SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric](docs/SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric.md)
 - [SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs](docs/SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs.md)
 - [SearchDrinks200ResponseDrinksInnerInstructionsInner](docs/SearchDrinks200ResponseDrinksInnerInstructionsInner.md)
 - [SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner](docs/SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner.md)
 - [SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner](docs/SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.md)
 - [SearchDrinks200ResponseDrinksInnerNutrition](docs/SearchDrinks200ResponseDrinksInnerNutrition.md)
 - [SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown](docs/SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown.md)
 - [SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner](docs/SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner.md)
 - [SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner](docs/SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner.md)
 - [SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner](docs/SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner.md)
 - [SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner](docs/SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner.md)
 - [SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing](docs/SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing.md)
 - [SearchGifs200Response](docs/SearchGifs200Response.md)
 - [SearchGifs200ResponseImagesInner](docs/SearchGifs200ResponseImagesInner.md)
 - [SearchIcons200Response](docs/SearchIcons200Response.md)
 - [SearchJokes200Response](docs/SearchJokes200Response.md)
 - [SearchJokes200ResponseJokesInner](docs/SearchJokes200ResponseJokesInner.md)
 - [SearchMemes200Response](docs/SearchMemes200Response.md)
 - [SearchMemes200ResponseMemesInner](docs/SearchMemes200ResponseMemesInner.md)
 - [SearchNews200Response](docs/SearchNews200Response.md)
 - [SearchNews200ResponseNewsInner](docs/SearchNews200ResponseNewsInner.md)
 - [SearchRecipes200Response](docs/SearchRecipes200Response.md)
 - [SearchRecipes200ResponseRecipesInner](docs/SearchRecipes200ResponseRecipesInner.md)
 - [SearchRecipes200ResponseRecipesInnerNutrition](docs/SearchRecipes200ResponseRecipesInnerNutrition.md)
 - [SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner](docs/SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.md)
 - [SearchRestaurants200Response](docs/SearchRestaurants200Response.md)
 - [SearchRestaurants200ResponseRestaurantsInner](docs/SearchRestaurants200ResponseRestaurantsInner.md)
 - [SearchRestaurants200ResponseRestaurantsInnerAddress](docs/SearchRestaurants200ResponseRestaurantsInnerAddress.md)
 - [SearchRestaurants200ResponseRestaurantsInnerLocalHours](docs/SearchRestaurants200ResponseRestaurantsInnerLocalHours.md)
 - [SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational](docs/SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.md)
 - [SearchRoyaltyFreeImages200Response](docs/SearchRoyaltyFreeImages200Response.md)
 - [SearchRoyaltyFreeImages200ResponseImagesInner](docs/SearchRoyaltyFreeImages200ResponseImagesInner.md)
 - [SearchRoyaltyFreeImages200ResponseImagesInnerLicense](docs/SearchRoyaltyFreeImages200ResponseImagesInnerLicense.md)
 - [SearchWeb200Response](docs/SearchWeb200Response.md)
 - [SearchWeb200ResponseResultsInner](docs/SearchWeb200ResponseResultsInner.md)
 - [SingularizeWord200Response](docs/SingularizeWord200Response.md)
 - [StemText200Response](docs/StemText200Response.md)
 - [StoreKeyValueGet200Response](docs/StoreKeyValueGet200Response.md)
 - [TagPartOfSpeech200Response](docs/TagPartOfSpeech200Response.md)
 - [TopNews200Response](docs/TopNews200Response.md)
 - [TopNews200ResponseTopNewsInner](docs/TopNews200ResponseTopNewsInner.md)
 - [TopNews200ResponseTopNewsInnerNewsInner](docs/TopNews200ResponseTopNewsInnerNewsInner.md)
 - [VerifyEmailAddress200Response](docs/VerifyEmailAddress200Response.md)


To get access to the crate's generated documentation, use:

```
cargo doc --open
```

## Author

mail@apileague.com

