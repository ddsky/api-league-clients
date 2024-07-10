import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration} from '../configuration'

import { ComputeNutrition200Response } from '../models/ComputeNutrition200Response';
import { ComputeNutrition200ResponseIngredientBreakdownInner } from '../models/ComputeNutrition200ResponseIngredientBreakdownInner';
import { ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner } from '../models/ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner';
import { ConvertUnits200Response } from '../models/ConvertUnits200Response';
import { CorrectSpelling200Response } from '../models/CorrectSpelling200Response';
import { DetectGenderByName200Response } from '../models/DetectGenderByName200Response';
import { DetectLanguage200ResponseInner } from '../models/DetectLanguage200ResponseInner';
import { DetectMainImageColor200ResponseInner } from '../models/DetectMainImageColor200ResponseInner';
import { DetectSentiment200Response } from '../models/DetectSentiment200Response';
import { DetectSentiment200ResponseDocument } from '../models/DetectSentiment200ResponseDocument';
import { DetectSentiment200ResponseSentencesInner } from '../models/DetectSentiment200ResponseSentencesInner';
import { ExtractAuthors200Response } from '../models/ExtractAuthors200Response';
import { ExtractAuthors200ResponseAuthorsInner } from '../models/ExtractAuthors200ResponseAuthorsInner';
import { ExtractContentFromAWebPage200Response } from '../models/ExtractContentFromAWebPage200Response';
import { ExtractDates200Response } from '../models/ExtractDates200Response';
import { ExtractDates200ResponseDatesInner } from '../models/ExtractDates200ResponseDatesInner';
import { ExtractEntities200Response } from '../models/ExtractEntities200Response';
import { ExtractEntities200ResponseEntitiesInner } from '../models/ExtractEntities200ResponseEntitiesInner';
import { ExtractNews200Response } from '../models/ExtractNews200Response';
import { ExtractNews200ResponseImagesInner } from '../models/ExtractNews200ResponseImagesInner';
import { ExtractNews200ResponseVideosInner } from '../models/ExtractNews200ResponseVideosInner';
import { ExtractPublishDate200Response } from '../models/ExtractPublishDate200Response';
import { FindSimilarBooks200Response } from '../models/FindSimilarBooks200Response';
import { GenerateNonsenseWord200Response } from '../models/GenerateNonsenseWord200Response';
import { ListWordSynonyms200Response } from '../models/ListWordSynonyms200Response';
import { PluralizeWord200Response } from '../models/PluralizeWord200Response';
import { RandomMeme200Response } from '../models/RandomMeme200Response';
import { RandomPoem200Response } from '../models/RandomPoem200Response';
import { RandomQuote200Response } from '../models/RandomQuote200Response';
import { RandomRiddle200Response } from '../models/RandomRiddle200Response';
import { RandomTrivia200Response } from '../models/RandomTrivia200Response';
import { ReadKeyValueFromStore200Response } from '../models/ReadKeyValueFromStore200Response';
import { RetrievePageRank200Response } from '../models/RetrievePageRank200Response';
import { RetrieveRecipeInformation200Response } from '../models/RetrieveRecipeInformation200Response';
import { RetrieveRecipeInformation200ResponseCredits } from '../models/RetrieveRecipeInformation200ResponseCredits';
import { RetrieveRecipeInformation200ResponseDietaryProperties } from '../models/RetrieveRecipeInformation200ResponseDietaryProperties';
import { RetrieveRecipeInformation200ResponseIngredientsInner } from '../models/RetrieveRecipeInformation200ResponseIngredientsInner';
import { RetrieveRecipeInformation200ResponseIngredientsInnerMeasures } from '../models/RetrieveRecipeInformation200ResponseIngredientsInnerMeasures';
import { RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric } from '../models/RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric';
import { RetrieveRecipeInformation200ResponseInstructionsInner } from '../models/RetrieveRecipeInformation200ResponseInstructionsInner';
import { RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner } from '../models/RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner';
import { RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner } from '../models/RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner';
import { RetrieveRecipeInformation200ResponseNutrition } from '../models/RetrieveRecipeInformation200ResponseNutrition';
import { RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown } from '../models/RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown';
import { RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner } from '../models/RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner';
import { RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner } from '../models/RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner';
import { RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner } from '../models/RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner';
import { RetrieveRecipeInformation200ResponseNutritionWeightPerServing } from '../models/RetrieveRecipeInformation200ResponseNutritionWeightPerServing';
import { RetrieveRecipeInformation200ResponseScores } from '../models/RetrieveRecipeInformation200ResponseScores';
import { RetrieveRecipeInformation200ResponseTaste } from '../models/RetrieveRecipeInformation200ResponseTaste';
import { RetrieveRecipeInformation200ResponseTimes } from '../models/RetrieveRecipeInformation200ResponseTimes';
import { ScoreReadability200Response } from '../models/ScoreReadability200Response';
import { ScoreText200Response } from '../models/ScoreText200Response';
import { ScoreText200ResponseInterestingness } from '../models/ScoreText200ResponseInterestingness';
import { ScoreText200ResponseInterestingnessSubscores } from '../models/ScoreText200ResponseInterestingnessSubscores';
import { ScoreText200ResponseReadability } from '../models/ScoreText200ResponseReadability';
import { ScoreText200ResponseReadabilityMainscores } from '../models/ScoreText200ResponseReadabilityMainscores';
import { ScoreText200ResponseReadabilitySubscores } from '../models/ScoreText200ResponseReadabilitySubscores';
import { ScoreText200ResponseSkimmability } from '../models/ScoreText200ResponseSkimmability';
import { ScoreText200ResponseSkimmabilityMainscores } from '../models/ScoreText200ResponseSkimmabilityMainscores';
import { ScoreText200ResponseSkimmabilitySubscores } from '../models/ScoreText200ResponseSkimmabilitySubscores';
import { ScoreText200ResponseStyle } from '../models/ScoreText200ResponseStyle';
import { ScoreText200ResponseStyleSubscores } from '../models/ScoreText200ResponseStyleSubscores';
import { SearchBooks200Response } from '../models/SearchBooks200Response';
import { SearchBooks200ResponseBooksInnerInner } from '../models/SearchBooks200ResponseBooksInnerInner';
import { SearchGifs200Response } from '../models/SearchGifs200Response';
import { SearchGifs200ResponseImagesInner } from '../models/SearchGifs200ResponseImagesInner';
import { SearchJokes200Response } from '../models/SearchJokes200Response';
import { SearchJokes200ResponseJokesInner } from '../models/SearchJokes200ResponseJokesInner';
import { SearchMemes200Response } from '../models/SearchMemes200Response';
import { SearchMemes200ResponseMemesInner } from '../models/SearchMemes200ResponseMemesInner';
import { SearchNews200Response } from '../models/SearchNews200Response';
import { SearchNews200ResponseNewsInner } from '../models/SearchNews200ResponseNewsInner';
import { SearchRecipes200Response } from '../models/SearchRecipes200Response';
import { SearchRecipes200ResponseRecipesInner } from '../models/SearchRecipes200ResponseRecipesInner';
import { SearchRecipes200ResponseRecipesInnerNutrition } from '../models/SearchRecipes200ResponseRecipesInnerNutrition';
import { SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner } from '../models/SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner';
import { SearchRestaurants200Response } from '../models/SearchRestaurants200Response';
import { SearchRestaurants200ResponseRestaurantsInner } from '../models/SearchRestaurants200ResponseRestaurantsInner';
import { SearchRestaurants200ResponseRestaurantsInnerAddress } from '../models/SearchRestaurants200ResponseRestaurantsInnerAddress';
import { SearchRestaurants200ResponseRestaurantsInnerLocalHours } from '../models/SearchRestaurants200ResponseRestaurantsInnerLocalHours';
import { SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational } from '../models/SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational';
import { SearchRoyaltyFreeImages200Response } from '../models/SearchRoyaltyFreeImages200Response';
import { SearchRoyaltyFreeImages200ResponseImagesInner } from '../models/SearchRoyaltyFreeImages200ResponseImagesInner';
import { SearchRoyaltyFreeImages200ResponseImagesInnerLicense } from '../models/SearchRoyaltyFreeImages200ResponseImagesInnerLicense';
import { SearchWeb200Response } from '../models/SearchWeb200Response';
import { SearchWeb200ResponseResultsInner } from '../models/SearchWeb200ResponseResultsInner';
import { SingularizeWord200Response } from '../models/SingularizeWord200Response';
import { StemText200Response } from '../models/StemText200Response';
import { StoreKeyValueGET200Response } from '../models/StoreKeyValueGET200Response';
import { TagPartOfSpeech200Response } from '../models/TagPartOfSpeech200Response';
import { TopNews200Response } from '../models/TopNews200Response';
import { TopNews200ResponseTopNewsInner } from '../models/TopNews200ResponseTopNewsInner';
import { TopNews200ResponseTopNewsInnerNewsInner } from '../models/TopNews200ResponseTopNewsInnerNewsInner';
import { VerifyEmailAddress200Response } from '../models/VerifyEmailAddress200Response';

import { ObservableArtApi } from "./ObservableAPI";
import { ArtApiRequestFactory, ArtApiResponseProcessor} from "../apis/ArtApi";

export interface ArtApiImageToAsciiArtByURLRequest {
    /**
     * The URL to the image.
     * @type string
     * @memberof ArtApiimageToAsciiArtByURL
     */
    url: string
    /**
     * The maximum width of the image (default 400, max. 500).
     * @type number
     * @memberof ArtApiimageToAsciiArtByURL
     */
    width?: number
    /**
     * The maximum height of the image (default 400, max. 500).
     * @type number
     * @memberof ArtApiimageToAsciiArtByURL
     */
    height?: number
}

