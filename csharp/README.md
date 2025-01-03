# apileague - the C# library for the API League

API League is a Hub for World Class APIs.

This C# SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.6.4
- SDK version: 1.6.4
- Generator version: 7.8.0-SNAPSHOT
- Build package: org.openapitools.codegen.languages.CSharpClientCodegen

<a id="frameworks-supported"></a>
## Frameworks supported

<a id="dependencies"></a>
## Dependencies

- [RestSharp](https://www.nuget.org/packages/RestSharp) - 106.13.0 or later
- [Json.NET](https://www.nuget.org/packages/Newtonsoft.Json/) - 13.0.2 or later
- [JsonSubTypes](https://www.nuget.org/packages/JsonSubTypes/) - 1.8.0 or later
- [System.ComponentModel.Annotations](https://www.nuget.org/packages/System.ComponentModel.Annotations) - 5.0.0 or later

The DLLs included in the package may not be the latest version. We recommend using [NuGet](https://docs.nuget.org/consume/installing-nuget) to obtain the latest version of the packages:
```
Install-Package RestSharp
Install-Package Newtonsoft.Json
Install-Package JsonSubTypes
Install-Package System.ComponentModel.Annotations
```

NOTE: RestSharp versions greater than 105.1.0 have a bug which causes file uploads to fail. See [RestSharp#742](https://github.com/restsharp/RestSharp/issues/742).
NOTE: RestSharp for .Net Core creates a new socket for each api call, which can lead to a socket exhaustion problem. See [RestSharp#1406](https://github.com/restsharp/RestSharp/issues/1406).

<a id="installation"></a>
## Installation
Run the following command to generate the DLL
- [Mac/Linux] `/bin/sh build.sh`
- [Windows] `build.bat`

Then include the DLL (under the `bin` folder) in the C# project, and use the namespaces:
```csharp
using apileague.Api;
using apileague.Client;
using apileague.Model;
```
<a id="packaging"></a>
## Packaging

A `.nuspec` is included with the project. You can follow the Nuget quickstart to [create](https://docs.microsoft.com/en-us/nuget/quickstart/create-and-publish-a-package#create-the-package) and [publish](https://docs.microsoft.com/en-us/nuget/quickstart/create-and-publish-a-package#publish-the-package) packages.

This `.nuspec` uses placeholders from the `.csproj`, so build the `.csproj` directly:

```
nuget pack -Build -OutputDirectory out apileague.csproj
```

Then, publish to a [local feed](https://docs.microsoft.com/en-us/nuget/hosting-packages/local-feeds) or [other host](https://docs.microsoft.com/en-us/nuget/hosting-packages/overview) and consume the new package via Nuget as usual.

<a id="usage"></a>
## Usage

To use the API client with a HTTP proxy, setup a `System.Net.WebProxy`
```csharp
Configuration c = new Configuration();
System.Net.WebProxy webProxy = new System.Net.WebProxy("http://myProxyUrl:80/");
webProxy.Credentials = System.Net.CredentialCache.DefaultCredentials;
c.Proxy = webProxy;
```

<a id="getting-started"></a>
## Getting Started

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using apileague.Api;
using apileague.Client;
using apileague.Model;

namespace Example
{
    public class Example
    {
        public static void Main()
        {

            Configuration config = new Configuration();
            config.BasePath = "https://api.apileague.com";
            // Configure API key authorization: apiKey
            config.ApiKey.Add("api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.ApiKeyPrefix.Add("api-key", "Bearer");
            // Configure API key authorization: headerApiKey
            config.ApiKey.Add("x-api-key", "YOUR_API_KEY");
            // Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
            // config.ApiKeyPrefix.Add("x-api-key", "Bearer");

            var apiInstance = new ArtApi(config);
            var url = https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png;  // string | The URL to the image.
            var width = 200;  // int? | The maximum width of the image (default 400, max. 500). (optional) 
            var height = 200;  // int? | The maximum height of the image (default 400, max. 500). (optional) 

            try
            {
                // Image to Ascii Art by URL API
                string result = apiInstance.ImageToAsciiArtByURLAPI(url, width, height);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling ArtApi.ImageToAsciiArtByURLAPI: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }

        }
    }
}
```

<a id="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://api.apileague.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ArtApi* | [**ImageToAsciiArtByURLAPI**](docs/ArtApi.md#imagetoasciiartbyurlapi) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL API
*ArtApi* | [**RandomPoemAPI**](docs/ArtApi.md#randompoemapi) | **GET** /retrieve-random-poem | Random Poem API
*BooksApi* | [**FindSimilarBooksAPI**](docs/BooksApi.md#findsimilarbooksapi) | **GET** /list-similar-books | Find Similar Books API
*BooksApi* | [**SearchBooksAPI**](docs/BooksApi.md#searchbooksapi) | **GET** /search-books | Search Books API
*FoodApi* | [**ComputeNutritionAPI**](docs/FoodApi.md#computenutritionapi) | **GET** /compute-nutrition | Compute Nutrition API
*FoodApi* | [**RetrieveRecipeInformationAPI**](docs/FoodApi.md#retrieverecipeinformationapi) | **GET** /retrieve-recipe | Retrieve Recipe Information API
*FoodApi* | [**SearchDrinksAPI**](docs/FoodApi.md#searchdrinksapi) | **GET** /search-drinks | Search Drinks API
*FoodApi* | [**SearchRecipesAPI**](docs/FoodApi.md#searchrecipesapi) | **GET** /search-recipes | Search Recipes API
*FoodApi* | [**SearchRestaurantsAPI**](docs/FoodApi.md#searchrestaurantsapi) | **GET** /search-restaurants | Search Restaurants API
*HumorApi* | [**GenerateNonsenseWordAPI**](docs/HumorApi.md#generatenonsensewordapi) | **GET** /generate-nonsense-word | Generate Nonsense Word API
*HumorApi* | [**RandomJokeAPI**](docs/HumorApi.md#randomjokeapi) | **GET** /retrieve-random-joke | Random Joke API
*HumorApi* | [**RandomMemeAPI**](docs/HumorApi.md#randommemeapi) | **GET** /retrieve-random-meme | Random Meme API
*HumorApi* | [**SearchGifsAPI**](docs/HumorApi.md#searchgifsapi) | **GET** /search-gifs | Search Gifs API
*HumorApi* | [**SearchJokesAPI**](docs/HumorApi.md#searchjokesapi) | **GET** /search-jokes | Search Jokes API
*HumorApi* | [**SearchMemesAPI**](docs/HumorApi.md#searchmemesapi) | **GET** /search-memes | Search Memes API
*KnowledgeApi* | [**RandomQuoteAPI**](docs/KnowledgeApi.md#randomquoteapi) | **GET** /retrieve-random-quote | Random Quote API
*KnowledgeApi* | [**RandomRiddleAPI**](docs/KnowledgeApi.md#randomriddleapi) | **GET** /retrieve-random-riddle | Random Riddle API
*KnowledgeApi* | [**RandomTriviaAPI**](docs/KnowledgeApi.md#randomtriviaapi) | **GET** /retrieve-random-trivia | Random Trivia API
*MathApi* | [**ConvertUnitsAPI**](docs/MathApi.md#convertunitsapi) | **GET** /convert-units | Convert Units API
*MediaApi* | [**DetectMainImageColorAPI**](docs/MediaApi.md#detectmainimagecolorapi) | **GET** /detect-color | Detect Main Image Color API
*MediaApi* | [**RescaleImageAPI**](docs/MediaApi.md#rescaleimageapi) | **GET** /rescale-image | Rescale Image API
*MediaApi* | [**SearchIconsAPI**](docs/MediaApi.md#searchiconsapi) | **GET** /search-icons | Search Icons API
*MediaApi* | [**SearchRoyaltyFreeImagesAPI**](docs/MediaApi.md#searchroyaltyfreeimagesapi) | **GET** /search-images | Search Royalty Free Images API
*MediaApi* | [**VectorSearchAPI**](docs/MediaApi.md#vectorsearchapi) | **GET** /search-vectors | Vector Search API
*NewsApi* | [**ExtractNewsAPI**](docs/NewsApi.md#extractnewsapi) | **GET** /extract-news | Extract News API
*NewsApi* | [**SearchNewsAPI**](docs/NewsApi.md#searchnewsapi) | **GET** /search-news | Search News API
*NewsApi* | [**TopNewsAPI**](docs/NewsApi.md#topnewsapi) | **GET** /retrieve-top-news | Top News API
*StorageApi* | [**ReadKeyValueFromStoreAPI**](docs/StorageApi.md#readkeyvaluefromstoreapi) | **GET** /read-key-value | Read Key Value from Store API
*StorageApi* | [**StoreKeyValueGETAPI**](docs/StorageApi.md#storekeyvaluegetapi) | **GET** /store-key-value | Store Key Value (GET) API
*TextApi* | [**CorrectSpellingAPI**](docs/TextApi.md#correctspellingapi) | **GET** /correct-spelling | Correct Spelling API
*TextApi* | [**DetectGenderByNameAPI**](docs/TextApi.md#detectgenderbynameapi) | **GET** /detect-gender | Detect Gender by Name API
*TextApi* | [**DetectLanguageAPI**](docs/TextApi.md#detectlanguageapi) | **GET** /detect-language | Detect Language API
*TextApi* | [**DetectSentimentAPI**](docs/TextApi.md#detectsentimentapi) | **GET** /detect-sentiment | Detect Sentiment API
*TextApi* | [**ExtractDatesAPI**](docs/TextApi.md#extractdatesapi) | **GET** /extract-dates | Extract Dates API
*TextApi* | [**ExtractEntitiesAPI**](docs/TextApi.md#extractentitiesapi) | **GET** /extract-entities | Extract Entities API
*TextApi* | [**ListWordSynonymsAPI**](docs/TextApi.md#listwordsynonymsapi) | **GET** /list-synonyms | List Word Synonyms API
*TextApi* | [**PluralizeWordAPI**](docs/TextApi.md#pluralizewordapi) | **GET** /pluralize-word | Pluralize Word API
*TextApi* | [**ScoreReadabilityAPI**](docs/TextApi.md#scorereadabilityapi) | **GET** /score-readability | Score Readability API
*TextApi* | [**ScoreTextAPI**](docs/TextApi.md#scoretextapi) | **GET** /score-text | Score Text API
*TextApi* | [**SingularizeWordAPI**](docs/TextApi.md#singularizewordapi) | **GET** /singularize-word | Singularize Word API
*TextApi* | [**StemTextAPI**](docs/TextApi.md#stemtextapi) | **GET** /stem-text | Stem Text API
*TextApi* | [**TagPartOfSpeechAPI**](docs/TextApi.md#tagpartofspeechapi) | **GET** /tag-pos | Tag Part of Speech API
*WebApi* | [**ExtractAuthorsAPI**](docs/WebApi.md#extractauthorsapi) | **GET** /extract-authors | Extract Authors API
*WebApi* | [**ExtractContentFromAWebPageAPI**](docs/WebApi.md#extractcontentfromawebpageapi) | **GET** /extract-content | Extract Content from a Web Page API
*WebApi* | [**ExtractPublishDateAPI**](docs/WebApi.md#extractpublishdateapi) | **GET** /extract-publish-date | Extract Publish Date API
*WebApi* | [**RetrievePageRankAPI**](docs/WebApi.md#retrievepagerankapi) | **GET** /retrieve-page-rank | Retrieve Page Rank API
*WebApi* | [**SearchWebAPI**](docs/WebApi.md#searchwebapi) | **GET** /search-web | Search Web API
*WebApi* | [**VerifyEmailAddressAPI**](docs/WebApi.md#verifyemailaddressapi) | **GET** /verify-email | Verify Email Address API


<a id="documentation-for-models"></a>
## Documentation for Models

 - [Model.ComputeNutritionAPI200Response](docs/ComputeNutritionAPI200Response.md)
 - [Model.ComputeNutritionAPI200ResponseIngredientBreakdownInner](docs/ComputeNutritionAPI200ResponseIngredientBreakdownInner.md)
 - [Model.ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner](docs/ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner.md)
 - [Model.ConvertUnitsAPI200Response](docs/ConvertUnitsAPI200Response.md)
 - [Model.CorrectSpellingAPI200Response](docs/CorrectSpellingAPI200Response.md)
 - [Model.DetectGenderByNameAPI200Response](docs/DetectGenderByNameAPI200Response.md)
 - [Model.DetectLanguageAPI200ResponseInner](docs/DetectLanguageAPI200ResponseInner.md)
 - [Model.DetectMainImageColorAPI200ResponseInner](docs/DetectMainImageColorAPI200ResponseInner.md)
 - [Model.DetectSentimentAPI200Response](docs/DetectSentimentAPI200Response.md)
 - [Model.DetectSentimentAPI200ResponseDocument](docs/DetectSentimentAPI200ResponseDocument.md)
 - [Model.DetectSentimentAPI200ResponseSentencesInner](docs/DetectSentimentAPI200ResponseSentencesInner.md)
 - [Model.ExtractAuthorsAPI200Response](docs/ExtractAuthorsAPI200Response.md)
 - [Model.ExtractAuthorsAPI200ResponseAuthorsInner](docs/ExtractAuthorsAPI200ResponseAuthorsInner.md)
 - [Model.ExtractContentFromAWebPageAPI200Response](docs/ExtractContentFromAWebPageAPI200Response.md)
 - [Model.ExtractDatesAPI200Response](docs/ExtractDatesAPI200Response.md)
 - [Model.ExtractDatesAPI200ResponseDatesInner](docs/ExtractDatesAPI200ResponseDatesInner.md)
 - [Model.ExtractEntitiesAPI200Response](docs/ExtractEntitiesAPI200Response.md)
 - [Model.ExtractEntitiesAPI200ResponseEntitiesInner](docs/ExtractEntitiesAPI200ResponseEntitiesInner.md)
 - [Model.ExtractNewsAPI200Response](docs/ExtractNewsAPI200Response.md)
 - [Model.ExtractNewsAPI200ResponseImagesInner](docs/ExtractNewsAPI200ResponseImagesInner.md)
 - [Model.ExtractNewsAPI200ResponseVideosInner](docs/ExtractNewsAPI200ResponseVideosInner.md)
 - [Model.ExtractPublishDateAPI200Response](docs/ExtractPublishDateAPI200Response.md)
 - [Model.FindSimilarBooksAPI200Response](docs/FindSimilarBooksAPI200Response.md)
 - [Model.GenerateNonsenseWordAPI200Response](docs/GenerateNonsenseWordAPI200Response.md)
 - [Model.ListWordSynonymsAPI200Response](docs/ListWordSynonymsAPI200Response.md)
 - [Model.PluralizeWordAPI200Response](docs/PluralizeWordAPI200Response.md)
 - [Model.RandomMemeAPI200Response](docs/RandomMemeAPI200Response.md)
 - [Model.RandomPoemAPI200Response](docs/RandomPoemAPI200Response.md)
 - [Model.RandomQuoteAPI200Response](docs/RandomQuoteAPI200Response.md)
 - [Model.RandomRiddleAPI200Response](docs/RandomRiddleAPI200Response.md)
 - [Model.RandomTriviaAPI200Response](docs/RandomTriviaAPI200Response.md)
 - [Model.ReadKeyValueFromStoreAPI200Response](docs/ReadKeyValueFromStoreAPI200Response.md)
 - [Model.RetrievePageRankAPI200Response](docs/RetrievePageRankAPI200Response.md)
 - [Model.RetrieveRecipeInformationAPI200Response](docs/RetrieveRecipeInformationAPI200Response.md)
 - [Model.RetrieveRecipeInformationAPI200ResponseCredits](docs/RetrieveRecipeInformationAPI200ResponseCredits.md)
 - [Model.RetrieveRecipeInformationAPI200ResponseDietaryProperties](docs/RetrieveRecipeInformationAPI200ResponseDietaryProperties.md)
 - [Model.RetrieveRecipeInformationAPI200ResponseIngredientsInner](docs/RetrieveRecipeInformationAPI200ResponseIngredientsInner.md)
 - [Model.RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures](docs/RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures.md)
 - [Model.RetrieveRecipeInformationAPI200ResponseInstructionsInner](docs/RetrieveRecipeInformationAPI200ResponseInstructionsInner.md)
 - [Model.RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner](docs/RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner.md)
 - [Model.RetrieveRecipeInformationAPI200ResponseNutrition](docs/RetrieveRecipeInformationAPI200ResponseNutrition.md)
 - [Model.RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner](docs/RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.md)
 - [Model.RetrieveRecipeInformationAPI200ResponseScores](docs/RetrieveRecipeInformationAPI200ResponseScores.md)
 - [Model.RetrieveRecipeInformationAPI200ResponseTaste](docs/RetrieveRecipeInformationAPI200ResponseTaste.md)
 - [Model.RetrieveRecipeInformationAPI200ResponseTimes](docs/RetrieveRecipeInformationAPI200ResponseTimes.md)
 - [Model.ScoreReadabilityAPI200Response](docs/ScoreReadabilityAPI200Response.md)
 - [Model.ScoreTextAPI200Response](docs/ScoreTextAPI200Response.md)
 - [Model.ScoreTextAPI200ResponseInterestingness](docs/ScoreTextAPI200ResponseInterestingness.md)
 - [Model.ScoreTextAPI200ResponseInterestingnessSubscores](docs/ScoreTextAPI200ResponseInterestingnessSubscores.md)
 - [Model.ScoreTextAPI200ResponseReadability](docs/ScoreTextAPI200ResponseReadability.md)
 - [Model.ScoreTextAPI200ResponseReadabilityMainscores](docs/ScoreTextAPI200ResponseReadabilityMainscores.md)
 - [Model.ScoreTextAPI200ResponseReadabilitySubscores](docs/ScoreTextAPI200ResponseReadabilitySubscores.md)
 - [Model.ScoreTextAPI200ResponseSkimmability](docs/ScoreTextAPI200ResponseSkimmability.md)
 - [Model.ScoreTextAPI200ResponseSkimmabilityMainscores](docs/ScoreTextAPI200ResponseSkimmabilityMainscores.md)
 - [Model.ScoreTextAPI200ResponseSkimmabilitySubscores](docs/ScoreTextAPI200ResponseSkimmabilitySubscores.md)
 - [Model.ScoreTextAPI200ResponseStyle](docs/ScoreTextAPI200ResponseStyle.md)
 - [Model.ScoreTextAPI200ResponseStyleSubscores](docs/ScoreTextAPI200ResponseStyleSubscores.md)
 - [Model.SearchBooksAPI200Response](docs/SearchBooksAPI200Response.md)
 - [Model.SearchBooksAPI200ResponseBooksInnerInner](docs/SearchBooksAPI200ResponseBooksInnerInner.md)
 - [Model.SearchDrinksAPI200Response](docs/SearchDrinksAPI200Response.md)
 - [Model.SearchDrinksAPI200ResponseDrinksInner](docs/SearchDrinksAPI200ResponseDrinksInner.md)
 - [Model.SearchDrinksAPI200ResponseDrinksInnerCredits](docs/SearchDrinksAPI200ResponseDrinksInnerCredits.md)
 - [Model.SearchDrinksAPI200ResponseDrinksInnerIngredientsInner](docs/SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.md)
 - [Model.SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures](docs/SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures.md)
 - [Model.SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric](docs/SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric.md)
 - [Model.SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs](docs/SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs.md)
 - [Model.SearchDrinksAPI200ResponseDrinksInnerInstructionsInner](docs/SearchDrinksAPI200ResponseDrinksInnerInstructionsInner.md)
 - [Model.SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner](docs/SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner.md)
 - [Model.SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner](docs/SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.md)
 - [Model.SearchDrinksAPI200ResponseDrinksInnerNutrition](docs/SearchDrinksAPI200ResponseDrinksInnerNutrition.md)
 - [Model.SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown](docs/SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.md)
 - [Model.SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner](docs/SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner.md)
 - [Model.SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner](docs/SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner.md)
 - [Model.SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner](docs/SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner.md)
 - [Model.SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner](docs/SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner.md)
 - [Model.SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing](docs/SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing.md)
 - [Model.SearchGifsAPI200Response](docs/SearchGifsAPI200Response.md)
 - [Model.SearchGifsAPI200ResponseImagesInner](docs/SearchGifsAPI200ResponseImagesInner.md)
 - [Model.SearchIconsAPI200Response](docs/SearchIconsAPI200Response.md)
 - [Model.SearchJokesAPI200Response](docs/SearchJokesAPI200Response.md)
 - [Model.SearchJokesAPI200ResponseJokesInner](docs/SearchJokesAPI200ResponseJokesInner.md)
 - [Model.SearchMemesAPI200Response](docs/SearchMemesAPI200Response.md)
 - [Model.SearchMemesAPI200ResponseMemesInner](docs/SearchMemesAPI200ResponseMemesInner.md)
 - [Model.SearchNewsAPI200Response](docs/SearchNewsAPI200Response.md)
 - [Model.SearchNewsAPI200ResponseNewsInner](docs/SearchNewsAPI200ResponseNewsInner.md)
 - [Model.SearchRecipesAPI200Response](docs/SearchRecipesAPI200Response.md)
 - [Model.SearchRecipesAPI200ResponseRecipesInner](docs/SearchRecipesAPI200ResponseRecipesInner.md)
 - [Model.SearchRecipesAPI200ResponseRecipesInnerNutrition](docs/SearchRecipesAPI200ResponseRecipesInnerNutrition.md)
 - [Model.SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner](docs/SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner.md)
 - [Model.SearchRestaurantsAPI200Response](docs/SearchRestaurantsAPI200Response.md)
 - [Model.SearchRestaurantsAPI200ResponseRestaurantsInner](docs/SearchRestaurantsAPI200ResponseRestaurantsInner.md)
 - [Model.SearchRestaurantsAPI200ResponseRestaurantsInnerAddress](docs/SearchRestaurantsAPI200ResponseRestaurantsInnerAddress.md)
 - [Model.SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours](docs/SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours.md)
 - [Model.SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational](docs/SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.md)
 - [Model.SearchRoyaltyFreeImagesAPI200Response](docs/SearchRoyaltyFreeImagesAPI200Response.md)
 - [Model.SearchRoyaltyFreeImagesAPI200ResponseImagesInner](docs/SearchRoyaltyFreeImagesAPI200ResponseImagesInner.md)
 - [Model.SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense](docs/SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense.md)
 - [Model.SearchWebAPI200Response](docs/SearchWebAPI200Response.md)
 - [Model.SearchWebAPI200ResponseResultsInner](docs/SearchWebAPI200ResponseResultsInner.md)
 - [Model.SingularizeWordAPI200Response](docs/SingularizeWordAPI200Response.md)
 - [Model.StemTextAPI200Response](docs/StemTextAPI200Response.md)
 - [Model.StoreKeyValueGETAPI200Response](docs/StoreKeyValueGETAPI200Response.md)
 - [Model.TagPartOfSpeechAPI200Response](docs/TagPartOfSpeechAPI200Response.md)
 - [Model.TopNewsAPI200Response](docs/TopNewsAPI200Response.md)
 - [Model.TopNewsAPI200ResponseTopNewsInner](docs/TopNewsAPI200ResponseTopNewsInner.md)
 - [Model.TopNewsAPI200ResponseTopNewsInnerNewsInner](docs/TopNewsAPI200ResponseTopNewsInnerNewsInner.md)
 - [Model.VectorSearchAPI200Response](docs/VectorSearchAPI200Response.md)
 - [Model.VectorSearchAPI200ResponseVectorsInner](docs/VectorSearchAPI200ResponseVectorsInner.md)
 - [Model.VerifyEmailAddressAPI200Response](docs/VerifyEmailAddressAPI200Response.md)


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

