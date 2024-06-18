/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from './ApiClient';
import ComputeNutrition200Response from './model/ComputeNutrition200Response';
import ComputeNutrition200ResponseIngredientBreakdownInner from './model/ComputeNutrition200ResponseIngredientBreakdownInner';
import ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner from './model/ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner';
import ConvertUnits200Response from './model/ConvertUnits200Response';
import CorrectSpelling200Response from './model/CorrectSpelling200Response';
import DetectGenderByName200Response from './model/DetectGenderByName200Response';
import DetectLanguage200ResponseInner from './model/DetectLanguage200ResponseInner';
import DetectMainImageColor200ResponseInner from './model/DetectMainImageColor200ResponseInner';
import DetectSentiment200Response from './model/DetectSentiment200Response';
import DetectSentiment200ResponseDocument from './model/DetectSentiment200ResponseDocument';
import DetectSentiment200ResponseSentencesInner from './model/DetectSentiment200ResponseSentencesInner';
import ExtractAuthors200Response from './model/ExtractAuthors200Response';
import ExtractAuthors200ResponseAuthorsInner from './model/ExtractAuthors200ResponseAuthorsInner';
import ExtractContentFromAWebPage200Response from './model/ExtractContentFromAWebPage200Response';
import ExtractDates200Response from './model/ExtractDates200Response';
import ExtractDates200ResponseDatesInner from './model/ExtractDates200ResponseDatesInner';
import ExtractEntities200Response from './model/ExtractEntities200Response';
import ExtractEntities200ResponseEntitiesInner from './model/ExtractEntities200ResponseEntitiesInner';
import ExtractNews200Response from './model/ExtractNews200Response';
import ExtractNews200ResponseImagesInner from './model/ExtractNews200ResponseImagesInner';
import ExtractNews200ResponseVideosInner from './model/ExtractNews200ResponseVideosInner';
import ExtractPublishDate200Response from './model/ExtractPublishDate200Response';
import FindSimilarBooks200Response from './model/FindSimilarBooks200Response';
import GenerateNonsenseWord200Response from './model/GenerateNonsenseWord200Response';
import ListWordSynonyms200Response from './model/ListWordSynonyms200Response';
import PluralizeWord200Response from './model/PluralizeWord200Response';
import RandomMeme200Response from './model/RandomMeme200Response';
import RandomPoem200Response from './model/RandomPoem200Response';
import RandomQuote200Response from './model/RandomQuote200Response';
import RandomTrivia200Response from './model/RandomTrivia200Response';
import ReadKeyValueFromStore200Response from './model/ReadKeyValueFromStore200Response';
import RetrievePageRank200Response from './model/RetrievePageRank200Response';
import RetrieveRecipeInformation200Response from './model/RetrieveRecipeInformation200Response';
import RetrieveRecipeInformation200ResponseCredits from './model/RetrieveRecipeInformation200ResponseCredits';
import RetrieveRecipeInformation200ResponseDietaryProperties from './model/RetrieveRecipeInformation200ResponseDietaryProperties';
import RetrieveRecipeInformation200ResponseIngredientsInner from './model/RetrieveRecipeInformation200ResponseIngredientsInner';
import RetrieveRecipeInformation200ResponseIngredientsInnerMeasures from './model/RetrieveRecipeInformation200ResponseIngredientsInnerMeasures';
import RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric from './model/RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric';
import RetrieveRecipeInformation200ResponseInstructionsInner from './model/RetrieveRecipeInformation200ResponseInstructionsInner';
import RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner from './model/RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner';
import RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner from './model/RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner';
import RetrieveRecipeInformation200ResponseNutrition from './model/RetrieveRecipeInformation200ResponseNutrition';
import RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown from './model/RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown';
import RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner from './model/RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner';
import RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner from './model/RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner';
import RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner from './model/RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner';
import RetrieveRecipeInformation200ResponseNutritionWeightPerServing from './model/RetrieveRecipeInformation200ResponseNutritionWeightPerServing';
import RetrieveRecipeInformation200ResponseScores from './model/RetrieveRecipeInformation200ResponseScores';
import RetrieveRecipeInformation200ResponseTaste from './model/RetrieveRecipeInformation200ResponseTaste';
import RetrieveRecipeInformation200ResponseTimes from './model/RetrieveRecipeInformation200ResponseTimes';
import ScoreReadability200Response from './model/ScoreReadability200Response';
import ScoreText200Response from './model/ScoreText200Response';
import ScoreText200ResponseInterestingness from './model/ScoreText200ResponseInterestingness';
import ScoreText200ResponseInterestingnessSubscores from './model/ScoreText200ResponseInterestingnessSubscores';
import ScoreText200ResponseReadability from './model/ScoreText200ResponseReadability';
import ScoreText200ResponseReadabilityMainscores from './model/ScoreText200ResponseReadabilityMainscores';
import ScoreText200ResponseReadabilitySubscores from './model/ScoreText200ResponseReadabilitySubscores';
import ScoreText200ResponseSkimmability from './model/ScoreText200ResponseSkimmability';
import ScoreText200ResponseSkimmabilityMainscores from './model/ScoreText200ResponseSkimmabilityMainscores';
import ScoreText200ResponseSkimmabilitySubscores from './model/ScoreText200ResponseSkimmabilitySubscores';
import ScoreText200ResponseStyle from './model/ScoreText200ResponseStyle';
import ScoreText200ResponseStyleSubscores from './model/ScoreText200ResponseStyleSubscores';
import SearchBooks200Response from './model/SearchBooks200Response';
import SearchBooks200ResponseBooksInner from './model/SearchBooks200ResponseBooksInner';
import SearchGifs200Response from './model/SearchGifs200Response';
import SearchGifs200ResponseImagesInner from './model/SearchGifs200ResponseImagesInner';
import SearchJokes200Response from './model/SearchJokes200Response';
import SearchJokes200ResponseJokesInner from './model/SearchJokes200ResponseJokesInner';
import SearchMemes200Response from './model/SearchMemes200Response';
import SearchMemes200ResponseMemesInner from './model/SearchMemes200ResponseMemesInner';
import SearchNews200Response from './model/SearchNews200Response';
import SearchNews200ResponseNewsInner from './model/SearchNews200ResponseNewsInner';
import SearchRecipes200Response from './model/SearchRecipes200Response';
import SearchRecipes200ResponseRecipesInner from './model/SearchRecipes200ResponseRecipesInner';
import SearchRecipes200ResponseRecipesInnerNutrition from './model/SearchRecipes200ResponseRecipesInnerNutrition';
import SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner from './model/SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner';
import SearchRestaurants200Response from './model/SearchRestaurants200Response';
import SearchRestaurants200ResponseRestaurantsInner from './model/SearchRestaurants200ResponseRestaurantsInner';
import SearchRestaurants200ResponseRestaurantsInnerAddress from './model/SearchRestaurants200ResponseRestaurantsInnerAddress';
import SearchRestaurants200ResponseRestaurantsInnerLocalHours from './model/SearchRestaurants200ResponseRestaurantsInnerLocalHours';
import SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational from './model/SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational';
import SearchRoyaltyFreeImages200Response from './model/SearchRoyaltyFreeImages200Response';
import SearchRoyaltyFreeImages200ResponseImagesInner from './model/SearchRoyaltyFreeImages200ResponseImagesInner';
import SearchRoyaltyFreeImages200ResponseImagesInnerLicense from './model/SearchRoyaltyFreeImages200ResponseImagesInnerLicense';
import SearchWeb200Response from './model/SearchWeb200Response';
import SearchWeb200ResponseResultsInner from './model/SearchWeb200ResponseResultsInner';
import SingularizeWord200Response from './model/SingularizeWord200Response';
import StemText200Response from './model/StemText200Response';
import StoreKeyValueGET200Response from './model/StoreKeyValueGET200Response';
import TagPartOfSpeech200Response from './model/TagPartOfSpeech200Response';
import TopNews200Response from './model/TopNews200Response';
import TopNews200ResponseTopNewsInner from './model/TopNews200ResponseTopNewsInner';
import TopNews200ResponseTopNewsInnerNewsInner from './model/TopNews200ResponseTopNewsInnerNewsInner';
import VerifyEmailAddress200Response from './model/VerifyEmailAddress200Response';
import ArtApi from './api/ArtApi';
import BooksApi from './api/BooksApi';
import FoodApi from './api/FoodApi';
import HumorApi from './api/HumorApi';
import KnowledgeApi from './api/KnowledgeApi';
import MathApi from './api/MathApi';
import MediaApi from './api/MediaApi';
import NewsApi from './api/NewsApi';
import StorageApi from './api/StorageApi';
import TextApi from './api/TextApi';
import WebApi from './api/WebApi';