export interface ArtApiRandomPoemRequest {
    /**
     * The minimum number of lines of the poem.
     * @type number
     * @memberof ArtApirandomPoem
     */
    minLines?: number
    /**
     * The maximum number of lines of the poem.
     * @type number
     * @memberof ArtApirandomPoem
     */
    maxLines?: number
}

export class ObjectArtApi {
    private api: ObservableArtApi

    public constructor(configuration: Configuration, requestFactory?: ArtApiRequestFactory, responseProcessor?: ArtApiResponseProcessor) {
        this.api = new ObservableArtApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
     * Image to Ascii Art by URL
     * @param param the request object
     */
    public imageToAsciiArtByURLWithHttpInfo(param: ArtApiImageToAsciiArtByURLRequest, options?: Configuration): Promise<HttpInfo<string>> {
        return this.api.imageToAsciiArtByURLWithHttpInfo(param.url, param.width, param.height,  options).toPromise();
    }

    /**
     * Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
     * Image to Ascii Art by URL
     * @param param the request object
     */
    public imageToAsciiArtByURL(param: ArtApiImageToAsciiArtByURLRequest, options?: Configuration): Promise<string> {
        return this.api.imageToAsciiArtByURL(param.url, param.width, param.height,  options).toPromise();
    }

    /**
     * Retrieve a random poem by many famous authors. You can filter poem\'s by length (number of lines).
     * Random Poem
     * @param param the request object
     */
    public randomPoemWithHttpInfo(param: ArtApiRandomPoemRequest = {}, options?: Configuration): Promise<HttpInfo<RandomPoem200Response>> {
        return this.api.randomPoemWithHttpInfo(param.minLines, param.maxLines,  options).toPromise();
    }

    /**
     * Retrieve a random poem by many famous authors. You can filter poem\'s by length (number of lines).
     * Random Poem
     * @param param the request object
     */
    public randomPoem(param: ArtApiRandomPoemRequest = {}, options?: Configuration): Promise<RandomPoem200Response> {
        return this.api.randomPoem(param.minLines, param.maxLines,  options).toPromise();
    }

}

import { ObservableBooksApi } from "./ObservableAPI";
import { BooksApiRequestFactory, BooksApiResponseProcessor} from "../apis/BooksApi";

export interface BooksApiFindSimilarBooksRequest {
    /**
     * The id of the book to which similar books should be found.
     * @type number
     * @memberof BooksApifindSimilarBooks
     */
    id: number
    /**
     * The number of similar books to return in range [1,100]
     * @type number
     * @memberof BooksApifindSimilarBooks
     */
    number?: number
}

export interface BooksApiSearchBooksRequest {
    /**
     * The search query.
     * @type string
     * @memberof BooksApisearchBooks
     */
    query?: string
    /**
     * The books must have been published after this year.
     * @type number
     * @memberof BooksApisearchBooks
     */
    earliestPublishYear?: number
    /**
     * The books must have been published before this year.
     * @type number
     * @memberof BooksApisearchBooks
     */
    latestPublishYear?: number
    /**
     * The minimum rating the book must have gotten in the interval [0,1].
     * @type number
     * @memberof BooksApisearchBooks
     */
    minRating?: number
    /**
     * The maximum rating the book must have gotten in the interval [0,1].
     * @type number
     * @memberof BooksApisearchBooks
     */
    maxRating?: number
    /**
     * A comma-separated list of genres. Only books from any of the given genres will be returned.
     * @type string
     * @memberof BooksApisearchBooks
     */
    genres?: string
    /**
     * A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can\&#39;t disambiguate.
     * @type string
     * @memberof BooksApisearchBooks
     */
    authors?: string
    /**
     * Only the book matching the ISBN-13 will be returned
     * @type string
     * @memberof BooksApisearchBooks
     */
    isbn?: string
    /**
     * Only the book matching the OCLC will be returned
     * @type string
     * @memberof BooksApisearchBooks
     */
    oclc?: string
    /**
     * The sorting criteria (publish-date or rating).
     * @type string
     * @memberof BooksApisearchBooks
     */
    sort?: string
    /**
     * Whether to sort ascending or descending (ASC or DESC).
     * @type string
     * @memberof BooksApisearchBooks
     */
    sortDirection?: string
    /**
     * Whether to group similar editions of the same book.
     * @type boolean
     * @memberof BooksApisearchBooks
     */
    groupResults?: boolean
    /**
     * The number of books to skip in range [0,1000]
     * @type number
     * @memberof BooksApisearchBooks
     */
    offset?: number
    /**
     * The number of books to return in range [1,100]
     * @type number
     * @memberof BooksApisearchBooks
     */
    number?: number
}

export class ObjectBooksApi {
    private api: ObservableBooksApi

