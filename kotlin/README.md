# apileague - Kotlin client library for API League

API League is a Hub for World Class APIs.

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 1.6.4
- Package version: 1.6.4
- Generator version: 7.8.0-SNAPSHOT
- Build package: org.openapitools.codegen.languages.KotlinClientCodegen

## Requires

* Kotlin 1.7.21
* Gradle 7.5

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs, File inputs, and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in OpenAPI definitions.
* Implementation of ApiClient is intended to reduce method counts, specifically to benefit Android targets.

<a id="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://api.apileague.com*

| Class | Method | HTTP request | Description |
| ------------ | ------------- | ------------- | ------------- |
| *ArtApi* | [**imageToAsciiArtByURLAPI**](docs/ArtApi.md#imagetoasciiartbyurlapi) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL API |
| *ArtApi* | [**randomPoemAPI**](docs/ArtApi.md#randompoemapi) | **GET** /retrieve-random-poem | Random Poem API |
| *BooksApi* | [**findSimilarBooksAPI**](docs/BooksApi.md#findsimilarbooksapi) | **GET** /list-similar-books | Find Similar Books API |
| *BooksApi* | [**searchBooksAPI**](docs/BooksApi.md#searchbooksapi) | **GET** /search-books | Search Books API |
| *FoodApi* | [**computeNutritionAPI**](docs/FoodApi.md#computenutritionapi) | **GET** /compute-nutrition | Compute Nutrition API |
| *FoodApi* | [**retrieveRecipeInformationAPI**](docs/FoodApi.md#retrieverecipeinformationapi) | **GET** /retrieve-recipe | Retrieve Recipe Information API |
| *FoodApi* | [**searchDrinksAPI**](docs/FoodApi.md#searchdrinksapi) | **GET** /search-drinks | Search Drinks API |
| *FoodApi* | [**searchRecipesAPI**](docs/FoodApi.md#searchrecipesapi) | **GET** /search-recipes | Search Recipes API |
| *FoodApi* | [**searchRestaurantsAPI**](docs/FoodApi.md#searchrestaurantsapi) | **GET** /search-restaurants | Search Restaurants API |
| *HumorApi* | [**generateNonsenseWordAPI**](docs/HumorApi.md#generatenonsensewordapi) | **GET** /generate-nonsense-word | Generate Nonsense Word API |
| *HumorApi* | [**randomJokeAPI**](docs/HumorApi.md#randomjokeapi) | **GET** /retrieve-random-joke | Random Joke API |
| *HumorApi* | [**randomMemeAPI**](docs/HumorApi.md#randommemeapi) | **GET** /retrieve-random-meme | Random Meme API |
| *HumorApi* | [**searchGifsAPI**](docs/HumorApi.md#searchgifsapi) | **GET** /search-gifs | Search Gifs API |
| *HumorApi* | [**searchJokesAPI**](docs/HumorApi.md#searchjokesapi) | **GET** /search-jokes | Search Jokes API |
| *HumorApi* | [**searchMemesAPI**](docs/HumorApi.md#searchmemesapi) | **GET** /search-memes | Search Memes API |
| *KnowledgeApi* | [**randomQuoteAPI**](docs/KnowledgeApi.md#randomquoteapi) | **GET** /retrieve-random-quote | Random Quote API |
| *KnowledgeApi* | [**randomRiddleAPI**](docs/KnowledgeApi.md#randomriddleapi) | **GET** /retrieve-random-riddle | Random Riddle API |
| *KnowledgeApi* | [**randomTriviaAPI**](docs/KnowledgeApi.md#randomtriviaapi) | **GET** /retrieve-random-trivia | Random Trivia API |
| *MathApi* | [**convertUnitsAPI**](docs/MathApi.md#convertunitsapi) | **GET** /convert-units | Convert Units API |
| *MediaApi* | [**detectMainImageColorAPI**](docs/MediaApi.md#detectmainimagecolorapi) | **GET** /detect-color | Detect Main Image Color API |
| *MediaApi* | [**rescaleImageAPI**](docs/MediaApi.md#rescaleimageapi) | **GET** /rescale-image | Rescale Image API |
| *MediaApi* | [**searchIconsAPI**](docs/MediaApi.md#searchiconsapi) | **GET** /search-icons | Search Icons API |
| *MediaApi* | [**searchRoyaltyFreeImagesAPI**](docs/MediaApi.md#searchroyaltyfreeimagesapi) | **GET** /search-images | Search Royalty Free Images API |
| *MediaApi* | [**vectorSearchAPI**](docs/MediaApi.md#vectorsearchapi) | **GET** /search-vectors | Vector Search API |
| *NewsApi* | [**extractNewsAPI**](docs/NewsApi.md#extractnewsapi) | **GET** /extract-news | Extract News API |
| *NewsApi* | [**searchNewsAPI**](docs/NewsApi.md#searchnewsapi) | **GET** /search-news | Search News API |
| *NewsApi* | [**topNewsAPI**](docs/NewsApi.md#topnewsapi) | **GET** /retrieve-top-news | Top News API |
| *StorageApi* | [**readKeyValueFromStoreAPI**](docs/StorageApi.md#readkeyvaluefromstoreapi) | **GET** /read-key-value | Read Key Value from Store API |
| *StorageApi* | [**storeKeyValueGETAPI**](docs/StorageApi.md#storekeyvaluegetapi) | **GET** /store-key-value | Store Key Value (GET) API |
| *TextApi* | [**correctSpellingAPI**](docs/TextApi.md#correctspellingapi) | **GET** /correct-spelling | Correct Spelling API |
| *TextApi* | [**detectGenderByNameAPI**](docs/TextApi.md#detectgenderbynameapi) | **GET** /detect-gender | Detect Gender by Name API |
| *TextApi* | [**detectLanguageAPI**](docs/TextApi.md#detectlanguageapi) | **GET** /detect-language | Detect Language API |
| *TextApi* | [**detectSentimentAPI**](docs/TextApi.md#detectsentimentapi) | **GET** /detect-sentiment | Detect Sentiment API |
| *TextApi* | [**extractDatesAPI**](docs/TextApi.md#extractdatesapi) | **GET** /extract-dates | Extract Dates API |
| *TextApi* | [**extractEntitiesAPI**](docs/TextApi.md#extractentitiesapi) | **GET** /extract-entities | Extract Entities API |
| *TextApi* | [**listWordSynonymsAPI**](docs/TextApi.md#listwordsynonymsapi) | **GET** /list-synonyms | List Word Synonyms API |
| *TextApi* | [**pluralizeWordAPI**](docs/TextApi.md#pluralizewordapi) | **GET** /pluralize-word | Pluralize Word API |
| *TextApi* | [**scoreReadabilityAPI**](docs/TextApi.md#scorereadabilityapi) | **GET** /score-readability | Score Readability API |
| *TextApi* | [**scoreTextAPI**](docs/TextApi.md#scoretextapi) | **GET** /score-text | Score Text API |
| *TextApi* | [**singularizeWordAPI**](docs/TextApi.md#singularizewordapi) | **GET** /singularize-word | Singularize Word API |
| *TextApi* | [**stemTextAPI**](docs/TextApi.md#stemtextapi) | **GET** /stem-text | Stem Text API |
| *TextApi* | [**tagPartOfSpeechAPI**](docs/TextApi.md#tagpartofspeechapi) | **GET** /tag-pos | Tag Part of Speech API |
| *WebApi* | [**extractAuthorsAPI**](docs/WebApi.md#extractauthorsapi) | **GET** /extract-authors | Extract Authors API |
| *WebApi* | [**extractContentFromAWebPageAPI**](docs/WebApi.md#extractcontentfromawebpageapi) | **GET** /extract-content | Extract Content from a Web Page API |
| *WebApi* | [**extractPublishDateAPI**](docs/WebApi.md#extractpublishdateapi) | **GET** /extract-publish-date | Extract Publish Date API |
| *WebApi* | [**retrievePageRankAPI**](docs/WebApi.md#retrievepagerankapi) | **GET** /retrieve-page-rank | Retrieve Page Rank API |
| *WebApi* | [**searchWebAPI**](docs/WebApi.md#searchwebapi) | **GET** /search-web | Search Web API |
| *WebApi* | [**verifyEmailAddressAPI**](docs/WebApi.md#verifyemailaddressapi) | **GET** /verify-email | Verify Email Address API |


<a id="documentation-for-models"></a>
## Documentation for Models

 - [com.apileague.client.model.ComputeNutritionAPI200Response](docs/ComputeNutritionAPI200Response.md)
 - [com.apileague.client.model.ComputeNutritionAPI200ResponseIngredientBreakdownInner](docs/ComputeNutritionAPI200ResponseIngredientBreakdownInner.md)
 - [com.apileague.client.model.ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner](docs/ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner.md)
 - [com.apileague.client.model.ConvertUnitsAPI200Response](docs/ConvertUnitsAPI200Response.md)
 - [com.apileague.client.model.CorrectSpellingAPI200Response](docs/CorrectSpellingAPI200Response.md)
 - [com.apileague.client.model.DetectGenderByNameAPI200Response](docs/DetectGenderByNameAPI200Response.md)
 - [com.apileague.client.model.DetectLanguageAPI200ResponseInner](docs/DetectLanguageAPI200ResponseInner.md)
 - [com.apileague.client.model.DetectMainImageColorAPI200ResponseInner](docs/DetectMainImageColorAPI200ResponseInner.md)
 - [com.apileague.client.model.DetectSentimentAPI200Response](docs/DetectSentimentAPI200Response.md)
 - [com.apileague.client.model.DetectSentimentAPI200ResponseDocument](docs/DetectSentimentAPI200ResponseDocument.md)
 - [com.apileague.client.model.DetectSentimentAPI200ResponseSentencesInner](docs/DetectSentimentAPI200ResponseSentencesInner.md)
 - [com.apileague.client.model.ExtractAuthorsAPI200Response](docs/ExtractAuthorsAPI200Response.md)
 - [com.apileague.client.model.ExtractAuthorsAPI200ResponseAuthorsInner](docs/ExtractAuthorsAPI200ResponseAuthorsInner.md)
 - [com.apileague.client.model.ExtractContentFromAWebPageAPI200Response](docs/ExtractContentFromAWebPageAPI200Response.md)
 - [com.apileague.client.model.ExtractDatesAPI200Response](docs/ExtractDatesAPI200Response.md)
 - [com.apileague.client.model.ExtractDatesAPI200ResponseDatesInner](docs/ExtractDatesAPI200ResponseDatesInner.md)
 - [com.apileague.client.model.ExtractEntitiesAPI200Response](docs/ExtractEntitiesAPI200Response.md)
 - [com.apileague.client.model.ExtractEntitiesAPI200ResponseEntitiesInner](docs/ExtractEntitiesAPI200ResponseEntitiesInner.md)
 - [com.apileague.client.model.ExtractNewsAPI200Response](docs/ExtractNewsAPI200Response.md)
 - [com.apileague.client.model.ExtractNewsAPI200ResponseImagesInner](docs/ExtractNewsAPI200ResponseImagesInner.md)
 - [com.apileague.client.model.ExtractNewsAPI200ResponseVideosInner](docs/ExtractNewsAPI200ResponseVideosInner.md)
 - [com.apileague.client.model.ExtractPublishDateAPI200Response](docs/ExtractPublishDateAPI200Response.md)
 - [com.apileague.client.model.FindSimilarBooksAPI200Response](docs/FindSimilarBooksAPI200Response.md)
 - [com.apileague.client.model.GenerateNonsenseWordAPI200Response](docs/GenerateNonsenseWordAPI200Response.md)
 - [com.apileague.client.model.ListWordSynonymsAPI200Response](docs/ListWordSynonymsAPI200Response.md)
 - [com.apileague.client.model.PluralizeWordAPI200Response](docs/PluralizeWordAPI200Response.md)
 - [com.apileague.client.model.RandomMemeAPI200Response](docs/RandomMemeAPI200Response.md)
 - [com.apileague.client.model.RandomPoemAPI200Response](docs/RandomPoemAPI200Response.md)
 - [com.apileague.client.model.RandomQuoteAPI200Response](docs/RandomQuoteAPI200Response.md)
 - [com.apileague.client.model.RandomRiddleAPI200Response](docs/RandomRiddleAPI200Response.md)
 - [com.apileague.client.model.RandomTriviaAPI200Response](docs/RandomTriviaAPI200Response.md)
 - [com.apileague.client.model.ReadKeyValueFromStoreAPI200Response](docs/ReadKeyValueFromStoreAPI200Response.md)
 - [com.apileague.client.model.RetrievePageRankAPI200Response](docs/RetrievePageRankAPI200Response.md)
 - [com.apileague.client.model.RetrieveRecipeInformationAPI200Response](docs/RetrieveRecipeInformationAPI200Response.md)
 - [com.apileague.client.model.RetrieveRecipeInformationAPI200ResponseCredits](docs/RetrieveRecipeInformationAPI200ResponseCredits.md)
 - [com.apileague.client.model.RetrieveRecipeInformationAPI200ResponseDietaryProperties](docs/RetrieveRecipeInformationAPI200ResponseDietaryProperties.md)
 - [com.apileague.client.model.RetrieveRecipeInformationAPI200ResponseIngredientsInner](docs/RetrieveRecipeInformationAPI200ResponseIngredientsInner.md)
 - [com.apileague.client.model.RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures](docs/RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures.md)
 - [com.apileague.client.model.RetrieveRecipeInformationAPI200ResponseInstructionsInner](docs/RetrieveRecipeInformationAPI200ResponseInstructionsInner.md)
 - [com.apileague.client.model.RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner](docs/RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner.md)
 - [com.apileague.client.model.RetrieveRecipeInformationAPI200ResponseNutrition](docs/RetrieveRecipeInformationAPI200ResponseNutrition.md)
 - [com.apileague.client.model.RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner](docs/RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.md)
 - [com.apileague.client.model.RetrieveRecipeInformationAPI200ResponseScores](docs/RetrieveRecipeInformationAPI200ResponseScores.md)
 - [com.apileague.client.model.RetrieveRecipeInformationAPI200ResponseTaste](docs/RetrieveRecipeInformationAPI200ResponseTaste.md)
 - [com.apileague.client.model.RetrieveRecipeInformationAPI200ResponseTimes](docs/RetrieveRecipeInformationAPI200ResponseTimes.md)
 - [com.apileague.client.model.ScoreReadabilityAPI200Response](docs/ScoreReadabilityAPI200Response.md)
 - [com.apileague.client.model.ScoreTextAPI200Response](docs/ScoreTextAPI200Response.md)
 - [com.apileague.client.model.ScoreTextAPI200ResponseInterestingness](docs/ScoreTextAPI200ResponseInterestingness.md)
 - [com.apileague.client.model.ScoreTextAPI200ResponseInterestingnessSubscores](docs/ScoreTextAPI200ResponseInterestingnessSubscores.md)
 - [com.apileague.client.model.ScoreTextAPI200ResponseReadability](docs/ScoreTextAPI200ResponseReadability.md)
 - [com.apileague.client.model.ScoreTextAPI200ResponseReadabilityMainscores](docs/ScoreTextAPI200ResponseReadabilityMainscores.md)
 - [com.apileague.client.model.ScoreTextAPI200ResponseReadabilitySubscores](docs/ScoreTextAPI200ResponseReadabilitySubscores.md)
 - [com.apileague.client.model.ScoreTextAPI200ResponseSkimmability](docs/ScoreTextAPI200ResponseSkimmability.md)
 - [com.apileague.client.model.ScoreTextAPI200ResponseSkimmabilityMainscores](docs/ScoreTextAPI200ResponseSkimmabilityMainscores.md)
 - [com.apileague.client.model.ScoreTextAPI200ResponseSkimmabilitySubscores](docs/ScoreTextAPI200ResponseSkimmabilitySubscores.md)
 - [com.apileague.client.model.ScoreTextAPI200ResponseStyle](docs/ScoreTextAPI200ResponseStyle.md)
 - [com.apileague.client.model.ScoreTextAPI200ResponseStyleSubscores](docs/ScoreTextAPI200ResponseStyleSubscores.md)
 - [com.apileague.client.model.SearchBooksAPI200Response](docs/SearchBooksAPI200Response.md)
 - [com.apileague.client.model.SearchBooksAPI200ResponseBooksInnerInner](docs/SearchBooksAPI200ResponseBooksInnerInner.md)
 - [com.apileague.client.model.SearchDrinksAPI200Response](docs/SearchDrinksAPI200Response.md)
 - [com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInner](docs/SearchDrinksAPI200ResponseDrinksInner.md)
 - [com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerCredits](docs/SearchDrinksAPI200ResponseDrinksInnerCredits.md)
 - [com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerIngredientsInner](docs/SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.md)
 - [com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures](docs/SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures.md)
 - [com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric](docs/SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric.md)
 - [com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs](docs/SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs.md)
 - [com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerInstructionsInner](docs/SearchDrinksAPI200ResponseDrinksInnerInstructionsInner.md)
 - [com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner](docs/SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner.md)
 - [com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner](docs/SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.md)
 - [com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutrition](docs/SearchDrinksAPI200ResponseDrinksInnerNutrition.md)
 - [com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown](docs/SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.md)
 - [com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner](docs/SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner.md)
 - [com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner](docs/SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner.md)
 - [com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner](docs/SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner.md)
 - [com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner](docs/SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner.md)
 - [com.apileague.client.model.SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing](docs/SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing.md)
 - [com.apileague.client.model.SearchGifsAPI200Response](docs/SearchGifsAPI200Response.md)
 - [com.apileague.client.model.SearchGifsAPI200ResponseImagesInner](docs/SearchGifsAPI200ResponseImagesInner.md)
 - [com.apileague.client.model.SearchIconsAPI200Response](docs/SearchIconsAPI200Response.md)
 - [com.apileague.client.model.SearchJokesAPI200Response](docs/SearchJokesAPI200Response.md)
 - [com.apileague.client.model.SearchJokesAPI200ResponseJokesInner](docs/SearchJokesAPI200ResponseJokesInner.md)
 - [com.apileague.client.model.SearchMemesAPI200Response](docs/SearchMemesAPI200Response.md)
 - [com.apileague.client.model.SearchMemesAPI200ResponseMemesInner](docs/SearchMemesAPI200ResponseMemesInner.md)
 - [com.apileague.client.model.SearchNewsAPI200Response](docs/SearchNewsAPI200Response.md)
 - [com.apileague.client.model.SearchNewsAPI200ResponseNewsInner](docs/SearchNewsAPI200ResponseNewsInner.md)
 - [com.apileague.client.model.SearchRecipesAPI200Response](docs/SearchRecipesAPI200Response.md)
 - [com.apileague.client.model.SearchRecipesAPI200ResponseRecipesInner](docs/SearchRecipesAPI200ResponseRecipesInner.md)
 - [com.apileague.client.model.SearchRecipesAPI200ResponseRecipesInnerNutrition](docs/SearchRecipesAPI200ResponseRecipesInnerNutrition.md)
 - [com.apileague.client.model.SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner](docs/SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner.md)
 - [com.apileague.client.model.SearchRestaurantsAPI200Response](docs/SearchRestaurantsAPI200Response.md)
 - [com.apileague.client.model.SearchRestaurantsAPI200ResponseRestaurantsInner](docs/SearchRestaurantsAPI200ResponseRestaurantsInner.md)
 - [com.apileague.client.model.SearchRestaurantsAPI200ResponseRestaurantsInnerAddress](docs/SearchRestaurantsAPI200ResponseRestaurantsInnerAddress.md)
 - [com.apileague.client.model.SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours](docs/SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours.md)
 - [com.apileague.client.model.SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational](docs/SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.md)
 - [com.apileague.client.model.SearchRoyaltyFreeImagesAPI200Response](docs/SearchRoyaltyFreeImagesAPI200Response.md)
 - [com.apileague.client.model.SearchRoyaltyFreeImagesAPI200ResponseImagesInner](docs/SearchRoyaltyFreeImagesAPI200ResponseImagesInner.md)
 - [com.apileague.client.model.SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense](docs/SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense.md)
 - [com.apileague.client.model.SearchWebAPI200Response](docs/SearchWebAPI200Response.md)
 - [com.apileague.client.model.SearchWebAPI200ResponseResultsInner](docs/SearchWebAPI200ResponseResultsInner.md)
 - [com.apileague.client.model.SingularizeWordAPI200Response](docs/SingularizeWordAPI200Response.md)
 - [com.apileague.client.model.StemTextAPI200Response](docs/StemTextAPI200Response.md)
 - [com.apileague.client.model.StoreKeyValueGETAPI200Response](docs/StoreKeyValueGETAPI200Response.md)
 - [com.apileague.client.model.TagPartOfSpeechAPI200Response](docs/TagPartOfSpeechAPI200Response.md)
 - [com.apileague.client.model.TopNewsAPI200Response](docs/TopNewsAPI200Response.md)
 - [com.apileague.client.model.TopNewsAPI200ResponseTopNewsInner](docs/TopNewsAPI200ResponseTopNewsInner.md)
 - [com.apileague.client.model.TopNewsAPI200ResponseTopNewsInnerNewsInner](docs/TopNewsAPI200ResponseTopNewsInnerNewsInner.md)
 - [com.apileague.client.model.VectorSearchAPI200Response](docs/VectorSearchAPI200Response.md)
 - [com.apileague.client.model.VectorSearchAPI200ResponseVectorsInner](docs/VectorSearchAPI200ResponseVectorsInner.md)
 - [com.apileague.client.model.VerifyEmailAddressAPI200Response](docs/VerifyEmailAddressAPI200Response.md)


<a id="documentation-for-authorization"></a>
## Documentation for Authorization


Authentication schemes defined for the API:
<a id="apiKey"></a>
### apiKey

- **Type**: API key
- **API key parameter name**: api-key
- **Location**: URL query string

<a id="headerApiKey"></a>
### headerApiKey

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header



## Author

mail@apileague.com
