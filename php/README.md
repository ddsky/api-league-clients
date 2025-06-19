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
$query = landscape paintings; // string | The search query.
$earliest_start_date = 1750; // int | The artwork must have been created after this date.
$latest_start_date = 1755; // int | The artwork must have been created before this date.
$earliest_end_date = 1751; // int | For artworks with a period of creation, the completion date must be after this date.
$latest_end_date = 1760; // int | For artworks with a period of creation, the completion date must be before this date.
$min_ratio = 0.8; // float | The minimum aspect ratio (width/height) the artwork image must have.
$max_ratio = 1.5; // float | The maximum aspect ratio (width/height) the artwork image must have.
$type = painting; // string | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy.
$material = ivory; // string | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood.
$technique = etching; // string | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging.
$origin = Italy; // string | The country or region of origin for the artwork
$offset = 0; // int | The number of artworks to skip in range [0,1000]
$number = 10; // int | The number of artworks to return in range [1,10]

try {
    $result = $apiInstance->artSearchAPI($query, $earliest_start_date, $latest_start_date, $earliest_end_date, $latest_end_date, $min_ratio, $max_ratio, $type, $material, $technique, $origin, $offset, $number);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling ArtApi->artSearchAPI: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://api.apileague.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ArtApi* | [**artSearchAPI**](docs/Api/ArtApi.md#artsearchapi) | **GET** /search-artworks | Art Search API
*ArtApi* | [**imageToAsciiArtByURLAPI**](docs/Api/ArtApi.md#imagetoasciiartbyurlapi) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL API
*ArtApi* | [**randomPoemAPI**](docs/Api/ArtApi.md#randompoemapi) | **GET** /retrieve-random-poem | Random Poem API
*ArtApi* | [**retrieveArtworkById**](docs/Api/ArtApi.md#retrieveartworkbyid) | **GET** /retrieve-artwork | Retrieve Artwork by Id
*BooksApi* | [**findSimilarBooksAPI**](docs/Api/BooksApi.md#findsimilarbooksapi) | **GET** /list-similar-books | Find Similar Books API
*BooksApi* | [**searchBooksAPI**](docs/Api/BooksApi.md#searchbooksapi) | **GET** /search-books | Search Books API
*FoodApi* | [**computeNutritionAPI**](docs/Api/FoodApi.md#computenutritionapi) | **GET** /compute-nutrition | Compute Nutrition API
*FoodApi* | [**retrieveRecipeInformationAPI**](docs/Api/FoodApi.md#retrieverecipeinformationapi) | **GET** /retrieve-recipe | Retrieve Recipe Information API
*FoodApi* | [**searchDrinksAPI**](docs/Api/FoodApi.md#searchdrinksapi) | **GET** /search-drinks | Search Drinks API
*FoodApi* | [**searchRecipesAPI**](docs/Api/FoodApi.md#searchrecipesapi) | **GET** /search-recipes | Search Recipes API
*FoodApi* | [**searchRestaurantsAPI**](docs/Api/FoodApi.md#searchrestaurantsapi) | **GET** /search-restaurants | Search Restaurants API
*HumorApi* | [**generateNonsenseWordAPI**](docs/Api/HumorApi.md#generatenonsensewordapi) | **GET** /generate-nonsense-word | Generate Nonsense Word API
*HumorApi* | [**randomJokeAPI**](docs/Api/HumorApi.md#randomjokeapi) | **GET** /retrieve-random-joke | Random Joke API
*HumorApi* | [**randomMemeAPI**](docs/Api/HumorApi.md#randommemeapi) | **GET** /retrieve-random-meme | Random Meme API
*HumorApi* | [**searchGifsAPI**](docs/Api/HumorApi.md#searchgifsapi) | **GET** /search-gifs | Search Gifs API
*HumorApi* | [**searchJokesAPI**](docs/Api/HumorApi.md#searchjokesapi) | **GET** /search-jokes | Search Jokes API
*HumorApi* | [**searchMemesAPI**](docs/Api/HumorApi.md#searchmemesapi) | **GET** /search-memes | Search Memes API
*KnowledgeApi* | [**randomQuoteAPI**](docs/Api/KnowledgeApi.md#randomquoteapi) | **GET** /retrieve-random-quote | Random Quote API
*KnowledgeApi* | [**randomRiddleAPI**](docs/Api/KnowledgeApi.md#randomriddleapi) | **GET** /retrieve-random-riddle | Random Riddle API
*KnowledgeApi* | [**randomTriviaAPI**](docs/Api/KnowledgeApi.md#randomtriviaapi) | **GET** /retrieve-random-trivia | Random Trivia API
*MathApi* | [**convertUnitsAPI**](docs/Api/MathApi.md#convertunitsapi) | **GET** /convert-units | Convert Units API
*MediaApi* | [**detectMainImageColorAPI**](docs/Api/MediaApi.md#detectmainimagecolorapi) | **GET** /detect-color | Detect Main Image Color API
*MediaApi* | [**rescaleImageAPI**](docs/Api/MediaApi.md#rescaleimageapi) | **GET** /rescale-image | Rescale Image API
*MediaApi* | [**searchIconsAPI**](docs/Api/MediaApi.md#searchiconsapi) | **GET** /search-icons | Search Icons API
*MediaApi* | [**searchRoyaltyFreeImagesAPI**](docs/Api/MediaApi.md#searchroyaltyfreeimagesapi) | **GET** /search-images | Search Royalty Free Images API
*MediaApi* | [**vectorSearchAPI**](docs/Api/MediaApi.md#vectorsearchapi) | **GET** /search-vectors | Vector Search API
*NewsApi* | [**extractNewsAPI**](docs/Api/NewsApi.md#extractnewsapi) | **GET** /extract-news | Extract News API
*NewsApi* | [**searchNewsAPI**](docs/Api/NewsApi.md#searchnewsapi) | **GET** /search-news | Search News API
*NewsApi* | [**topNewsAPI**](docs/Api/NewsApi.md#topnewsapi) | **GET** /retrieve-top-news | Top News API
*StorageApi* | [**readKeyValueFromStoreAPI**](docs/Api/StorageApi.md#readkeyvaluefromstoreapi) | **GET** /read-key-value | Read Key Value from Store API
*StorageApi* | [**storeKeyValueGETAPI**](docs/Api/StorageApi.md#storekeyvaluegetapi) | **GET** /store-key-value | Store Key Value (GET) API
*TextApi* | [**correctSpellingAPI**](docs/Api/TextApi.md#correctspellingapi) | **GET** /correct-spelling | Correct Spelling API
*TextApi* | [**detectGenderByNameAPI**](docs/Api/TextApi.md#detectgenderbynameapi) | **GET** /detect-gender | Detect Gender by Name API
*TextApi* | [**detectLanguageAPI**](docs/Api/TextApi.md#detectlanguageapi) | **GET** /detect-language | Detect Language API
*TextApi* | [**detectSentimentAPI**](docs/Api/TextApi.md#detectsentimentapi) | **GET** /detect-sentiment | Detect Sentiment API
*TextApi* | [**extractDatesAPI**](docs/Api/TextApi.md#extractdatesapi) | **GET** /extract-dates | Extract Dates API
*TextApi* | [**extractEntitiesAPI**](docs/Api/TextApi.md#extractentitiesapi) | **GET** /extract-entities | Extract Entities API
*TextApi* | [**listWordSynonymsAPI**](docs/Api/TextApi.md#listwordsynonymsapi) | **GET** /list-synonyms | List Word Synonyms API
*TextApi* | [**pluralizeWordAPI**](docs/Api/TextApi.md#pluralizewordapi) | **GET** /pluralize-word | Pluralize Word API
*TextApi* | [**scoreReadabilityAPI**](docs/Api/TextApi.md#scorereadabilityapi) | **GET** /score-readability | Score Readability API
*TextApi* | [**scoreTextAPI**](docs/Api/TextApi.md#scoretextapi) | **GET** /score-text | Score Text API
*TextApi* | [**singularizeWordAPI**](docs/Api/TextApi.md#singularizewordapi) | **GET** /singularize-word | Singularize Word API
*TextApi* | [**stemTextAPI**](docs/Api/TextApi.md#stemtextapi) | **GET** /stem-text | Stem Text API
*TextApi* | [**tagPartOfSpeechAPI**](docs/Api/TextApi.md#tagpartofspeechapi) | **GET** /tag-pos | Tag Part of Speech API
*WebApi* | [**extractAuthorsAPI**](docs/Api/WebApi.md#extractauthorsapi) | **GET** /extract-authors | Extract Authors API
*WebApi* | [**extractContentFromAWebPageAPI**](docs/Api/WebApi.md#extractcontentfromawebpageapi) | **GET** /extract-content | Extract Content from a Web Page API
*WebApi* | [**extractPublishDateAPI**](docs/Api/WebApi.md#extractpublishdateapi) | **GET** /extract-publish-date | Extract Publish Date API
*WebApi* | [**retrievePageRankAPI**](docs/Api/WebApi.md#retrievepagerankapi) | **GET** /retrieve-page-rank | Retrieve Page Rank API
*WebApi* | [**searchWebAPI**](docs/Api/WebApi.md#searchwebapi) | **GET** /search-web | Search Web API
*WebApi* | [**verifyEmailAddressAPI**](docs/Api/WebApi.md#verifyemailaddressapi) | **GET** /verify-email | Verify Email Address API

## Models

- [ArtSearchAPI200Response](docs/Model/ArtSearchAPI200Response.md)
- [ComputeNutritionAPI200Response](docs/Model/ComputeNutritionAPI200Response.md)
- [ComputeNutritionAPI200ResponseIngredientBreakdownInner](docs/Model/ComputeNutritionAPI200ResponseIngredientBreakdownInner.md)
- [ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner](docs/Model/ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner.md)
- [ConvertUnitsAPI200Response](docs/Model/ConvertUnitsAPI200Response.md)
- [CorrectSpellingAPI200Response](docs/Model/CorrectSpellingAPI200Response.md)
- [DetectGenderByNameAPI200Response](docs/Model/DetectGenderByNameAPI200Response.md)
- [DetectLanguageAPI200ResponseInner](docs/Model/DetectLanguageAPI200ResponseInner.md)
- [DetectMainImageColorAPI200ResponseInner](docs/Model/DetectMainImageColorAPI200ResponseInner.md)
- [DetectSentimentAPI200Response](docs/Model/DetectSentimentAPI200Response.md)
- [DetectSentimentAPI200ResponseDocument](docs/Model/DetectSentimentAPI200ResponseDocument.md)
- [DetectSentimentAPI200ResponseSentencesInner](docs/Model/DetectSentimentAPI200ResponseSentencesInner.md)
- [ExtractAuthorsAPI200Response](docs/Model/ExtractAuthorsAPI200Response.md)
- [ExtractAuthorsAPI200ResponseAuthorsInner](docs/Model/ExtractAuthorsAPI200ResponseAuthorsInner.md)
- [ExtractContentFromAWebPageAPI200Response](docs/Model/ExtractContentFromAWebPageAPI200Response.md)
- [ExtractDatesAPI200Response](docs/Model/ExtractDatesAPI200Response.md)
- [ExtractDatesAPI200ResponseDatesInner](docs/Model/ExtractDatesAPI200ResponseDatesInner.md)
- [ExtractEntitiesAPI200Response](docs/Model/ExtractEntitiesAPI200Response.md)
- [ExtractEntitiesAPI200ResponseEntitiesInner](docs/Model/ExtractEntitiesAPI200ResponseEntitiesInner.md)
- [ExtractNewsAPI200Response](docs/Model/ExtractNewsAPI200Response.md)
- [ExtractNewsAPI200ResponseImagesInner](docs/Model/ExtractNewsAPI200ResponseImagesInner.md)
- [ExtractNewsAPI200ResponseVideosInner](docs/Model/ExtractNewsAPI200ResponseVideosInner.md)
- [ExtractPublishDateAPI200Response](docs/Model/ExtractPublishDateAPI200Response.md)
- [FindSimilarBooksAPI200Response](docs/Model/FindSimilarBooksAPI200Response.md)
- [GenerateNonsenseWordAPI200Response](docs/Model/GenerateNonsenseWordAPI200Response.md)
- [ListWordSynonymsAPI200Response](docs/Model/ListWordSynonymsAPI200Response.md)
- [PluralizeWordAPI200Response](docs/Model/PluralizeWordAPI200Response.md)
- [RandomMemeAPI200Response](docs/Model/RandomMemeAPI200Response.md)
- [RandomPoemAPI200Response](docs/Model/RandomPoemAPI200Response.md)
- [RandomQuoteAPI200Response](docs/Model/RandomQuoteAPI200Response.md)
- [RandomRiddleAPI200Response](docs/Model/RandomRiddleAPI200Response.md)
- [RandomTriviaAPI200Response](docs/Model/RandomTriviaAPI200Response.md)
- [ReadKeyValueFromStoreAPI200Response](docs/Model/ReadKeyValueFromStoreAPI200Response.md)
- [RetrieveArtworkById200Response](docs/Model/RetrieveArtworkById200Response.md)
- [RetrievePageRankAPI200Response](docs/Model/RetrievePageRankAPI200Response.md)
- [RetrieveRecipeInformationAPI200Response](docs/Model/RetrieveRecipeInformationAPI200Response.md)
- [RetrieveRecipeInformationAPI200ResponseCredits](docs/Model/RetrieveRecipeInformationAPI200ResponseCredits.md)
- [RetrieveRecipeInformationAPI200ResponseDietaryProperties](docs/Model/RetrieveRecipeInformationAPI200ResponseDietaryProperties.md)
- [RetrieveRecipeInformationAPI200ResponseIngredientsInner](docs/Model/RetrieveRecipeInformationAPI200ResponseIngredientsInner.md)
- [RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures](docs/Model/RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures.md)
- [RetrieveRecipeInformationAPI200ResponseInstructionsInner](docs/Model/RetrieveRecipeInformationAPI200ResponseInstructionsInner.md)
- [RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner](docs/Model/RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner.md)
- [RetrieveRecipeInformationAPI200ResponseNutrition](docs/Model/RetrieveRecipeInformationAPI200ResponseNutrition.md)
- [RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner](docs/Model/RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.md)
- [RetrieveRecipeInformationAPI200ResponseScores](docs/Model/RetrieveRecipeInformationAPI200ResponseScores.md)
- [RetrieveRecipeInformationAPI200ResponseTaste](docs/Model/RetrieveRecipeInformationAPI200ResponseTaste.md)
- [RetrieveRecipeInformationAPI200ResponseTimes](docs/Model/RetrieveRecipeInformationAPI200ResponseTimes.md)
- [ScoreReadabilityAPI200Response](docs/Model/ScoreReadabilityAPI200Response.md)
- [ScoreTextAPI200Response](docs/Model/ScoreTextAPI200Response.md)
- [ScoreTextAPI200ResponseInterestingness](docs/Model/ScoreTextAPI200ResponseInterestingness.md)
- [ScoreTextAPI200ResponseInterestingnessSubscores](docs/Model/ScoreTextAPI200ResponseInterestingnessSubscores.md)
- [ScoreTextAPI200ResponseReadability](docs/Model/ScoreTextAPI200ResponseReadability.md)
- [ScoreTextAPI200ResponseReadabilityMainscores](docs/Model/ScoreTextAPI200ResponseReadabilityMainscores.md)
- [ScoreTextAPI200ResponseReadabilitySubscores](docs/Model/ScoreTextAPI200ResponseReadabilitySubscores.md)
- [ScoreTextAPI200ResponseSkimmability](docs/Model/ScoreTextAPI200ResponseSkimmability.md)
- [ScoreTextAPI200ResponseSkimmabilityMainscores](docs/Model/ScoreTextAPI200ResponseSkimmabilityMainscores.md)
- [ScoreTextAPI200ResponseSkimmabilitySubscores](docs/Model/ScoreTextAPI200ResponseSkimmabilitySubscores.md)
- [ScoreTextAPI200ResponseStyle](docs/Model/ScoreTextAPI200ResponseStyle.md)
- [ScoreTextAPI200ResponseStyleSubscores](docs/Model/ScoreTextAPI200ResponseStyleSubscores.md)
- [SearchBooksAPI200Response](docs/Model/SearchBooksAPI200Response.md)
- [SearchBooksAPI200ResponseBooksInnerInner](docs/Model/SearchBooksAPI200ResponseBooksInnerInner.md)
- [SearchDrinksAPI200Response](docs/Model/SearchDrinksAPI200Response.md)
- [SearchDrinksAPI200ResponseDrinksInner](docs/Model/SearchDrinksAPI200ResponseDrinksInner.md)
- [SearchDrinksAPI200ResponseDrinksInnerCredits](docs/Model/SearchDrinksAPI200ResponseDrinksInnerCredits.md)
- [SearchDrinksAPI200ResponseDrinksInnerIngredientsInner](docs/Model/SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.md)
- [SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures](docs/Model/SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures.md)
- [SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric](docs/Model/SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric.md)
- [SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs](docs/Model/SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs.md)
- [SearchDrinksAPI200ResponseDrinksInnerInstructionsInner](docs/Model/SearchDrinksAPI200ResponseDrinksInnerInstructionsInner.md)
- [SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner](docs/Model/SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner.md)
- [SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner](docs/Model/SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.md)
- [SearchDrinksAPI200ResponseDrinksInnerNutrition](docs/Model/SearchDrinksAPI200ResponseDrinksInnerNutrition.md)
- [SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown](docs/Model/SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.md)
- [SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner](docs/Model/SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner.md)
- [SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner](docs/Model/SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner.md)
- [SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner](docs/Model/SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner.md)
- [SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner](docs/Model/SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner.md)
- [SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing](docs/Model/SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing.md)
- [SearchGifsAPI200Response](docs/Model/SearchGifsAPI200Response.md)
- [SearchGifsAPI200ResponseImagesInner](docs/Model/SearchGifsAPI200ResponseImagesInner.md)
- [SearchIconsAPI200Response](docs/Model/SearchIconsAPI200Response.md)
- [SearchJokesAPI200Response](docs/Model/SearchJokesAPI200Response.md)
- [SearchJokesAPI200ResponseJokesInner](docs/Model/SearchJokesAPI200ResponseJokesInner.md)
- [SearchMemesAPI200Response](docs/Model/SearchMemesAPI200Response.md)
- [SearchMemesAPI200ResponseMemesInner](docs/Model/SearchMemesAPI200ResponseMemesInner.md)
- [SearchNewsAPI200Response](docs/Model/SearchNewsAPI200Response.md)
- [SearchNewsAPI200ResponseNewsInner](docs/Model/SearchNewsAPI200ResponseNewsInner.md)
- [SearchRecipesAPI200Response](docs/Model/SearchRecipesAPI200Response.md)
- [SearchRecipesAPI200ResponseRecipesInner](docs/Model/SearchRecipesAPI200ResponseRecipesInner.md)
- [SearchRecipesAPI200ResponseRecipesInnerNutrition](docs/Model/SearchRecipesAPI200ResponseRecipesInnerNutrition.md)
- [SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner](docs/Model/SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner.md)
- [SearchRestaurantsAPI200Response](docs/Model/SearchRestaurantsAPI200Response.md)
- [SearchRestaurantsAPI200ResponseRestaurantsInner](docs/Model/SearchRestaurantsAPI200ResponseRestaurantsInner.md)
- [SearchRestaurantsAPI200ResponseRestaurantsInnerAddress](docs/Model/SearchRestaurantsAPI200ResponseRestaurantsInnerAddress.md)
- [SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours](docs/Model/SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours.md)
- [SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational](docs/Model/SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.md)
- [SearchRoyaltyFreeImagesAPI200Response](docs/Model/SearchRoyaltyFreeImagesAPI200Response.md)
- [SearchRoyaltyFreeImagesAPI200ResponseImagesInner](docs/Model/SearchRoyaltyFreeImagesAPI200ResponseImagesInner.md)
- [SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense](docs/Model/SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense.md)
- [SearchWebAPI200Response](docs/Model/SearchWebAPI200Response.md)
- [SearchWebAPI200ResponseResultsInner](docs/Model/SearchWebAPI200ResponseResultsInner.md)
- [SingularizeWordAPI200Response](docs/Model/SingularizeWordAPI200Response.md)
- [StemTextAPI200Response](docs/Model/StemTextAPI200Response.md)
- [StoreKeyValueGETAPI200Response](docs/Model/StoreKeyValueGETAPI200Response.md)
- [TagPartOfSpeechAPI200Response](docs/Model/TagPartOfSpeechAPI200Response.md)
- [TopNewsAPI200Response](docs/Model/TopNewsAPI200Response.md)
- [TopNewsAPI200ResponseTopNewsInner](docs/Model/TopNewsAPI200ResponseTopNewsInner.md)
- [TopNewsAPI200ResponseTopNewsInnerNewsInner](docs/Model/TopNewsAPI200ResponseTopNewsInnerNewsInner.md)
- [VectorSearchAPI200Response](docs/Model/VectorSearchAPI200Response.md)
- [VectorSearchAPI200ResponseVectorsInner](docs/Model/VectorSearchAPI200ResponseVectorsInner.md)
- [VerifyEmailAddressAPI200Response](docs/Model/VerifyEmailAddressAPI200Response.md)

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

- API version: `1.7.0`
    - Package version: `1.7.0`
    - Generator version: `7.8.0-SNAPSHOT`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