    public constructor(configuration: Configuration, requestFactory?: BooksApiRequestFactory, responseProcessor?: BooksApiResponseProcessor) {
        this.api = new ObservableBooksApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
     * Find Similar Books
     * @param param the request object
     */
    public findSimilarBooksWithHttpInfo(param: BooksApiFindSimilarBooksRequest, options?: Configuration): Promise<HttpInfo<FindSimilarBooks200Response>> {
        return this.api.findSimilarBooksWithHttpInfo(param.id, param.number,  options).toPromise();
    }

    /**
     * Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
     * Find Similar Books
     * @param param the request object
     */
    public findSimilarBooks(param: BooksApiFindSimilarBooksRequest, options?: Configuration): Promise<FindSimilarBooks200Response> {
        return this.api.findSimilarBooks(param.id, param.number,  options).toPromise();
    }

    /**
     * Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.
     * Search Books
     * @param param the request object
     */
    public searchBooksWithHttpInfo(param: BooksApiSearchBooksRequest = {}, options?: Configuration): Promise<HttpInfo<SearchBooks200Response>> {
        return this.api.searchBooksWithHttpInfo(param.query, param.earliestPublishYear, param.latestPublishYear, param.minRating, param.maxRating, param.genres, param.authors, param.isbn, param.oclc, param.sort, param.sortDirection, param.groupResults, param.offset, param.number,  options).toPromise();
    }

    /**
     * Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.
     * Search Books
     * @param param the request object
     */
    public searchBooks(param: BooksApiSearchBooksRequest = {}, options?: Configuration): Promise<SearchBooks200Response> {
        return this.api.searchBooks(param.query, param.earliestPublishYear, param.latestPublishYear, param.minRating, param.maxRating, param.genres, param.authors, param.isbn, param.oclc, param.sort, param.sortDirection, param.groupResults, param.offset, param.number,  options).toPromise();
    }

}

import { ObservableFoodApi } from "./ObservableAPI";
import { FoodApiRequestFactory, FoodApiResponseProcessor} from "../apis/FoodApi";

export interface FoodApiComputeNutritionRequest {
    /**
     * A comma-separated list of the ingredients of the recipe.
     * @type string
     * @memberof FoodApicomputeNutrition
     */
    ingredients: string
    /**
     * The number of servings the ingredients make. Nutrition is computed per serving.
     * @type number
     * @memberof FoodApicomputeNutrition
     */
    servings?: number
    /**
     * If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true.
     * @type boolean
     * @memberof FoodApicomputeNutrition
     */
    reduceOils?: boolean
}

export interface FoodApiRetrieveRecipeInformationRequest {
    /**
     * The id of the recipe to retrieve.
     * @type number
     * @memberof FoodApiretrieveRecipeInformation
     */
    id: number
    /**
     * Whether to pair a wine to the recipe.
     * @type boolean
     * @memberof FoodApiretrieveRecipeInformation
     */
    addWinePairing?: boolean
}

export interface FoodApiSearchRecipesRequest {
    /**
     * The search query.
     * @type string
     * @memberof FoodApisearchRecipes
     */
    query?: string
    /**
     * The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as \&#39;OR\&#39;).
     * @type string
     * @memberof FoodApisearchRecipes
     */
    cuisines?: string
    /**
     * The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as \&#39;AND\&#39;).
     * @type string
     * @memberof FoodApisearchRecipes
     */
    excludeCuisines?: string
    /**
     * The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink.
     * @type string
     * @memberof FoodApisearchRecipes
     */
    mealType?: string
    /**
     * The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian.
     * @type string
     * @memberof FoodApisearchRecipes
     */
    diet?: string
    /**
     * A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered.
     * @type string
     * @memberof FoodApisearchRecipes
     */
    intolerances?: string
    /**
     * The equipment required. Multiple values will be interpreted as \&#39;OR\&#39;.
     * @type string
     * @memberof FoodApisearchRecipes
     */
    equipment?: string
    /**
     * A comma-separated list of ingredients that should/must be used in the recipes.
     * @type string
     * @memberof FoodApisearchRecipes
     */
    includeIngredients?: string
    /**
     * A comma-separated list of ingredients or ingredient types that the recipes must not contain.
     * @type string
     * @memberof FoodApisearchRecipes
     */
    excludeIngredients?: string
    /**
     * Add information about the ingredients and whether they are used or missing in relation to the query.
     * @type boolean
     * @memberof FoodApisearchRecipes
     */
    fillIngredients?: boolean
    /**
     * If set to true, you get more information about the recipes returned.
     * @type boolean
     * @memberof FoodApisearchRecipes
     */
    addRecipeInformation?: boolean
    /**
     * The maximum time in minutes it should take to prepare and cook the recipe.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxTime?: number
    /**
     * The minimum amount of servings the recipe is for.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minServings?: number
    /**
     * The maximum amount of servings the recipe is for.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxServings?: number
    /**
     * The minimum amount of calories the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minCalories?: number
    /**
     * The maximum amount of calories the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxCalories?: number
    /**
     * The minimum amount of carbohydrates in grams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minCarbs?: number
    /**
     * The maximum amount of carbohydrates in grams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxCarbs?: number
    /**
     * The minimum amount of protein in grams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minProtein?: number
    /**
     * The maximum amount of protein in grams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxProtein?: number
    /**
     * The minimum amount of fat in grams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minFat?: number
    /**
     * The maximum amount of fat in grams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxFat?: number
    /**
     * The minimum amount of sugar in grams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minSugar?: number
    /**
     * The maximum amount of sugar in grams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxSugar?: number
    /**
     * The minimum amount of fiber in grams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minFiber?: number
    /**
     * The maximum amount of fiber in grams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxFiber?: number
    /**
     * The minimum amount of folate in micrograms the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minFolate?: number
    /**
     * The maximum amount of folate in micrograms the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxFolate?: number
    /**
     * The minimum amount of folic acid in micrograms the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minFolicAcid?: number
    /**
     * The maximum amount of folic acid in micrograms the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxFolicAcid?: number
    /**
     * The minimum amount of iodine in micrograms the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minIodine?: number
    /**
     * The maximum amount of iodine in micrograms the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxIodine?: number
    /**
     * The minimum amount of iron in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minIron?: number
    /**
     * The maximum amount of iron in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxIron?: number
    /**
     * The minimum amount of zinc in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minZinc?: number
    /**
     * The maximum amount of zinc in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxZinc?: number
    /**
     * The minimum amount of magnesium in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minMagnesium?: number
    /**
     * The maximum amount of magnesium in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxMagnesium?: number
    /**
     * The minimum amount of manganese in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minManganese?: number
    /**
     * The maximum amount of manganese in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxManganese?: number
    /**
     * The minimum amount of phosphorus in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minPhosphorus?: number
    /**
     * The maximum amount of phosphorus in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxPhosphorus?: number
    /**
     * The minimum amount of potassium in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minPotassium?: number
    /**
     * The maximum amount of potassium in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxPotassium?: number
    /**
     * The minimum amount of sodium in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minSodium?: number
    /**
     * The maximum amount of sodium in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxSodium?: number
    /**
     * The minimum amount of selenium in micrograms the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minSelenium?: number
    /**
     * The maximum amount of selenium in micrograms the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxSelenium?: number
    /**
     * The minimum amount of copper in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minCopper?: number
    /**
     * The maximum amount of copper in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxCopper?: number
    /**
     * The minimum amount of calcium in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minCalcium?: number
    /**
     * The maximum amount of calcium in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxCalcium?: number
    /**
     * The minimum amount of choline in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minCholine?: number
    /**
     * The maximum amount of choline in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxCholine?: number
    /**
     * The minimum amount of cholesterol in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minCholesterol?: number
    /**
     * The maximum amount of cholesterol in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxCholesterol?: number
    /**
     * The minimum amount of fluoride in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minFluoride?: number
    /**
     * The maximum amount of fluoride in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxFluoride?: number
    /**
     * The minimum amount of alcohol in grams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minAlcohol?: number
    /**
     * The maximum amount of alcohol in grams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxAlcohol?: number
    /**
     * The minimum amount of caffeine in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minCaffeine?: number
    /**
     * The maximum amount of caffeine in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxCaffeine?: number
    /**
     * The minimum amount of saturated fat in grams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minSaturatedFat?: number
    /**
     * The maximum amount of saturated fat in grams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxSaturatedFat?: number
    /**
     * The minimum amount of Vitamin A in IU the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minVitaminA?: number
    /**
     * The maximum amount of Vitamin A in IU the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxVitaminA?: number
    /**
     * The minimum amount of Vitamin C in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minVitaminC?: number
    /**
     * The maximum amount of Vitamin C in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxVitaminC?: number
    /**
     * The minimum amount of Vitamin D in micrograms the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minVitaminD?: number
    /**
     * The maximum amount of Vitamin D in micrograms the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxVitaminD?: number
    /**
     * The minimum amount of Vitamin E in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minVitaminE?: number
    /**
     * The maximum amount of Vitamin E in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxVitaminE?: number
    /**
     * The minimum amount of Vitamin K in micrograms the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minVitaminK?: number
    /**
     * The maximum amount of Vitamin K in micrograms the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxVitaminK?: number
    /**
     * The minimum amount of Vitamin B1 in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minVitaminB1?: number
    /**
     * The maximum amount of Vitamin B1 in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxVitaminB1?: number
    /**
     * The minimum amount of Vitamin B2 in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minVitaminB2?: number
    /**
     * The maximum amount of Vitamin B2 in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxVitaminB2?: number
    /**
     * The minimum amount of Vitamin B3 in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minVitaminB3?: number
    /**
     * The maximum amount of Vitamin B3 in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxVitaminB3?: number
    /**
     * The minimum amount of Vitamin B5 in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minVitaminB5?: number
    /**
     * The maximum amount of Vitamin B5 in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxVitaminB5?: number
    /**
     * The minimum amount of Vitamin B6 in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minVitaminB6?: number
    /**
     * The maximum amount of Vitamin B6 in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxVitaminB6?: number
    /**
     * The minimum amount of Vitamin B12 in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    minVitaminB12?: number
    /**
     * The maximum amount of Vitamin B12 in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    maxVitaminB12?: number
    /**
     * The strategy to sort recipes by. See a full list of supported sorting options.
     * @type string
     * @memberof FoodApisearchRecipes
     */
    sort?: string
    /**
     * Whether to sort ascending or descending (ASC or DESC).
     * @type string
     * @memberof FoodApisearchRecipes
     */
    sortDirection?: string
    /**
     * The number of recipes to skip, between 0 and 900.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    offset?: number
    /**
     * The number of recipes, between 1 and 100.
     * @type number
     * @memberof FoodApisearchRecipes
     */
    number?: number
}

export interface FoodApiSearchRestaurantsRequest {
    /**
     * The latitude to search around.
     * @type number
     * @memberof FoodApisearchRestaurants
     */
    lat: number
    /**
     * The longitude to search around.
     * @type number
     * @memberof FoodApisearchRestaurants
     */
    lon: number
    /**
     * The search query.
     * @type string
     * @memberof FoodApisearchRestaurants
     */
    query?: string
    /**
     * The maximum distance of the restaurant in miles around the given location.
     * @type number
     * @memberof FoodApisearchRestaurants
     */
    distance?: number
    /**
     * The budget in USD for the meal.
     * @type number
     * @memberof FoodApisearchRestaurants
     */
    budget?: number
    /**
     * The minimum rating of the restaurants in range [0,5].
     * @type number
     * @memberof FoodApisearchRestaurants
     */
    minRating?: number
    /**
     * The cuisine that the restaurants should support.
     * @type string
     * @memberof FoodApisearchRestaurants
     */
    cuisine?: string
    /**
     * Whether the restaurants have to be open now.
     * @type boolean
     * @memberof FoodApisearchRestaurants
     */
    isOpen?: boolean
    /**
     * The page of the results.
     * @type number
     * @memberof FoodApisearchRestaurants
     */
    page?: number
    /**
     * The sort parameter, one of: cheapest, fastest, rating, distance or relevance.
     * @type string
     * @memberof FoodApisearchRestaurants
     */
    sort?: string
}

export class ObjectFoodApi {
    private api: ObservableFoodApi

