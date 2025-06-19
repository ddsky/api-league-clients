# android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>com.apileague</groupId>
    <artifactId>android-client</artifactId>
    <version>1.7.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "com.apileague:android-client:1.7.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/android-client-1.7.0.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import com.apileague.ArtApi;

public class ArtApiExample {

    public static void main(String[] args) {
        ArtApi apiInstance = new ArtApi();
        String query = landscape paintings; // String | The search query.
        Integer earliestStartDate = 1750; // Integer | The artwork must have been created after this date.
        Integer latestStartDate = 1755; // Integer | The artwork must have been created before this date.
        Integer earliestEndDate = 1751; // Integer | For artworks with a period of creation, the completion date must be after this date.
        Integer latestEndDate = 1760; // Integer | For artworks with a period of creation, the completion date must be before this date.
        Double minRatio = 0.8; // Double | The minimum aspect ratio (width/height) the artwork image must have.
        Double maxRatio = 1.5; // Double | The maximum aspect ratio (width/height) the artwork image must have.
        String type = painting; // String | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy.
        String material = ivory; // String | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood.
        String technique = etching; // String | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging.
        String origin = Italy; // String | The country or region of origin for the artwork
        Integer offset = 0; // Integer | The number of artworks to skip in range [0,1000]
        Integer number = 10; // Integer | The number of artworks to return in range [1,10]
        try {
            ArtSearchAPI200Response result = apiInstance.artSearchAPI(query, earliestStartDate, latestStartDate, earliestEndDate, latestEndDate, minRatio, maxRatio, type, material, technique, origin, offset, number);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling ArtApi#artSearchAPI");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.apileague.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ArtApi* | [**artSearchAPI**](docs/ArtApi.md#artSearchAPI) | **GET** /search-artworks | Art Search API
*ArtApi* | [**imageToAsciiArtByURLAPI**](docs/ArtApi.md#imageToAsciiArtByURLAPI) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL API
*ArtApi* | [**randomPoemAPI**](docs/ArtApi.md#randomPoemAPI) | **GET** /retrieve-random-poem | Random Poem API
*ArtApi* | [**retrieveArtworkById**](docs/ArtApi.md#retrieveArtworkById) | **GET** /retrieve-artwork | Retrieve Artwork by Id
*BooksApi* | [**findSimilarBooksAPI**](docs/BooksApi.md#findSimilarBooksAPI) | **GET** /list-similar-books | Find Similar Books API
*BooksApi* | [**searchBooksAPI**](docs/BooksApi.md#searchBooksAPI) | **GET** /search-books | Search Books API
*FoodApi* | [**computeNutritionAPI**](docs/FoodApi.md#computeNutritionAPI) | **GET** /compute-nutrition | Compute Nutrition API
*FoodApi* | [**retrieveRecipeInformationAPI**](docs/FoodApi.md#retrieveRecipeInformationAPI) | **GET** /retrieve-recipe | Retrieve Recipe Information API
*FoodApi* | [**searchDrinksAPI**](docs/FoodApi.md#searchDrinksAPI) | **GET** /search-drinks | Search Drinks API
*FoodApi* | [**searchRecipesAPI**](docs/FoodApi.md#searchRecipesAPI) | **GET** /search-recipes | Search Recipes API
*FoodApi* | [**searchRestaurantsAPI**](docs/FoodApi.md#searchRestaurantsAPI) | **GET** /search-restaurants | Search Restaurants API
*HumorApi* | [**generateNonsenseWordAPI**](docs/HumorApi.md#generateNonsenseWordAPI) | **GET** /generate-nonsense-word | Generate Nonsense Word API
*HumorApi* | [**randomJokeAPI**](docs/HumorApi.md#randomJokeAPI) | **GET** /retrieve-random-joke | Random Joke API
*HumorApi* | [**randomMemeAPI**](docs/HumorApi.md#randomMemeAPI) | **GET** /retrieve-random-meme | Random Meme API
*HumorApi* | [**searchGifsAPI**](docs/HumorApi.md#searchGifsAPI) | **GET** /search-gifs | Search Gifs API
*HumorApi* | [**searchJokesAPI**](docs/HumorApi.md#searchJokesAPI) | **GET** /search-jokes | Search Jokes API
*HumorApi* | [**searchMemesAPI**](docs/HumorApi.md#searchMemesAPI) | **GET** /search-memes | Search Memes API
*KnowledgeApi* | [**randomQuoteAPI**](docs/KnowledgeApi.md#randomQuoteAPI) | **GET** /retrieve-random-quote | Random Quote API
*KnowledgeApi* | [**randomRiddleAPI**](docs/KnowledgeApi.md#randomRiddleAPI) | **GET** /retrieve-random-riddle | Random Riddle API
*KnowledgeApi* | [**randomTriviaAPI**](docs/KnowledgeApi.md#randomTriviaAPI) | **GET** /retrieve-random-trivia | Random Trivia API
*MathApi* | [**convertUnitsAPI**](docs/MathApi.md#convertUnitsAPI) | **GET** /convert-units | Convert Units API
*MediaApi* | [**detectMainImageColorAPI**](docs/MediaApi.md#detectMainImageColorAPI) | **GET** /detect-color | Detect Main Image Color API
*MediaApi* | [**rescaleImageAPI**](docs/MediaApi.md#rescaleImageAPI) | **GET** /rescale-image | Rescale Image API
*MediaApi* | [**searchIconsAPI**](docs/MediaApi.md#searchIconsAPI) | **GET** /search-icons | Search Icons API
*MediaApi* | [**searchRoyaltyFreeImagesAPI**](docs/MediaApi.md#searchRoyaltyFreeImagesAPI) | **GET** /search-images | Search Royalty Free Images API
*MediaApi* | [**vectorSearchAPI**](docs/MediaApi.md#vectorSearchAPI) | **GET** /search-vectors | Vector Search API
*NewsApi* | [**extractNewsAPI**](docs/NewsApi.md#extractNewsAPI) | **GET** /extract-news | Extract News API
*NewsApi* | [**searchNewsAPI**](docs/NewsApi.md#searchNewsAPI) | **GET** /search-news | Search News API
*NewsApi* | [**topNewsAPI**](docs/NewsApi.md#topNewsAPI) | **GET** /retrieve-top-news | Top News API
*StorageApi* | [**readKeyValueFromStoreAPI**](docs/StorageApi.md#readKeyValueFromStoreAPI) | **GET** /read-key-value | Read Key Value from Store API
*StorageApi* | [**storeKeyValueGETAPI**](docs/StorageApi.md#storeKeyValueGETAPI) | **GET** /store-key-value | Store Key Value (GET) API
*TextApi* | [**correctSpellingAPI**](docs/TextApi.md#correctSpellingAPI) | **GET** /correct-spelling | Correct Spelling API
*TextApi* | [**detectGenderByNameAPI**](docs/TextApi.md#detectGenderByNameAPI) | **GET** /detect-gender | Detect Gender by Name API
*TextApi* | [**detectLanguageAPI**](docs/TextApi.md#detectLanguageAPI) | **GET** /detect-language | Detect Language API
*TextApi* | [**detectSentimentAPI**](docs/TextApi.md#detectSentimentAPI) | **GET** /detect-sentiment | Detect Sentiment API
*TextApi* | [**extractDatesAPI**](docs/TextApi.md#extractDatesAPI) | **GET** /extract-dates | Extract Dates API
*TextApi* | [**extractEntitiesAPI**](docs/TextApi.md#extractEntitiesAPI) | **GET** /extract-entities | Extract Entities API
*TextApi* | [**listWordSynonymsAPI**](docs/TextApi.md#listWordSynonymsAPI) | **GET** /list-synonyms | List Word Synonyms API
*TextApi* | [**pluralizeWordAPI**](docs/TextApi.md#pluralizeWordAPI) | **GET** /pluralize-word | Pluralize Word API
*TextApi* | [**scoreReadabilityAPI**](docs/TextApi.md#scoreReadabilityAPI) | **GET** /score-readability | Score Readability API
*TextApi* | [**scoreTextAPI**](docs/TextApi.md#scoreTextAPI) | **GET** /score-text | Score Text API
*TextApi* | [**singularizeWordAPI**](docs/TextApi.md#singularizeWordAPI) | **GET** /singularize-word | Singularize Word API
*TextApi* | [**stemTextAPI**](docs/TextApi.md#stemTextAPI) | **GET** /stem-text | Stem Text API
*TextApi* | [**tagPartOfSpeechAPI**](docs/TextApi.md#tagPartOfSpeechAPI) | **GET** /tag-pos | Tag Part of Speech API
*WebApi* | [**extractAuthorsAPI**](docs/WebApi.md#extractAuthorsAPI) | **GET** /extract-authors | Extract Authors API
*WebApi* | [**extractContentFromAWebPageAPI**](docs/WebApi.md#extractContentFromAWebPageAPI) | **GET** /extract-content | Extract Content from a Web Page API
*WebApi* | [**extractPublishDateAPI**](docs/WebApi.md#extractPublishDateAPI) | **GET** /extract-publish-date | Extract Publish Date API
*WebApi* | [**retrievePageRankAPI**](docs/WebApi.md#retrievePageRankAPI) | **GET** /retrieve-page-rank | Retrieve Page Rank API
*WebApi* | [**searchWebAPI**](docs/WebApi.md#searchWebAPI) | **GET** /search-web | Search Web API
*WebApi* | [**verifyEmailAddressAPI**](docs/WebApi.md#verifyEmailAddressAPI) | **GET** /verify-email | Verify Email Address API


## Documentation for Models

 - [ArtSearchAPI200Response](docs/ArtSearchAPI200Response.md)
 - [ComputeNutritionAPI200Response](docs/ComputeNutritionAPI200Response.md)
 - [ComputeNutritionAPI200ResponseIngredientBreakdownInner](docs/ComputeNutritionAPI200ResponseIngredientBreakdownInner.md)
 - [ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner](docs/ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner.md)
 - [ConvertUnitsAPI200Response](docs/ConvertUnitsAPI200Response.md)
 - [CorrectSpellingAPI200Response](docs/CorrectSpellingAPI200Response.md)
 - [DetectGenderByNameAPI200Response](docs/DetectGenderByNameAPI200Response.md)
 - [DetectLanguageAPI200ResponseInner](docs/DetectLanguageAPI200ResponseInner.md)
 - [DetectMainImageColorAPI200ResponseInner](docs/DetectMainImageColorAPI200ResponseInner.md)
 - [DetectSentimentAPI200Response](docs/DetectSentimentAPI200Response.md)
 - [DetectSentimentAPI200ResponseDocument](docs/DetectSentimentAPI200ResponseDocument.md)
 - [DetectSentimentAPI200ResponseSentencesInner](docs/DetectSentimentAPI200ResponseSentencesInner.md)
 - [ExtractAuthorsAPI200Response](docs/ExtractAuthorsAPI200Response.md)
 - [ExtractAuthorsAPI200ResponseAuthorsInner](docs/ExtractAuthorsAPI200ResponseAuthorsInner.md)
 - [ExtractContentFromAWebPageAPI200Response](docs/ExtractContentFromAWebPageAPI200Response.md)
 - [ExtractDatesAPI200Response](docs/ExtractDatesAPI200Response.md)
 - [ExtractDatesAPI200ResponseDatesInner](docs/ExtractDatesAPI200ResponseDatesInner.md)
 - [ExtractEntitiesAPI200Response](docs/ExtractEntitiesAPI200Response.md)
 - [ExtractEntitiesAPI200ResponseEntitiesInner](docs/ExtractEntitiesAPI200ResponseEntitiesInner.md)
 - [ExtractNewsAPI200Response](docs/ExtractNewsAPI200Response.md)
 - [ExtractNewsAPI200ResponseImagesInner](docs/ExtractNewsAPI200ResponseImagesInner.md)
 - [ExtractNewsAPI200ResponseVideosInner](docs/ExtractNewsAPI200ResponseVideosInner.md)
 - [ExtractPublishDateAPI200Response](docs/ExtractPublishDateAPI200Response.md)
 - [FindSimilarBooksAPI200Response](docs/FindSimilarBooksAPI200Response.md)
 - [GenerateNonsenseWordAPI200Response](docs/GenerateNonsenseWordAPI200Response.md)
 - [ListWordSynonymsAPI200Response](docs/ListWordSynonymsAPI200Response.md)
 - [PluralizeWordAPI200Response](docs/PluralizeWordAPI200Response.md)
 - [RandomMemeAPI200Response](docs/RandomMemeAPI200Response.md)
 - [RandomPoemAPI200Response](docs/RandomPoemAPI200Response.md)
 - [RandomQuoteAPI200Response](docs/RandomQuoteAPI200Response.md)
 - [RandomRiddleAPI200Response](docs/RandomRiddleAPI200Response.md)
 - [RandomTriviaAPI200Response](docs/RandomTriviaAPI200Response.md)
 - [ReadKeyValueFromStoreAPI200Response](docs/ReadKeyValueFromStoreAPI200Response.md)
 - [RetrieveArtworkById200Response](docs/RetrieveArtworkById200Response.md)
 - [RetrievePageRankAPI200Response](docs/RetrievePageRankAPI200Response.md)
 - [RetrieveRecipeInformationAPI200Response](docs/RetrieveRecipeInformationAPI200Response.md)
 - [RetrieveRecipeInformationAPI200ResponseCredits](docs/RetrieveRecipeInformationAPI200ResponseCredits.md)
 - [RetrieveRecipeInformationAPI200ResponseDietaryProperties](docs/RetrieveRecipeInformationAPI200ResponseDietaryProperties.md)
 - [RetrieveRecipeInformationAPI200ResponseIngredientsInner](docs/RetrieveRecipeInformationAPI200ResponseIngredientsInner.md)
 - [RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures](docs/RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures.md)
 - [RetrieveRecipeInformationAPI200ResponseInstructionsInner](docs/RetrieveRecipeInformationAPI200ResponseInstructionsInner.md)
 - [RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner](docs/RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner.md)
 - [RetrieveRecipeInformationAPI200ResponseNutrition](docs/RetrieveRecipeInformationAPI200ResponseNutrition.md)
 - [RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner](docs/RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.md)
 - [RetrieveRecipeInformationAPI200ResponseScores](docs/RetrieveRecipeInformationAPI200ResponseScores.md)
 - [RetrieveRecipeInformationAPI200ResponseTaste](docs/RetrieveRecipeInformationAPI200ResponseTaste.md)
 - [RetrieveRecipeInformationAPI200ResponseTimes](docs/RetrieveRecipeInformationAPI200ResponseTimes.md)
 - [ScoreReadabilityAPI200Response](docs/ScoreReadabilityAPI200Response.md)
 - [ScoreTextAPI200Response](docs/ScoreTextAPI200Response.md)
 - [ScoreTextAPI200ResponseInterestingness](docs/ScoreTextAPI200ResponseInterestingness.md)
 - [ScoreTextAPI200ResponseInterestingnessSubscores](docs/ScoreTextAPI200ResponseInterestingnessSubscores.md)
 - [ScoreTextAPI200ResponseReadability](docs/ScoreTextAPI200ResponseReadability.md)
 - [ScoreTextAPI200ResponseReadabilityMainscores](docs/ScoreTextAPI200ResponseReadabilityMainscores.md)
 - [ScoreTextAPI200ResponseReadabilitySubscores](docs/ScoreTextAPI200ResponseReadabilitySubscores.md)
 - [ScoreTextAPI200ResponseSkimmability](docs/ScoreTextAPI200ResponseSkimmability.md)
 - [ScoreTextAPI200ResponseSkimmabilityMainscores](docs/ScoreTextAPI200ResponseSkimmabilityMainscores.md)
 - [ScoreTextAPI200ResponseSkimmabilitySubscores](docs/ScoreTextAPI200ResponseSkimmabilitySubscores.md)
 - [ScoreTextAPI200ResponseStyle](docs/ScoreTextAPI200ResponseStyle.md)
 - [ScoreTextAPI200ResponseStyleSubscores](docs/ScoreTextAPI200ResponseStyleSubscores.md)
 - [SearchBooksAPI200Response](docs/SearchBooksAPI200Response.md)
 - [SearchBooksAPI200ResponseBooksInnerInner](docs/SearchBooksAPI200ResponseBooksInnerInner.md)
 - [SearchDrinksAPI200Response](docs/SearchDrinksAPI200Response.md)
 - [SearchDrinksAPI200ResponseDrinksInner](docs/SearchDrinksAPI200ResponseDrinksInner.md)
 - [SearchDrinksAPI200ResponseDrinksInnerCredits](docs/SearchDrinksAPI200ResponseDrinksInnerCredits.md)
 - [SearchDrinksAPI200ResponseDrinksInnerIngredientsInner](docs/SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.md)
 - [SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures](docs/SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures.md)
 - [SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric](docs/SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric.md)
 - [SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs](docs/SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs.md)
 - [SearchDrinksAPI200ResponseDrinksInnerInstructionsInner](docs/SearchDrinksAPI200ResponseDrinksInnerInstructionsInner.md)
 - [SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner](docs/SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner.md)
 - [SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner](docs/SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.md)
 - [SearchDrinksAPI200ResponseDrinksInnerNutrition](docs/SearchDrinksAPI200ResponseDrinksInnerNutrition.md)
 - [SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown](docs/SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.md)
 - [SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner](docs/SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner.md)
 - [SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner](docs/SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner.md)
 - [SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner](docs/SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner.md)
 - [SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner](docs/SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner.md)
 - [SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing](docs/SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing.md)
 - [SearchGifsAPI200Response](docs/SearchGifsAPI200Response.md)
 - [SearchGifsAPI200ResponseImagesInner](docs/SearchGifsAPI200ResponseImagesInner.md)
 - [SearchIconsAPI200Response](docs/SearchIconsAPI200Response.md)
 - [SearchJokesAPI200Response](docs/SearchJokesAPI200Response.md)
 - [SearchJokesAPI200ResponseJokesInner](docs/SearchJokesAPI200ResponseJokesInner.md)
 - [SearchMemesAPI200Response](docs/SearchMemesAPI200Response.md)
 - [SearchMemesAPI200ResponseMemesInner](docs/SearchMemesAPI200ResponseMemesInner.md)
 - [SearchNewsAPI200Response](docs/SearchNewsAPI200Response.md)
 - [SearchNewsAPI200ResponseNewsInner](docs/SearchNewsAPI200ResponseNewsInner.md)
 - [SearchRecipesAPI200Response](docs/SearchRecipesAPI200Response.md)
 - [SearchRecipesAPI200ResponseRecipesInner](docs/SearchRecipesAPI200ResponseRecipesInner.md)
 - [SearchRecipesAPI200ResponseRecipesInnerNutrition](docs/SearchRecipesAPI200ResponseRecipesInnerNutrition.md)
 - [SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner](docs/SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner.md)
 - [SearchRestaurantsAPI200Response](docs/SearchRestaurantsAPI200Response.md)
 - [SearchRestaurantsAPI200ResponseRestaurantsInner](docs/SearchRestaurantsAPI200ResponseRestaurantsInner.md)
 - [SearchRestaurantsAPI200ResponseRestaurantsInnerAddress](docs/SearchRestaurantsAPI200ResponseRestaurantsInnerAddress.md)
 - [SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours](docs/SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours.md)
 - [SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational](docs/SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.md)
 - [SearchRoyaltyFreeImagesAPI200Response](docs/SearchRoyaltyFreeImagesAPI200Response.md)
 - [SearchRoyaltyFreeImagesAPI200ResponseImagesInner](docs/SearchRoyaltyFreeImagesAPI200ResponseImagesInner.md)
 - [SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense](docs/SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense.md)
 - [SearchWebAPI200Response](docs/SearchWebAPI200Response.md)
 - [SearchWebAPI200ResponseResultsInner](docs/SearchWebAPI200ResponseResultsInner.md)
 - [SingularizeWordAPI200Response](docs/SingularizeWordAPI200Response.md)
 - [StemTextAPI200Response](docs/StemTextAPI200Response.md)
 - [StoreKeyValueGETAPI200Response](docs/StoreKeyValueGETAPI200Response.md)
 - [TagPartOfSpeechAPI200Response](docs/TagPartOfSpeechAPI200Response.md)
 - [TopNewsAPI200Response](docs/TopNewsAPI200Response.md)
 - [TopNewsAPI200ResponseTopNewsInner](docs/TopNewsAPI200ResponseTopNewsInner.md)
 - [TopNewsAPI200ResponseTopNewsInnerNewsInner](docs/TopNewsAPI200ResponseTopNewsInnerNewsInner.md)
 - [VectorSearchAPI200Response](docs/VectorSearchAPI200Response.md)
 - [VectorSearchAPI200ResponseVectorsInner](docs/VectorSearchAPI200ResponseVectorsInner.md)
 - [VerifyEmailAddressAPI200Response](docs/VerifyEmailAddressAPI200Response.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### apiKey

- **Type**: API key

- **API key parameter name**: api-key
- **Location**: URL query string

### headerApiKey

- **Type**: API key

- **API key parameter name**: x-api-key
- **Location**: HTTP header


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

mail@apileague.com

