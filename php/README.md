# apileague

API League is a Hub for World Class APIs.


## Installation & Usage

### Requirements

PHP 7.4 and later.
Should also work with PHP 8.0.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/ddsky/api-league-clients/tree/master/php/.git"
    }
  ],
  "require": {
    "ddsky/api-league-clients/tree/master/php/": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/apileague/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



// Configure API key authorization: apiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('api-key', 'Bearer');

// Configure API key authorization: headerApiKey
$config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKey('x-api-key', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = OpenAPI\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('x-api-key', 'Bearer');


$apiInstance = new OpenAPI\Client\Api\ArtApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$url = https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png; // string | The URL to the image.
$width = 200; // int | The maximum width of the image (default 400, max. 500).
$height = 200; // int | The maximum height of the image (default 400, max. 500).

try {
    $result = $apiInstance->imageToAsciiArtByURL($url, $width, $height);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ArtApi->imageToAsciiArtByURL: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://api.apileague.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ArtApi* | [**imageToAsciiArtByURL**](docs/Api/ArtApi.md#imagetoasciiartbyurl) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL
*ArtApi* | [**randomPoem**](docs/Api/ArtApi.md#randompoem) | **GET** /retrieve-random-poem | Random Poem
*BooksApi* | [**findSimilarBooks**](docs/Api/BooksApi.md#findsimilarbooks) | **GET** /list-similar-books | Find Similar Books
*BooksApi* | [**searchBooks**](docs/Api/BooksApi.md#searchbooks) | **GET** /search-books | Search Books
*FoodApi* | [**computeNutrition**](docs/Api/FoodApi.md#computenutrition) | **GET** /compute-nutrition | Compute Nutrition
*FoodApi* | [**retrieveRecipeInformation**](docs/Api/FoodApi.md#retrieverecipeinformation) | **GET** /retrieve-recipe | Retrieve Recipe Information
*FoodApi* | [**searchRecipes**](docs/Api/FoodApi.md#searchrecipes) | **GET** /search-recipes | Search Recipes
*FoodApi* | [**searchRestaurants**](docs/Api/FoodApi.md#searchrestaurants) | **GET** /search-restaurants | Search Restaurants
*HumorApi* | [**generateNonsenseWord**](docs/Api/HumorApi.md#generatenonsenseword) | **GET** /generate-nonsense-word | Generate Nonsense Word
*HumorApi* | [**randomJoke**](docs/Api/HumorApi.md#randomjoke) | **GET** /retrieve-random-joke | Random Joke
*HumorApi* | [**randomMeme**](docs/Api/HumorApi.md#randommeme) | **GET** /retrieve-random-meme | Random Meme
*HumorApi* | [**searchGifs**](docs/Api/HumorApi.md#searchgifs) | **GET** /search-gifs | Search Gifs
*HumorApi* | [**searchJokes**](docs/Api/HumorApi.md#searchjokes) | **GET** /search-jokes | Search Jokes
*HumorApi* | [**searchMemes**](docs/Api/HumorApi.md#searchmemes) | **GET** /search-memes | Search Memes
*KnowledgeApi* | [**randomQuote**](docs/Api/KnowledgeApi.md#randomquote) | **GET** /retrieve-random-quote | Random Quote
*KnowledgeApi* | [**randomRiddle**](docs/Api/KnowledgeApi.md#randomriddle) | **GET** /retrieve-random-riddle | Random Riddle
*KnowledgeApi* | [**randomTrivia**](docs/Api/KnowledgeApi.md#randomtrivia) | **GET** /retrieve-random-trivia | Random Trivia
*MathApi* | [**convertUnits**](docs/Api/MathApi.md#convertunits) | **GET** /convert-units | Convert Units
*MediaApi* | [**detectMainImageColor**](docs/Api/MediaApi.md#detectmainimagecolor) | **GET** /detect-color | Detect Main Image Color
*MediaApi* | [**rescaleImage**](docs/Api/MediaApi.md#rescaleimage) | **GET** /rescale-image | Rescale Image
*MediaApi* | [**searchRoyaltyFreeImages**](docs/Api/MediaApi.md#searchroyaltyfreeimages) | **GET** /search-images | Search Royalty Free Images
*NewsApi* | [**extractNews**](docs/Api/NewsApi.md#extractnews) | **GET** /extract-news | Extract News
*NewsApi* | [**searchNews**](docs/Api/NewsApi.md#searchnews) | **GET** /search-news | Search News
*NewsApi* | [**topNews**](docs/Api/NewsApi.md#topnews) | **GET** /retrieve-top-news | Top News
*StorageApi* | [**readKeyValueFromStore**](docs/Api/StorageApi.md#readkeyvaluefromstore) | **GET** /read-key-value | Read Key Value from Store
*StorageApi* | [**storeKeyValueGET**](docs/Api/StorageApi.md#storekeyvalueget) | **GET** /store-key-value | Store Key Value (GET)
*TextApi* | [**correctSpelling**](docs/Api/TextApi.md#correctspelling) | **GET** /correct-spelling | Correct Spelling
*TextApi* | [**detectGenderByName**](docs/Api/TextApi.md#detectgenderbyname) | **GET** /detect-gender | Detect Gender by Name
*TextApi* | [**detectLanguage**](docs/Api/TextApi.md#detectlanguage) | **GET** /detect-language | Detect Language
*TextApi* | [**detectSentiment**](docs/Api/TextApi.md#detectsentiment) | **GET** /detect-sentiment | Detect Sentiment
*TextApi* | [**extractDates**](docs/Api/TextApi.md#extractdates) | **GET** /extract-dates | Extract Dates
*TextApi* | [**extractEntities**](docs/Api/TextApi.md#extractentities) | **GET** /extract-entities | Extract Entities
*TextApi* | [**listWordSynonyms**](docs/Api/TextApi.md#listwordsynonyms) | **GET** /list-synonyms | List Word Synonyms
*TextApi* | [**pluralizeWord**](docs/Api/TextApi.md#pluralizeword) | **GET** /pluralize-word | Pluralize Word
*TextApi* | [**scoreReadability**](docs/Api/TextApi.md#scorereadability) | **GET** /score-readability | Score Readability
*TextApi* | [**scoreText**](docs/Api/TextApi.md#scoretext) | **GET** /score-text | Score Text
*TextApi* | [**singularizeWord**](docs/Api/TextApi.md#singularizeword) | **GET** /singularize-word | Singularize Word
*TextApi* | [**stemText**](docs/Api/TextApi.md#stemtext) | **GET** /stem-text | Stem Text
*TextApi* | [**tagPartOfSpeech**](docs/Api/TextApi.md#tagpartofspeech) | **GET** /tag-pos | Tag Part of Speech
*WebApi* | [**extractAuthors**](docs/Api/WebApi.md#extractauthors) | **GET** /extract-authors | Extract Authors
*WebApi* | [**extractContentFromAWebPage**](docs/Api/WebApi.md#extractcontentfromawebpage) | **GET** /extract-content | Extract Content from a Web Page
*WebApi* | [**extractPublishDate**](docs/Api/WebApi.md#extractpublishdate) | **GET** /extract-publish-date | Extract Publish Date
*WebApi* | [**retrievePageRank**](docs/Api/WebApi.md#retrievepagerank) | **GET** /retrieve-page-rank | Retrieve Page Rank
*WebApi* | [**searchWeb**](docs/Api/WebApi.md#searchweb) | **GET** /search-web | Search Web
*WebApi* | [**verifyEmailAddress**](docs/Api/WebApi.md#verifyemailaddress) | **GET** /verify-email | Verify Email Address

## Models

- [ComputeNutrition200Response](docs/Model/ComputeNutrition200Response.md)
- [ComputeNutrition200ResponseIngredientBreakdownInner](docs/Model/ComputeNutrition200ResponseIngredientBreakdownInner.md)
- [ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner](docs/Model/ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.md)
- [ConvertUnits200Response](docs/Model/ConvertUnits200Response.md)
- [CorrectSpelling200Response](docs/Model/CorrectSpelling200Response.md)
- [DetectGenderByName200Response](docs/Model/DetectGenderByName200Response.md)
- [DetectLanguage200ResponseInner](docs/Model/DetectLanguage200ResponseInner.md)
- [DetectMainImageColor200ResponseInner](docs/Model/DetectMainImageColor200ResponseInner.md)
- [DetectSentiment200Response](docs/Model/DetectSentiment200Response.md)
- [DetectSentiment200ResponseDocument](docs/Model/DetectSentiment200ResponseDocument.md)
- [DetectSentiment200ResponseSentencesInner](docs/Model/DetectSentiment200ResponseSentencesInner.md)
- [ExtractAuthors200Response](docs/Model/ExtractAuthors200Response.md)
- [ExtractAuthors200ResponseAuthorsInner](docs/Model/ExtractAuthors200ResponseAuthorsInner.md)
- [ExtractContentFromAWebPage200Response](docs/Model/ExtractContentFromAWebPage200Response.md)
- [ExtractDates200Response](docs/Model/ExtractDates200Response.md)
- [ExtractDates200ResponseDatesInner](docs/Model/ExtractDates200ResponseDatesInner.md)
- [ExtractEntities200Response](docs/Model/ExtractEntities200Response.md)
- [ExtractEntities200ResponseEntitiesInner](docs/Model/ExtractEntities200ResponseEntitiesInner.md)
- [ExtractNews200Response](docs/Model/ExtractNews200Response.md)
- [ExtractNews200ResponseImagesInner](docs/Model/ExtractNews200ResponseImagesInner.md)
- [ExtractNews200ResponseVideosInner](docs/Model/ExtractNews200ResponseVideosInner.md)
- [ExtractPublishDate200Response](docs/Model/ExtractPublishDate200Response.md)
- [FindSimilarBooks200Response](docs/Model/FindSimilarBooks200Response.md)
- [GenerateNonsenseWord200Response](docs/Model/GenerateNonsenseWord200Response.md)
- [ListWordSynonyms200Response](docs/Model/ListWordSynonyms200Response.md)
- [PluralizeWord200Response](docs/Model/PluralizeWord200Response.md)
- [RandomMeme200Response](docs/Model/RandomMeme200Response.md)
- [RandomPoem200Response](docs/Model/RandomPoem200Response.md)
- [RandomQuote200Response](docs/Model/RandomQuote200Response.md)
- [RandomRiddle200Response](docs/Model/RandomRiddle200Response.md)
- [RandomTrivia200Response](docs/Model/RandomTrivia200Response.md)
- [ReadKeyValueFromStore200Response](docs/Model/ReadKeyValueFromStore200Response.md)
- [RetrievePageRank200Response](docs/Model/RetrievePageRank200Response.md)
- [RetrieveRecipeInformation200Response](docs/Model/RetrieveRecipeInformation200Response.md)
- [RetrieveRecipeInformation200ResponseCredits](docs/Model/RetrieveRecipeInformation200ResponseCredits.md)
- [RetrieveRecipeInformation200ResponseDietaryProperties](docs/Model/RetrieveRecipeInformation200ResponseDietaryProperties.md)
- [RetrieveRecipeInformation200ResponseIngredientsInner](docs/Model/RetrieveRecipeInformation200ResponseIngredientsInner.md)
- [RetrieveRecipeInformation200ResponseIngredientsInnerMeasures](docs/Model/RetrieveRecipeInformation200ResponseIngredientsInnerMeasures.md)
- [RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric](docs/Model/RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric.md)
- [RetrieveRecipeInformation200ResponseInstructionsInner](docs/Model/RetrieveRecipeInformation200ResponseInstructionsInner.md)
- [RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner](docs/Model/RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.md)
- [RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner](docs/Model/RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner.md)
- [RetrieveRecipeInformation200ResponseNutrition](docs/Model/RetrieveRecipeInformation200ResponseNutrition.md)
- [RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown](docs/Model/RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown.md)
- [RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner](docs/Model/RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner.md)
- [RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner](docs/Model/RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.md)
- [RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner](docs/Model/RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner.md)
- [RetrieveRecipeInformation200ResponseNutritionWeightPerServing](docs/Model/RetrieveRecipeInformation200ResponseNutritionWeightPerServing.md)
- [RetrieveRecipeInformation200ResponseScores](docs/Model/RetrieveRecipeInformation200ResponseScores.md)
- [RetrieveRecipeInformation200ResponseTaste](docs/Model/RetrieveRecipeInformation200ResponseTaste.md)
- [RetrieveRecipeInformation200ResponseTimes](docs/Model/RetrieveRecipeInformation200ResponseTimes.md)
- [ScoreReadability200Response](docs/Model/ScoreReadability200Response.md)
- [ScoreText200Response](docs/Model/ScoreText200Response.md)
- [ScoreText200ResponseInterestingness](docs/Model/ScoreText200ResponseInterestingness.md)
- [ScoreText200ResponseInterestingnessSubscores](docs/Model/ScoreText200ResponseInterestingnessSubscores.md)
- [ScoreText200ResponseReadability](docs/Model/ScoreText200ResponseReadability.md)
- [ScoreText200ResponseReadabilityMainscores](docs/Model/ScoreText200ResponseReadabilityMainscores.md)
- [ScoreText200ResponseReadabilitySubscores](docs/Model/ScoreText200ResponseReadabilitySubscores.md)
- [ScoreText200ResponseSkimmability](docs/Model/ScoreText200ResponseSkimmability.md)
- [ScoreText200ResponseSkimmabilityMainscores](docs/Model/ScoreText200ResponseSkimmabilityMainscores.md)
- [ScoreText200ResponseSkimmabilitySubscores](docs/Model/ScoreText200ResponseSkimmabilitySubscores.md)
- [ScoreText200ResponseStyle](docs/Model/ScoreText200ResponseStyle.md)
- [ScoreText200ResponseStyleSubscores](docs/Model/ScoreText200ResponseStyleSubscores.md)
- [SearchBooks200Response](docs/Model/SearchBooks200Response.md)
- [SearchBooks200ResponseBooksInnerInner](docs/Model/SearchBooks200ResponseBooksInnerInner.md)
- [SearchGifs200Response](docs/Model/SearchGifs200Response.md)
- [SearchGifs200ResponseImagesInner](docs/Model/SearchGifs200ResponseImagesInner.md)
- [SearchJokes200Response](docs/Model/SearchJokes200Response.md)
- [SearchJokes200ResponseJokesInner](docs/Model/SearchJokes200ResponseJokesInner.md)
- [SearchMemes200Response](docs/Model/SearchMemes200Response.md)
- [SearchMemes200ResponseMemesInner](docs/Model/SearchMemes200ResponseMemesInner.md)
- [SearchNews200Response](docs/Model/SearchNews200Response.md)
- [SearchNews200ResponseNewsInner](docs/Model/SearchNews200ResponseNewsInner.md)
- [SearchRecipes200Response](docs/Model/SearchRecipes200Response.md)
- [SearchRecipes200ResponseRecipesInner](docs/Model/SearchRecipes200ResponseRecipesInner.md)
- [SearchRecipes200ResponseRecipesInnerNutrition](docs/Model/SearchRecipes200ResponseRecipesInnerNutrition.md)
- [SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner](docs/Model/SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.md)
- [SearchRestaurants200Response](docs/Model/SearchRestaurants200Response.md)
- [SearchRestaurants200ResponseRestaurantsInner](docs/Model/SearchRestaurants200ResponseRestaurantsInner.md)
- [SearchRestaurants200ResponseRestaurantsInnerAddress](docs/Model/SearchRestaurants200ResponseRestaurantsInnerAddress.md)
- [SearchRestaurants200ResponseRestaurantsInnerLocalHours](docs/Model/SearchRestaurants200ResponseRestaurantsInnerLocalHours.md)
- [SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational](docs/Model/SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.md)
- [SearchRoyaltyFreeImages200Response](docs/Model/SearchRoyaltyFreeImages200Response.md)
- [SearchRoyaltyFreeImages200ResponseImagesInner](docs/Model/SearchRoyaltyFreeImages200ResponseImagesInner.md)
- [SearchRoyaltyFreeImages200ResponseImagesInnerLicense](docs/Model/SearchRoyaltyFreeImages200ResponseImagesInnerLicense.md)
- [SearchWeb200Response](docs/Model/SearchWeb200Response.md)
- [SearchWeb200ResponseResultsInner](docs/Model/SearchWeb200ResponseResultsInner.md)
- [SingularizeWord200Response](docs/Model/SingularizeWord200Response.md)
- [StemText200Response](docs/Model/StemText200Response.md)
- [StoreKeyValueGET200Response](docs/Model/StoreKeyValueGET200Response.md)
- [TagPartOfSpeech200Response](docs/Model/TagPartOfSpeech200Response.md)
- [TopNews200Response](docs/Model/TopNews200Response.md)
- [TopNews200ResponseTopNewsInner](docs/Model/TopNews200ResponseTopNewsInner.md)
- [TopNews200ResponseTopNewsInnerNewsInner](docs/Model/TopNews200ResponseTopNewsInnerNewsInner.md)
- [VerifyEmailAddress200Response](docs/Model/VerifyEmailAddress200Response.md)

## Authorization

Authentication schemes defined for the API:
### apiKey

- **Type**: API key
- **API key parameter name**: api-key
- **Location**: URL query string


### headerApiKey

- **Type**: API key
- **API key parameter name**: x-api-key
- **Location**: HTTP header


## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

mail@apileague.com

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `1.4.1`
    - Package version: `1.4.1`
    - Generator version: `7.5.0`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