    public constructor(configuration: Configuration, requestFactory?: FoodApiRequestFactory, responseProcessor?: FoodApiResponseProcessor) {
        this.api = new ObservableFoodApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.
     * Compute Nutrition
     * @param param the request object
     */
    public computeNutritionWithHttpInfo(param: FoodApiComputeNutritionRequest, options?: Configuration): Promise<HttpInfo<ComputeNutrition200Response>> {
        return this.api.computeNutritionWithHttpInfo(param.ingredients, param.servings, param.reduceOils,  options).toPromise();
    }

    /**
     * Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.
     * Compute Nutrition
     * @param param the request object
     */
    public computeNutrition(param: FoodApiComputeNutritionRequest, options?: Configuration): Promise<ComputeNutrition200Response> {
        return this.api.computeNutrition(param.ingredients, param.servings, param.reduceOils,  options).toPromise();
    }

    /**
     * Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.
     * Retrieve Recipe Information
     * @param param the request object
     */
    public retrieveRecipeInformationWithHttpInfo(param: FoodApiRetrieveRecipeInformationRequest, options?: Configuration): Promise<HttpInfo<RetrieveRecipeInformation200Response>> {
        return this.api.retrieveRecipeInformationWithHttpInfo(param.id, param.addWinePairing,  options).toPromise();
    }

    /**
     * Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.
     * Retrieve Recipe Information
     * @param param the request object
     */
    public retrieveRecipeInformation(param: FoodApiRetrieveRecipeInformationRequest, options?: Configuration): Promise<RetrieveRecipeInformation200Response> {
        return this.api.retrieveRecipeInformation(param.id, param.addWinePairing,  options).toPromise();
    }

    /**
     * Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.
     * Search Recipes
     * @param param the request object
     */
    public searchRecipesWithHttpInfo(param: FoodApiSearchRecipesRequest = {}, options?: Configuration): Promise<HttpInfo<SearchRecipes200Response>> {
        return this.api.searchRecipesWithHttpInfo(param.query, param.cuisines, param.excludeCuisines, param.mealType, param.diet, param.intolerances, param.equipment, param.includeIngredients, param.excludeIngredients, param.fillIngredients, param.addRecipeInformation, param.maxTime, param.minServings, param.maxServings, param.minCalories, param.maxCalories, param.minCarbs, param.maxCarbs, param.minProtein, param.maxProtein, param.minFat, param.maxFat, param.minSugar, param.maxSugar, param.minFiber, param.maxFiber, param.minFolate, param.maxFolate, param.minFolicAcid, param.maxFolicAcid, param.minIodine, param.maxIodine, param.minIron, param.maxIron, param.minZinc, param.maxZinc, param.minMagnesium, param.maxMagnesium, param.minManganese, param.maxManganese, param.minPhosphorus, param.maxPhosphorus, param.minPotassium, param.maxPotassium, param.minSodium, param.maxSodium, param.minSelenium, param.maxSelenium, param.minCopper, param.maxCopper, param.minCalcium, param.maxCalcium, param.minCholine, param.maxCholine, param.minCholesterol, param.maxCholesterol, param.minFluoride, param.maxFluoride, param.minAlcohol, param.maxAlcohol, param.minCaffeine, param.maxCaffeine, param.minSaturatedFat, param.maxSaturatedFat, param.minVitaminA, param.maxVitaminA, param.minVitaminC, param.maxVitaminC, param.minVitaminD, param.maxVitaminD, param.minVitaminE, param.maxVitaminE, param.minVitaminK, param.maxVitaminK, param.minVitaminB1, param.maxVitaminB1, param.minVitaminB2, param.maxVitaminB2, param.minVitaminB3, param.maxVitaminB3, param.minVitaminB5, param.maxVitaminB5, param.minVitaminB6, param.maxVitaminB6, param.minVitaminB12, param.maxVitaminB12, param.sort, param.sortDirection, param.offset, param.number,  options).toPromise();
    }

    /**
     * Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.
     * Search Recipes
     * @param param the request object
     */
    public searchRecipes(param: FoodApiSearchRecipesRequest = {}, options?: Configuration): Promise<SearchRecipes200Response> {
        return this.api.searchRecipes(param.query, param.cuisines, param.excludeCuisines, param.mealType, param.diet, param.intolerances, param.equipment, param.includeIngredients, param.excludeIngredients, param.fillIngredients, param.addRecipeInformation, param.maxTime, param.minServings, param.maxServings, param.minCalories, param.maxCalories, param.minCarbs, param.maxCarbs, param.minProtein, param.maxProtein, param.minFat, param.maxFat, param.minSugar, param.maxSugar, param.minFiber, param.maxFiber, param.minFolate, param.maxFolate, param.minFolicAcid, param.maxFolicAcid, param.minIodine, param.maxIodine, param.minIron, param.maxIron, param.minZinc, param.maxZinc, param.minMagnesium, param.maxMagnesium, param.minManganese, param.maxManganese, param.minPhosphorus, param.maxPhosphorus, param.minPotassium, param.maxPotassium, param.minSodium, param.maxSodium, param.minSelenium, param.maxSelenium, param.minCopper, param.maxCopper, param.minCalcium, param.maxCalcium, param.minCholine, param.maxCholine, param.minCholesterol, param.maxCholesterol, param.minFluoride, param.maxFluoride, param.minAlcohol, param.maxAlcohol, param.minCaffeine, param.maxCaffeine, param.minSaturatedFat, param.maxSaturatedFat, param.minVitaminA, param.maxVitaminA, param.minVitaminC, param.maxVitaminC, param.minVitaminD, param.maxVitaminD, param.minVitaminE, param.maxVitaminE, param.minVitaminK, param.maxVitaminK, param.minVitaminB1, param.maxVitaminB1, param.minVitaminB2, param.maxVitaminB2, param.minVitaminB3, param.maxVitaminB3, param.minVitaminB5, param.maxVitaminB5, param.minVitaminB6, param.maxVitaminB6, param.minVitaminB12, param.maxVitaminB12, param.sort, param.sortDirection, param.offset, param.number,  options).toPromise();
    }

    /**
     * Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
     * Search Restaurants
     * @param param the request object
     */
    public searchRestaurantsWithHttpInfo(param: FoodApiSearchRestaurantsRequest, options?: Configuration): Promise<HttpInfo<SearchRestaurants200Response>> {
        return this.api.searchRestaurantsWithHttpInfo(param.lat, param.lon, param.query, param.distance, param.budget, param.minRating, param.cuisine, param.isOpen, param.page, param.sort,  options).toPromise();
    }

    /**
     * Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
     * Search Restaurants
     * @param param the request object
     */
    public searchRestaurants(param: FoodApiSearchRestaurantsRequest, options?: Configuration): Promise<SearchRestaurants200Response> {
        return this.api.searchRestaurants(param.lat, param.lon, param.query, param.distance, param.budget, param.minRating, param.cuisine, param.isOpen, param.page, param.sort,  options).toPromise();
    }

}

import { ObservableHumorApi } from "./ObservableAPI";
import { HumorApiRequestFactory, HumorApiResponseProcessor} from "../apis/HumorApi";

export interface HumorApiGenerateNonsenseWordRequest {
}

export interface HumorApiRandomJokeRequest {
    /**
     * A comma-separated list of tags the jokes should have.
     * @type string
     * @memberof HumorApirandomJoke
     */
    includeTags?: string
    /**
     * A comma-separated list of tags the jokes must not have.
     * @type string
     * @memberof HumorApirandomJoke
     */
    excludeTags?: string
    /**
     * The minimum rating in range [0.0,1.0] of the jokes.
     * @type number
     * @memberof HumorApirandomJoke
     */
    minRating?: number
    /**
     * The maximum length of the joke in letters.
     * @type number
     * @memberof HumorApirandomJoke
     */
    maxLength?: number
}

export interface HumorApiRandomMemeRequest {
    /**
     * A comma-separated list of words that must occur in the meme.
     * @type string
     * @memberof HumorApirandomMeme
     */
    keywords?: string
    /**
     * Whether the keywords must occur in the image.
     * @type boolean
     * @memberof HumorApirandomMeme
     */
    keywordsInImage?: boolean
    /**
     * The media type (either \&#39;image\&#39;, \&#39;video\&#39; or even specific format such as \&#39;jpg\&#39;, \&#39;png\&#39;, or \&#39;gif\&#39;).
     * @type string
     * @memberof HumorApirandomMeme
     */
    mediaType?: string
    /**
     * The minimum rating in range [0.0,1.0] of the meme.
     * @type number
     * @memberof HumorApirandomMeme
     */
    minRating?: number
    /**
     * The maximum age of the meme in days.
     * @type number
     * @memberof HumorApirandomMeme
     */
    maxAgeDays?: number
}

export interface HumorApiSearchGifsRequest {
    /**
     * The search query.
     * @type string
     * @memberof HumorApisearchGifs
     */
    query: string
    /**
     * The number of gifs to return in range [1,10]
     * @type number
     * @memberof HumorApisearchGifs
     */
    number?: number
}

export interface HumorApiSearchJokesRequest {
    /**
     * A comma-separated list of words that must occur in the joke.
     * @type string
     * @memberof HumorApisearchJokes
     */
    keywords?: string
    /**
     * A comma-separated list of tags the jokes should have.
     * @type string
     * @memberof HumorApisearchJokes
     */
    includeTags?: string
    /**
     * A comma-separated list of tags the jokes must not have.
     * @type string
     * @memberof HumorApisearchJokes
     */
    excludeTags?: string
    /**
     * The minimum rating in range [0.0,1.0] of the jokes.
     * @type number
     * @memberof HumorApisearchJokes
     */
    minRating?: number
    /**
     * The maximum length of the joke in letters.
     * @type number
     * @memberof HumorApisearchJokes
     */
    maxLength?: number
    /**
     * The number of jokes to skip, between 0 and 1000.
     * @type number
     * @memberof HumorApisearchJokes
     */
    offset?: number
    /**
     * The number of jokes, between 1 and 10.
     * @type number
     * @memberof HumorApisearchJokes
     */
    number?: number
}

export interface HumorApiSearchMemesRequest {
    /**
     * A comma-separated list of words that must occur in the meme.
     * @type string
     * @memberof HumorApisearchMemes
     */
    keywords?: string
    /**
     * Whether the keywords must occur in the image.
     * @type boolean
     * @memberof HumorApisearchMemes
     */
    keywordsInImage?: boolean
    /**
     * The media type (either \&#39;image\&#39;, \&#39;video\&#39; or even specific format such as \&#39;jpg\&#39;, \&#39;png\&#39;, or \&#39;gif\&#39;).
     * @type string
     * @memberof HumorApisearchMemes
     */
    mediaType?: string
    /**
     * The minimum rating in range [0.0,1.0] of the meme.
     * @type number
     * @memberof HumorApisearchMemes
     */
    minRating?: number
    /**
     * The maximum age of the meme in days.
     * @type number
     * @memberof HumorApisearchMemes
     */
    maxAgeDays?: number
    /**
     * The number of memes to skip, between 0 and 1000.
     * @type number
     * @memberof HumorApisearchMemes
     */
    offset?: number
    /**
     * The number of memes, between 1 and 10.
     * @type number
     * @memberof HumorApisearchMemes
     */
    number?: number
}

export class ObjectHumorApi {
    private api: ObservableHumorApi