/**
* API League is a Hub for World Class APIs..<br>
* The <code>index</code> module provides access to constructors for all the classes which comprise the public API.
* <p>
* An AMD (recommended!) or CommonJS application will generally do something equivalent to the following:
* <pre>
* var ApileagueJs = require('index'); // See note below*.
* var xxxSvc = new ApileagueJs.XxxApi(); // Allocate the API class we're going to use.
* var yyyModel = new ApileagueJs.Yyy(); // Construct a model instance.
* yyyModel.someProperty = 'someValue';
* ...
* var zzz = xxxSvc.doSomething(yyyModel); // Invoke the service.
* ...
* </pre>
* <em>*NOTE: For a top-level AMD script, use require(['index'], function(){...})
* and put the application logic within the callback function.</em>
* </p>
* <p>
* A non-AMD browser application (discouraged) might do something like this:
* <pre>
* var xxxSvc = new ApileagueJs.XxxApi(); // Allocate the API class we're going to use.
* var yyy = new ApileagueJs.Yyy(); // Construct a model instance.
* yyyModel.someProperty = 'someValue';
* ...
* var zzz = xxxSvc.doSomething(yyyModel); // Invoke the service.
* ...
* </pre>
* </p>
* @module index
* @version 1.3.0
*/
export {
    /**
     * The ApiClient constructor.
     * @property {module:ApiClient}
     */
    ApiClient,

    /**
     * The ComputeNutrition200Response model constructor.
     * @property {module:model/ComputeNutrition200Response}
     */
    ComputeNutrition200Response,

    /**
     * The ComputeNutrition200ResponseIngredientBreakdownInner model constructor.
     * @property {module:model/ComputeNutrition200ResponseIngredientBreakdownInner}
     */
    ComputeNutrition200ResponseIngredientBreakdownInner,

    /**
     * The ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner model constructor.
     * @property {module:model/ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner}
     */
    ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner,

    /**
     * The ConvertUnits200Response model constructor.
     * @property {module:model/ConvertUnits200Response}
     */
    ConvertUnits200Response,

    /**
     * The CorrectSpelling200Response model constructor.
     * @property {module:model/CorrectSpelling200Response}
     */
    CorrectSpelling200Response,

    /**
     * The DetectGenderByName200Response model constructor.
     * @property {module:model/DetectGenderByName200Response}
     */
    DetectGenderByName200Response,

    /**
     * The DetectLanguage200ResponseInner model constructor.
     * @property {module:model/DetectLanguage200ResponseInner}
     */
    DetectLanguage200ResponseInner,

    /**
     * The DetectMainImageColor200ResponseInner model constructor.
     * @property {module:model/DetectMainImageColor200ResponseInner}
     */
    DetectMainImageColor200ResponseInner,

    /**
     * The DetectSentiment200Response model constructor.
     * @property {module:model/DetectSentiment200Response}
     */
    DetectSentiment200Response,

    /**
     * The DetectSentiment200ResponseDocument model constructor.
     * @property {module:model/DetectSentiment200ResponseDocument}
     */
    DetectSentiment200ResponseDocument,

    /**
     * The DetectSentiment200ResponseSentencesInner model constructor.
     * @property {module:model/DetectSentiment200ResponseSentencesInner}
     */
    DetectSentiment200ResponseSentencesInner,

    /**
     * The ExtractAuthors200Response model constructor.
     * @property {module:model/ExtractAuthors200Response}
     */
    ExtractAuthors200Response,

    /**
     * The ExtractAuthors200ResponseAuthorsInner model constructor.
     * @property {module:model/ExtractAuthors200ResponseAuthorsInner}
     */
    ExtractAuthors200ResponseAuthorsInner,

    /**
     * The ExtractContentFromAWebPage200Response model constructor.
     * @property {module:model/ExtractContentFromAWebPage200Response}
     */
    ExtractContentFromAWebPage200Response,

    /**
     * The ExtractDates200Response model constructor.
     * @property {module:model/ExtractDates200Response}
     */
    ExtractDates200Response,

    /**
     * The ExtractDates200ResponseDatesInner model constructor.
     * @property {module:model/ExtractDates200ResponseDatesInner}
     */
    ExtractDates200ResponseDatesInner,

    /**
     * The ExtractEntities200Response model constructor.
     * @property {module:model/ExtractEntities200Response}
     */
    ExtractEntities200Response,

    /**
     * The ExtractEntities200ResponseEntitiesInner model constructor.
     * @property {module:model/ExtractEntities200ResponseEntitiesInner}
     */
    ExtractEntities200ResponseEntitiesInner,

    /**
     * The ExtractNews200Response model constructor.
     * @property {module:model/ExtractNews200Response}
     */
    ExtractNews200Response,

    /**
     * The ExtractNews200ResponseImagesInner model constructor.
     * @property {module:model/ExtractNews200ResponseImagesInner}
     */
    ExtractNews200ResponseImagesInner,

    /**
     * The ExtractNews200ResponseVideosInner model constructor.
     * @property {module:model/ExtractNews200ResponseVideosInner}
     */
    ExtractNews200ResponseVideosInner,

    /**
     * The ExtractPublishDate200Response model constructor.
     * @property {module:model/ExtractPublishDate200Response}
     */
    ExtractPublishDate200Response,

    /**
     * The FindSimilarBooks200Response model constructor.
     * @property {module:model/FindSimilarBooks200Response}
     */
    FindSimilarBooks200Response,

    /**
     * The GenerateNonsenseWord200Response model constructor.
     * @property {module:model/GenerateNonsenseWord200Response}
     */
    GenerateNonsenseWord200Response,

    /**
     * The ListWordSynonyms200Response model constructor.
     * @property {module:model/ListWordSynonyms200Response}
     */
    ListWordSynonyms200Response,

    /**
     * The PluralizeWord200Response model constructor.
     * @property {module:model/PluralizeWord200Response}
     */
    PluralizeWord200Response,

    /**
     * The RandomMeme200Response model constructor.
     * @property {module:model/RandomMeme200Response}
     */
    RandomMeme200Response,

    /**
     * The RandomPoem200Response model constructor.
     * @property {module:model/RandomPoem200Response}
     */
    RandomPoem200Response,

    /**
     * The RandomQuote200Response model constructor.
     * @property {module:model/RandomQuote200Response}
     */
    RandomQuote200Response,

    /**
     * The RandomTrivia200Response model constructor.
     * @property {module:model/RandomTrivia200Response}
     */
    RandomTrivia200Response,

    /**
     * The ReadKeyValueFromStore200Response model constructor.
     * @property {module:model/ReadKeyValueFromStore200Response}
     */
    ReadKeyValueFromStore200Response,

    /**
     * The RetrievePageRank200Response model constructor.
     * @property {module:model/RetrievePageRank200Response}
     */
    RetrievePageRank200Response,

    /**
     * The RetrieveRecipeInformation200Response model constructor.
     * @property {module:model/RetrieveRecipeInformation200Response}
     */
    RetrieveRecipeInformation200Response,

    /**
     * The RetrieveRecipeInformation200ResponseCredits model constructor.
     * @property {module:model/RetrieveRecipeInformation200ResponseCredits}
     */
    RetrieveRecipeInformation200ResponseCredits,

    /**
     * The RetrieveRecipeInformation200ResponseDietaryProperties model constructor.
     * @property {module:model/RetrieveRecipeInformation200ResponseDietaryProperties}
     */
    RetrieveRecipeInformation200ResponseDietaryProperties,

    /**
     * The RetrieveRecipeInformation200ResponseIngredientsInner model constructor.
     * @property {module:model/RetrieveRecipeInformation200ResponseIngredientsInner}
     */
    RetrieveRecipeInformation200ResponseIngredientsInner,

    /**
     * The RetrieveRecipeInformation200ResponseIngredientsInnerMeasures model constructor.
     * @property {module:model/RetrieveRecipeInformation200ResponseIngredientsInnerMeasures}
     */
    RetrieveRecipeInformation200ResponseIngredientsInnerMeasures,

    /**
     * The RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric model constructor.
     * @property {module:model/RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric}
     */
    RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric,

    /**
     * The RetrieveRecipeInformation200ResponseInstructionsInner model constructor.
     * @property {module:model/RetrieveRecipeInformation200ResponseInstructionsInner}
     */
    RetrieveRecipeInformation200ResponseInstructionsInner,

    /**
     * The RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner model constructor.
     * @property {module:model/RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner}
     */
    RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner,

    /**
     * The RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner model constructor.
     * @property {module:model/RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner}
     */
    RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner,

    /**
     * The RetrieveRecipeInformation200ResponseNutrition model constructor.
     * @property {module:model/RetrieveRecipeInformation200ResponseNutrition}
     */
    RetrieveRecipeInformation200ResponseNutrition,

    /**
     * The RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown model constructor.
     * @property {module:model/RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown}
     */
    RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown,

    /**
     * The RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner model constructor.
     * @property {module:model/RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner}
     */
    RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner,

    /**
     * The RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner model constructor.
     * @property {module:model/RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner}
     */
    RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner,

    /**
     * The RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner model constructor.
     * @property {module:model/RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner}
     */
    RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner,

    /**
     * The RetrieveRecipeInformation200ResponseNutritionWeightPerServing model constructor.
     * @property {module:model/RetrieveRecipeInformation200ResponseNutritionWeightPerServing}
     */
    RetrieveRecipeInformation200ResponseNutritionWeightPerServing,

    /**
     * The RetrieveRecipeInformation200ResponseScores model constructor.
     * @property {module:model/RetrieveRecipeInformation200ResponseScores}
     */
    RetrieveRecipeInformation200ResponseScores,

    /**
     * The RetrieveRecipeInformation200ResponseTaste model constructor.
     * @property {module:model/RetrieveRecipeInformation200ResponseTaste}
     */
    RetrieveRecipeInformation200ResponseTaste,

    /**
     * The RetrieveRecipeInformation200ResponseTimes model constructor.
     * @property {module:model/RetrieveRecipeInformation200ResponseTimes}
     */
    RetrieveRecipeInformation200ResponseTimes,

    /**
     * The ScoreReadability200Response model constructor.
     * @property {module:model/ScoreReadability200Response}
     */
    ScoreReadability200Response,

    /**
     * The ScoreText200Response model constructor.
     * @property {module:model/ScoreText200Response}
     */
    ScoreText200Response,

    /**
     * The ScoreText200ResponseInterestingness model constructor.
     * @property {module:model/ScoreText200ResponseInterestingness}
     */
    ScoreText200ResponseInterestingness,

    /**
     * The ScoreText200ResponseInterestingnessSubscores model constructor.
     * @property {module:model/ScoreText200ResponseInterestingnessSubscores}
     */
    ScoreText200ResponseInterestingnessSubscores,

    /**
     * The ScoreText200ResponseReadability model constructor.
     * @property {module:model/ScoreText200ResponseReadability}
     */
    ScoreText200ResponseReadability,

    /**
     * The ScoreText200ResponseReadabilityMainscores model constructor.
     * @property {module:model/ScoreText200ResponseReadabilityMainscores}
     */
    ScoreText200ResponseReadabilityMainscores,

    /**
     * The ScoreText200ResponseReadabilitySubscores model constructor.
     * @property {module:model/ScoreText200ResponseReadabilitySubscores}
     */
    ScoreText200ResponseReadabilitySubscores,

    /**
     * The ScoreText200ResponseSkimmability model constructor.
     * @property {module:model/ScoreText200ResponseSkimmability}
     */
    ScoreText200ResponseSkimmability,

    /**
     * The ScoreText200ResponseSkimmabilityMainscores model constructor.
     * @property {module:model/ScoreText200ResponseSkimmabilityMainscores}
     */
    ScoreText200ResponseSkimmabilityMainscores,

    /**
     * The ScoreText200ResponseSkimmabilitySubscores model constructor.
     * @property {module:model/ScoreText200ResponseSkimmabilitySubscores}
     */
    ScoreText200ResponseSkimmabilitySubscores,

    /**
     * The ScoreText200ResponseStyle model constructor.
     * @property {module:model/ScoreText200ResponseStyle}
     */
    ScoreText200ResponseStyle,

    /**
     * The ScoreText200ResponseStyleSubscores model constructor.
     * @property {module:model/ScoreText200ResponseStyleSubscores}
     */
    ScoreText200ResponseStyleSubscores,

    /**
     * The SearchBooks200Response model constructor.
     * @property {module:model/SearchBooks200Response}
     */
    SearchBooks200Response,

    /**
     * The SearchBooks200ResponseBooksInner model constructor.
     * @property {module:model/SearchBooks200ResponseBooksInner}
     */
    SearchBooks200ResponseBooksInner,

    /**
     * The SearchGifs200Response model constructor.
     * @property {module:model/SearchGifs200Response}
     */
    SearchGifs200Response,

    /**
     * The SearchGifs200ResponseImagesInner model constructor.
     * @property {module:model/SearchGifs200ResponseImagesInner}
     */
    SearchGifs200ResponseImagesInner,

    /**
     * The SearchJokes200Response model constructor.
     * @property {module:model/SearchJokes200Response}
     */
    SearchJokes200Response,

    /**
     * The SearchJokes200ResponseJokesInner model constructor.
     * @property {module:model/SearchJokes200ResponseJokesInner}
     */
    SearchJokes200ResponseJokesInner,

    /**
     * The SearchMemes200Response model constructor.
     * @property {module:model/SearchMemes200Response}
     */
    SearchMemes200Response,

    /**
     * The SearchMemes200ResponseMemesInner model constructor.
     * @property {module:model/SearchMemes200ResponseMemesInner}
     */
    SearchMemes200ResponseMemesInner,

    /**
     * The SearchNews200Response model constructor.
     * @property {module:model/SearchNews200Response}
     */
    SearchNews200Response,

    /**
     * The SearchNews200ResponseNewsInner model constructor.
     * @property {module:model/SearchNews200ResponseNewsInner}
     */
    SearchNews200ResponseNewsInner,

    /**
     * The SearchRecipes200Response model constructor.
     * @property {module:model/SearchRecipes200Response}
     */
    SearchRecipes200Response,

    /**
     * The SearchRecipes200ResponseRecipesInner model constructor.
     * @property {module:model/SearchRecipes200ResponseRecipesInner}
     */
    SearchRecipes200ResponseRecipesInner,

    /**
     * The SearchRecipes200ResponseRecipesInnerNutrition model constructor.
     * @property {module:model/SearchRecipes200ResponseRecipesInnerNutrition}
     */
    SearchRecipes200ResponseRecipesInnerNutrition,

    /**
     * The SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner model constructor.
     * @property {module:model/SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner}
     */
    SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner,

    /**
     * The SearchRestaurants200Response model constructor.
     * @property {module:model/SearchRestaurants200Response}
     */
    SearchRestaurants200Response,

    /**
     * The SearchRestaurants200ResponseRestaurantsInner model constructor.
     * @property {module:model/SearchRestaurants200ResponseRestaurantsInner}
     */
    SearchRestaurants200ResponseRestaurantsInner,

    /**
     * The SearchRestaurants200ResponseRestaurantsInnerAddress model constructor.
     * @property {module:model/SearchRestaurants200ResponseRestaurantsInnerAddress}
     */
    SearchRestaurants200ResponseRestaurantsInnerAddress,

    /**
     * The SearchRestaurants200ResponseRestaurantsInnerLocalHours model constructor.
     * @property {module:model/SearchRestaurants200ResponseRestaurantsInnerLocalHours}
     */
    SearchRestaurants200ResponseRestaurantsInnerLocalHours,

    /**
     * The SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational model constructor.
     * @property {module:model/SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational}
     */
    SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational,

    /**
     * The SearchRoyaltyFreeImages200Response model constructor.
     * @property {module:model/SearchRoyaltyFreeImages200Response}
     */
    SearchRoyaltyFreeImages200Response,

    /**
     * The SearchRoyaltyFreeImages200ResponseImagesInner model constructor.
     * @property {module:model/SearchRoyaltyFreeImages200ResponseImagesInner}
     */
    SearchRoyaltyFreeImages200ResponseImagesInner,

    /**
     * The SearchRoyaltyFreeImages200ResponseImagesInnerLicense model constructor.
     * @property {module:model/SearchRoyaltyFreeImages200ResponseImagesInnerLicense}
     */
    SearchRoyaltyFreeImages200ResponseImagesInnerLicense,

    /**
     * The SearchWeb200Response model constructor.
     * @property {module:model/SearchWeb200Response}
     */
    SearchWeb200Response,

    /**
     * The SearchWeb200ResponseResultsInner model constructor.
     * @property {module:model/SearchWeb200ResponseResultsInner}
     */
    SearchWeb200ResponseResultsInner,

    /**
     * The SingularizeWord200Response model constructor.
     * @property {module:model/SingularizeWord200Response}
     */
    SingularizeWord200Response,

    /**
     * The StemText200Response model constructor.
     * @property {module:model/StemText200Response}
     */
    StemText200Response,

    /**
     * The StoreKeyValueGET200Response model constructor.
     * @property {module:model/StoreKeyValueGET200Response}
     */
    StoreKeyValueGET200Response,

    /**
     * The TagPartOfSpeech200Response model constructor.
     * @property {module:model/TagPartOfSpeech200Response}
     */
    TagPartOfSpeech200Response,

    /**
     * The TopNews200Response model constructor.
     * @property {module:model/TopNews200Response}
     */
    TopNews200Response,

    /**
     * The TopNews200ResponseTopNewsInner model constructor.
     * @property {module:model/TopNews200ResponseTopNewsInner}
     */
    TopNews200ResponseTopNewsInner,

    /**
     * The TopNews200ResponseTopNewsInnerNewsInner model constructor.
     * @property {module:model/TopNews200ResponseTopNewsInnerNewsInner}
     */
    TopNews200ResponseTopNewsInnerNewsInner,

    /**
     * The VerifyEmailAddress200Response model constructor.
     * @property {module:model/VerifyEmailAddress200Response}
     */
    VerifyEmailAddress200Response,

    /**
    * The ArtApi service constructor.
    * @property {module:api/ArtApi}
    */
    ArtApi,

    /**
    * The BooksApi service constructor.
    * @property {module:api/BooksApi}
    */
    BooksApi,

    /**
    * The FoodApi service constructor.
    * @property {module:api/FoodApi}
    */
    FoodApi,

    /**
    * The HumorApi service constructor.
    * @property {module:api/HumorApi}
    */
    HumorApi,

    /**
    * The KnowledgeApi service constructor.
    * @property {module:api/KnowledgeApi}
    */
    KnowledgeApi,

    /**
    * The MathApi service constructor.
    * @property {module:api/MathApi}
    */
    MathApi,

    /**
    * The MediaApi service constructor.
    * @property {module:api/MediaApi}
    */
    MediaApi,

    /**
    * The NewsApi service constructor.
    * @property {module:api/NewsApi}
    */
    NewsApi,

    /**
    * The StorageApi service constructor.
    * @property {module:api/StorageApi}
    */
    StorageApi,

    /**
    * The TextApi service constructor.
    * @property {module:api/TextApi}
    */
    TextApi,

    /**
    * The WebApi service constructor.
    * @property {module:api/WebApi}
    */
    WebApi
};