    public constructor(configuration: Configuration, requestFactory?: HumorApiRequestFactory, responseProcessor?: HumorApiResponseProcessor) {
        this.api = new ObservableHumorApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
     * Generate Nonsense Word
     * @param param the request object
     */
    public generateNonsenseWordWithHttpInfo(param: HumorApiGenerateNonsenseWordRequest = {}, options?: Configuration): Promise<HttpInfo<GenerateNonsenseWord200Response>> {
        return this.api.generateNonsenseWordWithHttpInfo( options).toPromise();
    }

    /**
     * Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
     * Generate Nonsense Word
     * @param param the request object
     */
    public generateNonsenseWord(param: HumorApiGenerateNonsenseWordRequest = {}, options?: Configuration): Promise<GenerateNonsenseWord200Response> {
        return this.api.generateNonsenseWord( options).toPromise();
    }

    /**
     * This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
     * Random Joke
     * @param param the request object
     */
    public randomJokeWithHttpInfo(param: HumorApiRandomJokeRequest = {}, options?: Configuration): Promise<HttpInfo<SearchJokes200ResponseJokesInner>> {
        return this.api.randomJokeWithHttpInfo(param.includeTags, param.excludeTags, param.minRating, param.maxLength,  options).toPromise();
    }

    /**
     * This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
     * Random Joke
     * @param param the request object
     */
    public randomJoke(param: HumorApiRandomJokeRequest = {}, options?: Configuration): Promise<SearchJokes200ResponseJokesInner> {
        return this.api.randomJoke(param.includeTags, param.excludeTags, param.minRating, param.maxLength,  options).toPromise();
    }

    /**
     * Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
     * Random Meme
     * @param param the request object
     */
    public randomMemeWithHttpInfo(param: HumorApiRandomMemeRequest = {}, options?: Configuration): Promise<HttpInfo<RandomMeme200Response>> {
        return this.api.randomMemeWithHttpInfo(param.keywords, param.keywordsInImage, param.mediaType, param.minRating, param.maxAgeDays,  options).toPromise();
    }

    /**
     * Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
     * Random Meme
     * @param param the request object
     */
    public randomMeme(param: HumorApiRandomMemeRequest = {}, options?: Configuration): Promise<RandomMeme200Response> {
        return this.api.randomMeme(param.keywords, param.keywordsInImage, param.mediaType, param.minRating, param.maxAgeDays,  options).toPromise();
    }

    /**
     * Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
     * Search Gifs
     * @param param the request object
     */
    public searchGifsWithHttpInfo(param: HumorApiSearchGifsRequest, options?: Configuration): Promise<HttpInfo<SearchGifs200Response>> {
        return this.api.searchGifsWithHttpInfo(param.query, param.number,  options).toPromise();
    }

    /**
     * Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
     * Search Gifs
     * @param param the request object
     */
    public searchGifs(param: HumorApiSearchGifsRequest, options?: Configuration): Promise<SearchGifs200Response> {
        return this.api.searchGifs(param.query, param.number,  options).toPromise();
    }

    /**
     * With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
     * Search Jokes
     * @param param the request object
     */
    public searchJokesWithHttpInfo(param: HumorApiSearchJokesRequest = {}, options?: Configuration): Promise<HttpInfo<SearchJokes200Response>> {
        return this.api.searchJokesWithHttpInfo(param.keywords, param.includeTags, param.excludeTags, param.minRating, param.maxLength, param.offset, param.number,  options).toPromise();
    }

    /**
     * With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
     * Search Jokes
     * @param param the request object
     */
    public searchJokes(param: HumorApiSearchJokesRequest = {}, options?: Configuration): Promise<SearchJokes200Response> {
        return this.api.searchJokes(param.keywords, param.includeTags, param.excludeTags, param.minRating, param.maxLength, param.offset, param.number,  options).toPromise();
    }

    /**
     * With over 200,000 memes, you\'ll surely find something funny. You can even search for text within memes and filter by user ratings.
     * Search Memes
     * @param param the request object
     */
    public searchMemesWithHttpInfo(param: HumorApiSearchMemesRequest = {}, options?: Configuration): Promise<HttpInfo<SearchMemes200Response>> {
        return this.api.searchMemesWithHttpInfo(param.keywords, param.keywordsInImage, param.mediaType, param.minRating, param.maxAgeDays, param.offset, param.number,  options).toPromise();
    }

    /**
     * With over 200,000 memes, you\'ll surely find something funny. You can even search for text within memes and filter by user ratings.
     * Search Memes
     * @param param the request object
     */
    public searchMemes(param: HumorApiSearchMemesRequest = {}, options?: Configuration): Promise<SearchMemes200Response> {
        return this.api.searchMemes(param.keywords, param.keywordsInImage, param.mediaType, param.minRating, param.maxAgeDays, param.offset, param.number,  options).toPromise();
    }

}

import { ObservableKnowledgeApi } from "./ObservableAPI";
import { KnowledgeApiRequestFactory, KnowledgeApiResponseProcessor} from "../apis/KnowledgeApi";

export interface KnowledgeApiRandomQuoteRequest {
    /**
     * The minimum length of the quote in letters.
     * @type number
     * @memberof KnowledgeApirandomQuote
     */
    minLength?: number
    /**
     * The maximum length of the quote in letters.
     * @type number
     * @memberof KnowledgeApirandomQuote
     */
    maxLength?: number
}

export interface KnowledgeApiRandomRiddleRequest {
    /**
     * The difficulty of the riddle, either \&quot;easy\&quot;, \&quot;medium\&quot;, or \&quot;hard\&quot;.
     * @type string
     * @memberof KnowledgeApirandomRiddle
     */
    difficulty?: string
}

export interface KnowledgeApiRandomTriviaRequest {
    /**
     * The maximum length of the trivia in letters.
     * @type number
     * @memberof KnowledgeApirandomTrivia
     */
    maxLength?: number
}

export class ObjectKnowledgeApi {
    private api: ObservableKnowledgeApi

    public constructor(configuration: Configuration, requestFactory?: KnowledgeApiRequestFactory, responseProcessor?: KnowledgeApiResponseProcessor) {
        this.api = new ObservableKnowledgeApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.
     * Random Quote
     * @param param the request object
     */
    public randomQuoteWithHttpInfo(param: KnowledgeApiRandomQuoteRequest = {}, options?: Configuration): Promise<HttpInfo<RandomQuote200Response>> {
        return this.api.randomQuoteWithHttpInfo(param.minLength, param.maxLength,  options).toPromise();
    }

    /**
     * This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.
     * Random Quote
     * @param param the request object
     */
    public randomQuote(param: KnowledgeApiRandomQuoteRequest = {}, options?: Configuration): Promise<RandomQuote200Response> {
        return this.api.randomQuote(param.minLength, param.maxLength,  options).toPromise();
    }

    /**
     * The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.
     * Random Riddle
     * @param param the request object
     */
    public randomRiddleWithHttpInfo(param: KnowledgeApiRandomRiddleRequest = {}, options?: Configuration): Promise<HttpInfo<RandomRiddle200Response>> {
        return this.api.randomRiddleWithHttpInfo(param.difficulty,  options).toPromise();
    }

    /**
     * The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.
     * Random Riddle
     * @param param the request object
     */
    public randomRiddle(param: KnowledgeApiRandomRiddleRequest = {}, options?: Configuration): Promise<RandomRiddle200Response> {
        return this.api.randomRiddle(param.difficulty,  options).toPromise();
    }

    /**
     * This endpoint returns a random piece of trivia.
     * Random Trivia
     * @param param the request object
     */
    public randomTriviaWithHttpInfo(param: KnowledgeApiRandomTriviaRequest = {}, options?: Configuration): Promise<HttpInfo<RandomTrivia200Response>> {
        return this.api.randomTriviaWithHttpInfo(param.maxLength,  options).toPromise();
    }

    /**
     * This endpoint returns a random piece of trivia.
     * Random Trivia
     * @param param the request object
     */
    public randomTrivia(param: KnowledgeApiRandomTriviaRequest = {}, options?: Configuration): Promise<RandomTrivia200Response> {
        return this.api.randomTrivia(param.maxLength,  options).toPromise();
    }

}

import { ObservableMathApi } from "./ObservableAPI";
import { MathApiRequestFactory, MathApiResponseProcessor} from "../apis/MathApi";

export interface MathApiConvertUnitsRequest {
    /**
     * The source amount.
     * @type number
     * @memberof MathApiconvertUnits
     */
    sourceAmount: number
    /**
     * The source unit.
     * @type string
     * @memberof MathApiconvertUnits
     */
    sourceUnit: string
    /**
     * The unit to which should be converted.
     * @type string
     * @memberof MathApiconvertUnits
     */
    targetUnit: string
    /**
     * An optional food name. For converting foods the food is relevant as they have different densities.
     * @type string
     * @memberof MathApiconvertUnits
     */
    foodName?: string
}

export class ObjectMathApi {
    private api: ObservableMathApi

    public constructor(configuration: Configuration, requestFactory?: MathApiRequestFactory, responseProcessor?: MathApiResponseProcessor) {
        this.api = new ObservableMathApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Convert units from one to another. The API returns the amount and the unit of the target unit.
     * Convert Units
     * @param param the request object
     */
    public convertUnitsWithHttpInfo(param: MathApiConvertUnitsRequest, options?: Configuration): Promise<HttpInfo<ConvertUnits200Response>> {
        return this.api.convertUnitsWithHttpInfo(param.sourceAmount, param.sourceUnit, param.targetUnit, param.foodName,  options).toPromise();
    }

    /**
     * Convert units from one to another. The API returns the amount and the unit of the target unit.
     * Convert Units
     * @param param the request object
     */
    public convertUnits(param: MathApiConvertUnitsRequest, options?: Configuration): Promise<ConvertUnits200Response> {
        return this.api.convertUnits(param.sourceAmount, param.sourceUnit, param.targetUnit, param.foodName,  options).toPromise();
    }

}

import { ObservableMediaApi } from "./ObservableAPI";
import { MediaApiRequestFactory, MediaApiResponseProcessor} from "../apis/MediaApi";

export interface MediaApiDetectMainImageColorRequest {
    /**
     * The url of the image for which the colors should be detected.
     * @type string
     * @memberof MediaApidetectMainImageColor
     */
    url: string
}

export interface MediaApiRescaleImageRequest {
    /**
     * The url of the image to be rescaled.
     * @type string
     * @memberof MediaApirescaleImage
     */
    url: string
    /**
     * The desired width of the rescaled image.
     * @type number
     * @memberof MediaApirescaleImage
     */
    width: number
    /**
     * The desired height of the rescaled image.
     * @type number
     * @memberof MediaApirescaleImage
     */
    height: number
    /**
     * Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
     * @type boolean
     * @memberof MediaApirescaleImage
     */
    crop: boolean
}

export interface MediaApiSearchRoyaltyFreeImagesRequest {
    /**
     * The search query.
     * @type string
     * @memberof MediaApisearchRoyaltyFreeImages
     */
    query: string
    /**
     * The number of images to return in range [1,10]
     * @type number
     * @memberof MediaApisearchRoyaltyFreeImages
     */
    number?: number
}

export class ObjectMediaApi {
    private api: ObservableMediaApi

    public constructor(configuration: Configuration, requestFactory?: MediaApiRequestFactory, responseProcessor?: MediaApiResponseProcessor) {
        this.api = new ObservableMediaApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
     * Detect Main Image Color
     * @param param the request object
     */
    public detectMainImageColorWithHttpInfo(param: MediaApiDetectMainImageColorRequest, options?: Configuration): Promise<HttpInfo<Array<DetectMainImageColor200ResponseInner>>> {
        return this.api.detectMainImageColorWithHttpInfo(param.url,  options).toPromise();
    }

    /**
     * Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
     * Detect Main Image Color
     * @param param the request object
     */
    public detectMainImageColor(param: MediaApiDetectMainImageColorRequest, options?: Configuration): Promise<Array<DetectMainImageColor200ResponseInner>> {
        return this.api.detectMainImageColor(param.url,  options).toPromise();
    }

    /**
     * Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
     * Rescale Image
     * @param param the request object
     */
    public rescaleImageWithHttpInfo(param: MediaApiRescaleImageRequest, options?: Configuration): Promise<HttpInfo<any>> {
        return this.api.rescaleImageWithHttpInfo(param.url, param.width, param.height, param.crop,  options).toPromise();
    }

    /**
     * Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
     * Rescale Image
     * @param param the request object
     */
    public rescaleImage(param: MediaApiRescaleImageRequest, options?: Configuration): Promise<any> {
        return this.api.rescaleImage(param.url, param.width, param.height, param.crop,  options).toPromise();
    }

    /**
     * Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
     * Search Royalty Free Images
     * @param param the request object
     */
    public searchRoyaltyFreeImagesWithHttpInfo(param: MediaApiSearchRoyaltyFreeImagesRequest, options?: Configuration): Promise<HttpInfo<SearchRoyaltyFreeImages200Response>> {
        return this.api.searchRoyaltyFreeImagesWithHttpInfo(param.query, param.number,  options).toPromise();
    }

    /**
     * Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
     * Search Royalty Free Images
     * @param param the request object
     */
    public searchRoyaltyFreeImages(param: MediaApiSearchRoyaltyFreeImagesRequest, options?: Configuration): Promise<SearchRoyaltyFreeImages200Response> {
        return this.api.searchRoyaltyFreeImages(param.query, param.number,  options).toPromise();
    }

}

import { ObservableNewsApi } from "./ObservableAPI";
import { NewsApiRequestFactory, NewsApiResponseProcessor} from "../apis/NewsApi";

export interface NewsApiExtractNewsRequest {
    /**
     * The url of the news.
     * @type string
     * @memberof NewsApiextractNews
     */
    url: string
    /**
     * Whether to analyze the news (extract entities etc.)
     * @type boolean
     * @memberof NewsApiextractNews
     */
    analyze: boolean
}

export interface NewsApiSearchNewsRequest {
    /**
     * The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
     * @type string
     * @memberof NewsApisearchNews
     */
    text?: string
    /**
     * A comma-separated list of ISO 3166 country codes from which the news should originate.
     * @type string
     * @memberof NewsApisearchNews
     */
    sourceCountries?: string
    /**
     * The ISO 6391 language code of the news.
     * @type string
     * @memberof NewsApisearchNews
     */
    language?: string
    /**
     * The minimal sentiment of the news in range [-1,1].
     * @type number
     * @memberof NewsApisearchNews
     */
    minSentiment?: number
    /**
     * The maximal sentiment of the news in range [-1,1].
     * @type number
     * @memberof NewsApisearchNews
     */
    maxSentiment?: number
    /**
     * The news must have been published after this date.
     * @type string
     * @memberof NewsApisearchNews
     */
    earliestPublishDate?: string
    /**
     * The news must have been published before this date.
     * @type string
     * @memberof NewsApisearchNews
     */
    latestPublishDate?: string
    /**
     * A comma-separated list of news sources from which the news should originate.
     * @type string
     * @memberof NewsApisearchNews
     */
    newsSources?: string
    /**
     * A comma-separated list of author names. Only news from any of the given authors will be returned.
     * @type string
     * @memberof NewsApisearchNews
     */
    authors?: string
    /**
     * A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other.
     * @type string
     * @memberof NewsApisearchNews
     */
    categories?: string
    /**
     * Filter news by entities (ORG, PER, or LOC).
     * @type string
     * @memberof NewsApisearchNews
     */
    entities?: string
    /**
     * Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;
     * @type string
     * @memberof NewsApisearchNews
     */
    locationFilter?: string
    /**
     * The sorting criteria (publish-time).
     * @type string
     * @memberof NewsApisearchNews
     */
    sort?: string
    /**
     * Whether to sort ascending or descending (ASC or DESC).
     * @type string
     * @memberof NewsApisearchNews
     */
    sortDirection?: string
    /**
     * The number of news to skip in range [0,10000]
     * @type number
     * @memberof NewsApisearchNews
     */
    offset?: number
    /**
     * The number of news to return in range [1,100]
     * @type number
     * @memberof NewsApisearchNews
     */
    number?: number
}

export interface NewsApiTopNewsRequest {
    /**
     * The ISO 3166 country code of the country for which top news should be retrieved.
     * @type string
     * @memberof NewsApitopNews
     */
    sourceCountry: string
    /**
     * The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
     * @type string
     * @memberof NewsApitopNews
     */
    language: string
    /**
     * The date for which the top news should be retrieved. If no date is given, the current day is assumed.
     * @type string
     * @memberof NewsApitopNews
     */
    date?: string
    /**
     * Whether to only return basic information such as id, title, and url of the news.
     * @type boolean
     * @memberof NewsApitopNews
     */
    headlinesOnly?: boolean
}

export class ObjectNewsApi {
    private api: ObservableNewsApi

    public constructor(configuration: Configuration, requestFactory?: NewsApiRequestFactory, responseProcessor?: NewsApiResponseProcessor) {
        this.api = new ObservableNewsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
     * Extract News
     * @param param the request object
     */
    public extractNewsWithHttpInfo(param: NewsApiExtractNewsRequest, options?: Configuration): Promise<HttpInfo<ExtractNews200Response>> {
        return this.api.extractNewsWithHttpInfo(param.url, param.analyze,  options).toPromise();
    }

    /**
     * Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
     * Extract News
     * @param param the request object
     */
    public extractNews(param: NewsApiExtractNewsRequest, options?: Configuration): Promise<ExtractNews200Response> {
        return this.api.extractNews(param.url, param.analyze,  options).toPromise();
    }

    /**
     * Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
     * Search News
     * @param param the request object
     */
    public searchNewsWithHttpInfo(param: NewsApiSearchNewsRequest = {}, options?: Configuration): Promise<HttpInfo<SearchNews200Response>> {
        return this.api.searchNewsWithHttpInfo(param.text, param.sourceCountries, param.language, param.minSentiment, param.maxSentiment, param.earliestPublishDate, param.latestPublishDate, param.newsSources, param.authors, param.categories, param.entities, param.locationFilter, param.sort, param.sortDirection, param.offset, param.number,  options).toPromise();
    }

    /**
     * Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
     * Search News
     * @param param the request object
     */
    public searchNews(param: NewsApiSearchNewsRequest = {}, options?: Configuration): Promise<SearchNews200Response> {
        return this.api.searchNews(param.text, param.sourceCountries, param.language, param.minSentiment, param.maxSentiment, param.earliestPublishDate, param.latestPublishDate, param.newsSources, param.authors, param.categories, param.entities, param.locationFilter, param.sort, param.sortDirection, param.offset, param.number,  options).toPromise();
    }

    /**
     * Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
     * Top News
     * @param param the request object
     */
    public topNewsWithHttpInfo(param: NewsApiTopNewsRequest, options?: Configuration): Promise<HttpInfo<TopNews200Response>> {
        return this.api.topNewsWithHttpInfo(param.sourceCountry, param.language, param.date, param.headlinesOnly,  options).toPromise();
    }

    /**
     * Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
     * Top News
     * @param param the request object
     */
    public topNews(param: NewsApiTopNewsRequest, options?: Configuration): Promise<TopNews200Response> {
        return this.api.topNews(param.sourceCountry, param.language, param.date, param.headlinesOnly,  options).toPromise();
    }

}

import { ObservableStorageApi } from "./ObservableAPI";
import { StorageApiRequestFactory, StorageApiResponseProcessor} from "../apis/StorageApi";

export interface StorageApiReadKeyValueFromStoreRequest {
    /**
     * The key for which the value is stored (max length 255 characters).
     * @type string
     * @memberof StorageApireadKeyValueFromStore
     */
    key: string
}

export interface StorageApiStoreKeyValueGETRequest {
    /**
     * The key for which the value is stored (max length 255 characters).
     * @type string
     * @memberof StorageApistoreKeyValueGET
     */
    key: string
    /**
     * The value that is supposed to be stored (max length 10,000 characters).
     * @type string
     * @memberof StorageApistoreKeyValueGET
     */
    value: string
}

export class ObjectStorageApi {
    private api: ObservableStorageApi

    public constructor(configuration: Configuration, requestFactory?: StorageApiRequestFactory, responseProcessor?: StorageApiResponseProcessor) {
        this.api = new ObservableStorageApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
     * Read Key Value from Store
     * @param param the request object
     */
    public readKeyValueFromStoreWithHttpInfo(param: StorageApiReadKeyValueFromStoreRequest, options?: Configuration): Promise<HttpInfo<ReadKeyValueFromStore200Response>> {
        return this.api.readKeyValueFromStoreWithHttpInfo(param.key,  options).toPromise();
    }

    /**
     * Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
     * Read Key Value from Store
     * @param param the request object
     */
    public readKeyValueFromStore(param: StorageApiReadKeyValueFromStoreRequest, options?: Configuration): Promise<ReadKeyValueFromStore200Response> {
        return this.api.readKeyValueFromStore(param.key,  options).toPromise();
    }

    /**
     * Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
     * Store Key Value (GET)
     * @param param the request object
     */
    public storeKeyValueGETWithHttpInfo(param: StorageApiStoreKeyValueGETRequest, options?: Configuration): Promise<HttpInfo<StoreKeyValueGET200Response>> {
        return this.api.storeKeyValueGETWithHttpInfo(param.key, param.value,  options).toPromise();
    }

    /**
     * Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
     * Store Key Value (GET)
     * @param param the request object
     */
    public storeKeyValueGET(param: StorageApiStoreKeyValueGETRequest, options?: Configuration): Promise<StoreKeyValueGET200Response> {
        return this.api.storeKeyValueGET(param.key, param.value,  options).toPromise();
    }

}

import { ObservableTextApi } from "./ObservableAPI";
import { TextApiRequestFactory, TextApiResponseProcessor} from "../apis/TextApi";

export interface TextApiCorrectSpellingRequest {
    /**
     * The text to be corrected.
     * @type string
     * @memberof TextApicorrectSpelling
     */
    text: string
    /**
     * The language of the text, one of en, de, es, fr, or it.
     * @type string
     * @memberof TextApicorrectSpelling
     */
    language: string
}

export interface TextApiDetectGenderByNameRequest {
    /**
     * The name of the perso for which the sentiment should be detected.
     * @type string
     * @memberof TextApidetectGenderByName
     */
    name: string
}

export interface TextApiDetectLanguageRequest {
    /**
     * The text for which the language should be detected.
     * @type string
     * @memberof TextApidetectLanguage
     */
    text: string
}

export interface TextApiDetectSentimentRequest {
    /**
     * The text for which the sentiment should be detected.
     * @type string
     * @memberof TextApidetectSentiment
     */
    text: string
}

export interface TextApiExtractDatesRequest {
    /**
     * The text from which dates should be extracted.
     * @type string
     * @memberof TextApiextractDates
     */
    text: string
}

export interface TextApiExtractEntitiesRequest {
    /**
     * The text from which entities should be extracted.
     * @type string
     * @memberof TextApiextractEntities
     */
    text: string
}

export interface TextApiListWordSynonymsRequest {
    /**
     * The (noun) word for which a list of synonyms should be returned.
     * @type string
     * @memberof TextApilistWordSynonyms
     */
    word: string
}

export interface TextApiPluralizeWordRequest {
    /**
     * The (noun) word for which the plural form should be found.
     * @type string
     * @memberof TextApipluralizeWord
     */
    word: string
}

export interface TextApiScoreReadabilityRequest {
    /**
     * The text to score for readability.
     * @type string
     * @memberof TextApiscoreReadability
     */
    text: string
}

export interface TextApiScoreTextRequest {
    /**
     * The title of the text to score.
     * @type string
     * @memberof TextApiscoreText
     */
    title: string
    /**
     * The text to score for multiple metrics.
     * @type string
     * @memberof TextApiscoreText
     */
    text: string
}

export interface TextApiSingularizeWordRequest {
    /**
     * The (noun) word for which the singular form should be found.
     * @type string
     * @memberof TextApisingularizeWord
     */
    word: string
}

export interface TextApiStemTextRequest {
    /**
     * The text to be stemmed.
     * @type string
     * @memberof TextApistemText
     */
    text: string
}

export interface TextApiTagPartOfSpeechRequest {
    /**
     * The text to tag the part of speech.
     * @type string
     * @memberof TextApitagPartOfSpeech
     */
    text: string
}

export class ObjectTextApi {
    private api: ObservableTextApi

    public constructor(configuration: Configuration, requestFactory?: TextApiRequestFactory, responseProcessor?: TextApiResponseProcessor) {
        this.api = new ObservableTextApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).
     * Correct Spelling
     * @param param the request object
     */
    public correctSpellingWithHttpInfo(param: TextApiCorrectSpellingRequest, options?: Configuration): Promise<HttpInfo<CorrectSpelling200Response>> {
        return this.api.correctSpellingWithHttpInfo(param.text, param.language,  options).toPromise();
    }

    /**
     * The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).
     * Correct Spelling
     * @param param the request object
     */
    public correctSpelling(param: TextApiCorrectSpellingRequest, options?: Configuration): Promise<CorrectSpelling200Response> {
        return this.api.correctSpelling(param.text, param.language,  options).toPromise();
    }

    /**
     * Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.
     * Detect Gender by Name
     * @param param the request object
     */
    public detectGenderByNameWithHttpInfo(param: TextApiDetectGenderByNameRequest, options?: Configuration): Promise<HttpInfo<DetectGenderByName200Response>> {
        return this.api.detectGenderByNameWithHttpInfo(param.name,  options).toPromise();
    }

    /**
     * Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.
     * Detect Gender by Name
     * @param param the request object
     */
    public detectGenderByName(param: TextApiDetectGenderByNameRequest, options?: Configuration): Promise<DetectGenderByName200Response> {
        return this.api.detectGenderByName(param.name,  options).toPromise();
    }

    /**
     * Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
     * Detect Language
     * @param param the request object
     */
    public detectLanguageWithHttpInfo(param: TextApiDetectLanguageRequest, options?: Configuration): Promise<HttpInfo<Array<DetectLanguage200ResponseInner>>> {
        return this.api.detectLanguageWithHttpInfo(param.text,  options).toPromise();
    }

    /**
     * Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
     * Detect Language
     * @param param the request object
     */
    public detectLanguage(param: TextApiDetectLanguageRequest, options?: Configuration): Promise<Array<DetectLanguage200ResponseInner>> {
        return this.api.detectLanguage(param.text,  options).toPromise();
    }

    /**
     * Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
     * Detect Sentiment
     * @param param the request object
     */
    public detectSentimentWithHttpInfo(param: TextApiDetectSentimentRequest, options?: Configuration): Promise<HttpInfo<DetectSentiment200Response>> {
        return this.api.detectSentimentWithHttpInfo(param.text,  options).toPromise();
    }

    /**
     * Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
     * Detect Sentiment
     * @param param the request object
     */
    public detectSentiment(param: TextApiDetectSentimentRequest, options?: Configuration): Promise<DetectSentiment200Response> {
        return this.api.detectSentiment(param.text,  options).toPromise();
    }

    /**
     * Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).
     * Extract Dates
     * @param param the request object
     */
    public extractDatesWithHttpInfo(param: TextApiExtractDatesRequest, options?: Configuration): Promise<HttpInfo<ExtractDates200Response>> {
        return this.api.extractDatesWithHttpInfo(param.text,  options).toPromise();
    }

    /**
     * Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).
     * Extract Dates
     * @param param the request object
     */
    public extractDates(param: TextApiExtractDatesRequest, options?: Configuration): Promise<ExtractDates200Response> {
        return this.api.extractDates(param.text,  options).toPromise();
    }

    /**
     * Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
     * Extract Entities
     * @param param the request object
     */
    public extractEntitiesWithHttpInfo(param: TextApiExtractEntitiesRequest, options?: Configuration): Promise<HttpInfo<ExtractEntities200Response>> {
        return this.api.extractEntitiesWithHttpInfo(param.text,  options).toPromise();
    }

    /**
     * Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
     * Extract Entities
     * @param param the request object
     */
    public extractEntities(param: TextApiExtractEntitiesRequest, options?: Configuration): Promise<ExtractEntities200Response> {
        return this.api.extractEntities(param.text,  options).toPromise();
    }

    /**
     * Return synonyms of a word.
     * List Word Synonyms
     * @param param the request object
     */
    public listWordSynonymsWithHttpInfo(param: TextApiListWordSynonymsRequest, options?: Configuration): Promise<HttpInfo<ListWordSynonyms200Response>> {
        return this.api.listWordSynonymsWithHttpInfo(param.word,  options).toPromise();
    }

    /**
     * Return synonyms of a word.
     * List Word Synonyms
     * @param param the request object
     */
    public listWordSynonyms(param: TextApiListWordSynonymsRequest, options?: Configuration): Promise<ListWordSynonyms200Response> {
        return this.api.listWordSynonyms(param.word,  options).toPromise();
    }

    /**
     * Find the plural form of a word.
     * Pluralize Word
     * @param param the request object
     */
    public pluralizeWordWithHttpInfo(param: TextApiPluralizeWordRequest, options?: Configuration): Promise<HttpInfo<PluralizeWord200Response>> {
        return this.api.pluralizeWordWithHttpInfo(param.word,  options).toPromise();
    }

    /**
     * Find the plural form of a word.
     * Pluralize Word
     * @param param the request object
     */
    public pluralizeWord(param: TextApiPluralizeWordRequest, options?: Configuration): Promise<PluralizeWord200Response> {
        return this.api.pluralizeWord(param.word,  options).toPromise();
    }

    /**
     * Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
     * Score Readability
     * @param param the request object
     */
    public scoreReadabilityWithHttpInfo(param: TextApiScoreReadabilityRequest, options?: Configuration): Promise<HttpInfo<ScoreReadability200Response>> {
        return this.api.scoreReadabilityWithHttpInfo(param.text,  options).toPromise();
    }

    /**
     * Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
     * Score Readability
     * @param param the request object
     */
    public scoreReadability(param: TextApiScoreReadabilityRequest, options?: Configuration): Promise<ScoreReadability200Response> {
        return this.api.scoreReadability(param.text,  options).toPromise();
    }

    /**
     * Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
     * Score Text
     * @param param the request object
     */
    public scoreTextWithHttpInfo(param: TextApiScoreTextRequest, options?: Configuration): Promise<HttpInfo<ScoreText200Response>> {
        return this.api.scoreTextWithHttpInfo(param.title, param.text,  options).toPromise();
    }

    /**
     * Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
     * Score Text
     * @param param the request object
     */
    public scoreText(param: TextApiScoreTextRequest, options?: Configuration): Promise<ScoreText200Response> {
        return this.api.scoreText(param.title, param.text,  options).toPromise();
    }

    /**
     * Find the singular form of a word.
     * Singularize Word
     * @param param the request object
     */
    public singularizeWordWithHttpInfo(param: TextApiSingularizeWordRequest, options?: Configuration): Promise<HttpInfo<SingularizeWord200Response>> {
        return this.api.singularizeWordWithHttpInfo(param.word,  options).toPromise();
    }

    /**
     * Find the singular form of a word.
     * Singularize Word
     * @param param the request object
     */
    public singularizeWord(param: TextApiSingularizeWordRequest, options?: Configuration): Promise<SingularizeWord200Response> {
        return this.api.singularizeWord(param.word,  options).toPromise();
    }

    /**
     * The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
     * Stem Text
     * @param param the request object
     */
    public stemTextWithHttpInfo(param: TextApiStemTextRequest, options?: Configuration): Promise<HttpInfo<StemText200Response>> {
        return this.api.stemTextWithHttpInfo(param.text,  options).toPromise();
    }

    /**
     * The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
     * Stem Text
     * @param param the request object
     */
    public stemText(param: TextApiStemTextRequest, options?: Configuration): Promise<StemText200Response> {
        return this.api.stemText(param.text,  options).toPromise();
    }

    /**
     * Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
     * Tag Part of Speech
     * @param param the request object
     */
    public tagPartOfSpeechWithHttpInfo(param: TextApiTagPartOfSpeechRequest, options?: Configuration): Promise<HttpInfo<TagPartOfSpeech200Response>> {
        return this.api.tagPartOfSpeechWithHttpInfo(param.text,  options).toPromise();
    }

    /**
     * Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
     * Tag Part of Speech
     * @param param the request object
     */
    public tagPartOfSpeech(param: TextApiTagPartOfSpeechRequest, options?: Configuration): Promise<TagPartOfSpeech200Response> {
        return this.api.tagPartOfSpeech(param.text,  options).toPromise();
    }

}

import { ObservableWebApi } from "./ObservableAPI";
import { WebApiRequestFactory, WebApiResponseProcessor} from "../apis/WebApi";

export interface WebApiExtractAuthorsRequest {
    /**
     * The url with the article from which authors should be extracted.
     * @type string
     * @memberof WebApiextractAuthors
     */
    url: string
}

export interface WebApiExtractContentFromAWebPageRequest {
    /**
     * The url for which the content will be extracted.
     * @type string
     * @memberof WebApiextractContentFromAWebPage
     */
    url: string
}

export interface WebApiExtractPublishDateRequest {
    /**
     * The url for which the publish date should be extracted.
     * @type string
     * @memberof WebApiextractPublishDate
     */
    url: string
}

export interface WebApiRetrievePageRankRequest {
    /**
     * The domain for which the page rank should be returned.
     * @type string
     * @memberof WebApiretrievePageRank
     */
    domain: string
}

export interface WebApiSearchWebRequest {
    /**
     * The search query.
     * @type string
     * @memberof WebApisearchWeb
     */
    query: string
    /**
     * The number of results to return in range [1,50]
     * @type number
     * @memberof WebApisearchWeb
     */
    number?: number
}

export interface WebApiVerifyEmailAddressRequest {
    /**
     * The email address to verify.
     * @type string
     * @memberof WebApiverifyEmailAddress
     */
    email: string
}

export class ObjectWebApi {
    private api: ObservableWebApi

    public constructor(configuration: Configuration, requestFactory?: WebApiRequestFactory, responseProcessor?: WebApiResponseProcessor) {
        this.api = new ObservableWebApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
     * Extract Authors
     * @param param the request object
     */
    public extractAuthorsWithHttpInfo(param: WebApiExtractAuthorsRequest, options?: Configuration): Promise<HttpInfo<ExtractAuthors200Response>> {
        return this.api.extractAuthorsWithHttpInfo(param.url,  options).toPromise();
    }

    /**
     * Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
     * Extract Authors
     * @param param the request object
     */
    public extractAuthors(param: WebApiExtractAuthorsRequest, options?: Configuration): Promise<ExtractAuthors200Response> {
        return this.api.extractAuthors(param.url,  options).toPromise();
    }

    /**
     * Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
     * Extract Content from a Web Page
     * @param param the request object
     */
    public extractContentFromAWebPageWithHttpInfo(param: WebApiExtractContentFromAWebPageRequest, options?: Configuration): Promise<HttpInfo<ExtractContentFromAWebPage200Response>> {
        return this.api.extractContentFromAWebPageWithHttpInfo(param.url,  options).toPromise();
    }

    /**
     * Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
     * Extract Content from a Web Page
     * @param param the request object
     */
    public extractContentFromAWebPage(param: WebApiExtractContentFromAWebPageRequest, options?: Configuration): Promise<ExtractContentFromAWebPage200Response> {
        return this.api.extractContentFromAWebPage(param.url,  options).toPromise();
    }

    /**
     * Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
     * Extract Publish Date
     * @param param the request object
     */
    public extractPublishDateWithHttpInfo(param: WebApiExtractPublishDateRequest, options?: Configuration): Promise<HttpInfo<ExtractPublishDate200Response>> {
        return this.api.extractPublishDateWithHttpInfo(param.url,  options).toPromise();
    }

    /**
     * Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
     * Extract Publish Date
     * @param param the request object
     */
    public extractPublishDate(param: WebApiExtractPublishDateRequest, options?: Configuration): Promise<ExtractPublishDate200Response> {
        return this.api.extractPublishDate(param.url,  options).toPromise();
    }

    /**
     * This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
     * Retrieve Page Rank
     * @param param the request object
     */
    public retrievePageRankWithHttpInfo(param: WebApiRetrievePageRankRequest, options?: Configuration): Promise<HttpInfo<RetrievePageRank200Response>> {
        return this.api.retrievePageRankWithHttpInfo(param.domain,  options).toPromise();
    }

    /**
     * This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
     * Retrieve Page Rank
     * @param param the request object
     */
    public retrievePageRank(param: WebApiRetrievePageRankRequest, options?: Configuration): Promise<RetrievePageRank200Response> {
        return this.api.retrievePageRank(param.domain,  options).toPromise();
    }

    /**
     * Search the web for a given query. The API returns a list of results with the title, summary, and URL.
     * Search Web
     * @param param the request object
     */
    public searchWebWithHttpInfo(param: WebApiSearchWebRequest, options?: Configuration): Promise<HttpInfo<SearchWeb200Response>> {
        return this.api.searchWebWithHttpInfo(param.query, param.number,  options).toPromise();
    }

    /**
     * Search the web for a given query. The API returns a list of results with the title, summary, and URL.
     * Search Web
     * @param param the request object
     */
    public searchWeb(param: WebApiSearchWebRequest, options?: Configuration): Promise<SearchWeb200Response> {
        return this.api.searchWeb(param.query, param.number,  options).toPromise();
    }

    /**
     * This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.
     * Verify Email Address
     * @param param the request object
     */
    public verifyEmailAddressWithHttpInfo(param: WebApiVerifyEmailAddressRequest, options?: Configuration): Promise<HttpInfo<VerifyEmailAddress200Response>> {
        return this.api.verifyEmailAddressWithHttpInfo(param.email,  options).toPromise();
    }

    /**
     * This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.
     * Verify Email Address
     * @param param the request object
     */
    public verifyEmailAddress(param: WebApiVerifyEmailAddressRequest, options?: Configuration): Promise<VerifyEmailAddress200Response> {
        return this.api.verifyEmailAddress(param.email,  options).toPromise();
    }

}
