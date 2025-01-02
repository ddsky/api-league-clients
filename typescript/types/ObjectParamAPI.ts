import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration} from '../configuration'

import { ComputeNutritionAPI200Response } from '../models/ComputeNutritionAPI200Response';
import { ComputeNutritionAPI200ResponseIngredientBreakdownInner } from '../models/ComputeNutritionAPI200ResponseIngredientBreakdownInner';
import { ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner } from '../models/ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner';
import { ConvertUnitsAPI200Response } from '../models/ConvertUnitsAPI200Response';
import { CorrectSpellingAPI200Response } from '../models/CorrectSpellingAPI200Response';
import { DetectGenderByNameAPI200Response } from '../models/DetectGenderByNameAPI200Response';
import { DetectLanguageAPI200ResponseInner } from '../models/DetectLanguageAPI200ResponseInner';
import { DetectMainImageColorAPI200ResponseInner } from '../models/DetectMainImageColorAPI200ResponseInner';
import { DetectSentimentAPI200Response } from '../models/DetectSentimentAPI200Response';
import { DetectSentimentAPI200ResponseDocument } from '../models/DetectSentimentAPI200ResponseDocument';
import { DetectSentimentAPI200ResponseSentencesInner } from '../models/DetectSentimentAPI200ResponseSentencesInner';
import { ExtractAuthorsAPI200Response } from '../models/ExtractAuthorsAPI200Response';
import { ExtractAuthorsAPI200ResponseAuthorsInner } from '../models/ExtractAuthorsAPI200ResponseAuthorsInner';
import { ExtractContentFromAWebPageAPI200Response } from '../models/ExtractContentFromAWebPageAPI200Response';
import { ExtractDatesAPI200Response } from '../models/ExtractDatesAPI200Response';
import { ExtractDatesAPI200ResponseDatesInner } from '../models/ExtractDatesAPI200ResponseDatesInner';
import { ExtractEntitiesAPI200Response } from '../models/ExtractEntitiesAPI200Response';
import { ExtractEntitiesAPI200ResponseEntitiesInner } from '../models/ExtractEntitiesAPI200ResponseEntitiesInner';
import { ExtractNewsAPI200Response } from '../models/ExtractNewsAPI200Response';
import { ExtractNewsAPI200ResponseImagesInner } from '../models/ExtractNewsAPI200ResponseImagesInner';
import { ExtractNewsAPI200ResponseVideosInner } from '../models/ExtractNewsAPI200ResponseVideosInner';
import { ExtractPublishDateAPI200Response } from '../models/ExtractPublishDateAPI200Response';
import { FindSimilarBooksAPI200Response } from '../models/FindSimilarBooksAPI200Response';
import { GenerateNonsenseWordAPI200Response } from '../models/GenerateNonsenseWordAPI200Response';
import { ListWordSynonymsAPI200Response } from '../models/ListWordSynonymsAPI200Response';
import { PluralizeWordAPI200Response } from '../models/PluralizeWordAPI200Response';
import { RandomMemeAPI200Response } from '../models/RandomMemeAPI200Response';
import { RandomPoemAPI200Response } from '../models/RandomPoemAPI200Response';
import { RandomQuoteAPI200Response } from '../models/RandomQuoteAPI200Response';
import { RandomRiddleAPI200Response } from '../models/RandomRiddleAPI200Response';
import { RandomTriviaAPI200Response } from '../models/RandomTriviaAPI200Response';
import { ReadKeyValueFromStoreAPI200Response } from '../models/ReadKeyValueFromStoreAPI200Response';
import { RetrievePageRankAPI200Response } from '../models/RetrievePageRankAPI200Response';
import { RetrieveRecipeInformationAPI200Response } from '../models/RetrieveRecipeInformationAPI200Response';
import { RetrieveRecipeInformationAPI200ResponseCredits } from '../models/RetrieveRecipeInformationAPI200ResponseCredits';
import { RetrieveRecipeInformationAPI200ResponseDietaryProperties } from '../models/RetrieveRecipeInformationAPI200ResponseDietaryProperties';
import { RetrieveRecipeInformationAPI200ResponseIngredientsInner } from '../models/RetrieveRecipeInformationAPI200ResponseIngredientsInner';
import { RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures } from '../models/RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures';
import { RetrieveRecipeInformationAPI200ResponseInstructionsInner } from '../models/RetrieveRecipeInformationAPI200ResponseInstructionsInner';
import { RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner } from '../models/RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner';
import { RetrieveRecipeInformationAPI200ResponseNutrition } from '../models/RetrieveRecipeInformationAPI200ResponseNutrition';
import { RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner } from '../models/RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner';
import { RetrieveRecipeInformationAPI200ResponseScores } from '../models/RetrieveRecipeInformationAPI200ResponseScores';
import { RetrieveRecipeInformationAPI200ResponseTaste } from '../models/RetrieveRecipeInformationAPI200ResponseTaste';
import { RetrieveRecipeInformationAPI200ResponseTimes } from '../models/RetrieveRecipeInformationAPI200ResponseTimes';
import { ScoreReadabilityAPI200Response } from '../models/ScoreReadabilityAPI200Response';
import { ScoreTextAPI200Response } from '../models/ScoreTextAPI200Response';
import { ScoreTextAPI200ResponseInterestingness } from '../models/ScoreTextAPI200ResponseInterestingness';
import { ScoreTextAPI200ResponseInterestingnessSubscores } from '../models/ScoreTextAPI200ResponseInterestingnessSubscores';
import { ScoreTextAPI200ResponseReadability } from '../models/ScoreTextAPI200ResponseReadability';
import { ScoreTextAPI200ResponseReadabilityMainscores } from '../models/ScoreTextAPI200ResponseReadabilityMainscores';
import { ScoreTextAPI200ResponseReadabilitySubscores } from '../models/ScoreTextAPI200ResponseReadabilitySubscores';
import { ScoreTextAPI200ResponseSkimmability } from '../models/ScoreTextAPI200ResponseSkimmability';
import { ScoreTextAPI200ResponseSkimmabilityMainscores } from '../models/ScoreTextAPI200ResponseSkimmabilityMainscores';
import { ScoreTextAPI200ResponseSkimmabilitySubscores } from '../models/ScoreTextAPI200ResponseSkimmabilitySubscores';
import { ScoreTextAPI200ResponseStyle } from '../models/ScoreTextAPI200ResponseStyle';
import { ScoreTextAPI200ResponseStyleSubscores } from '../models/ScoreTextAPI200ResponseStyleSubscores';
import { SearchBooksAPI200Response } from '../models/SearchBooksAPI200Response';
import { SearchBooksAPI200ResponseBooksInnerInner } from '../models/SearchBooksAPI200ResponseBooksInnerInner';
import { SearchDrinksAPI200Response } from '../models/SearchDrinksAPI200Response';
import { SearchDrinksAPI200ResponseDrinksInner } from '../models/SearchDrinksAPI200ResponseDrinksInner';
import { SearchDrinksAPI200ResponseDrinksInnerCredits } from '../models/SearchDrinksAPI200ResponseDrinksInnerCredits';
import { SearchDrinksAPI200ResponseDrinksInnerIngredientsInner } from '../models/SearchDrinksAPI200ResponseDrinksInnerIngredientsInner';
import { SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures } from '../models/SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures';
import { SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric } from '../models/SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresMetric';
import { SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs } from '../models/SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasuresUs';
import { SearchDrinksAPI200ResponseDrinksInnerInstructionsInner } from '../models/SearchDrinksAPI200ResponseDrinksInnerInstructionsInner';
import { SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner } from '../models/SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInner';
import { SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner } from '../models/SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner';
import { SearchDrinksAPI200ResponseDrinksInnerNutrition } from '../models/SearchDrinksAPI200ResponseDrinksInnerNutrition';
import { SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown } from '../models/SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown';
import { SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner } from '../models/SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner';
import { SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner } from '../models/SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner';
import { SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner } from '../models/SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner';
import { SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner } from '../models/SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner';
import { SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing } from '../models/SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing';
import { SearchGifsAPI200Response } from '../models/SearchGifsAPI200Response';
import { SearchGifsAPI200ResponseImagesInner } from '../models/SearchGifsAPI200ResponseImagesInner';
import { SearchIconsAPI200Response } from '../models/SearchIconsAPI200Response';
import { SearchJokesAPI200Response } from '../models/SearchJokesAPI200Response';
import { SearchJokesAPI200ResponseJokesInner } from '../models/SearchJokesAPI200ResponseJokesInner';
import { SearchMemesAPI200Response } from '../models/SearchMemesAPI200Response';
import { SearchMemesAPI200ResponseMemesInner } from '../models/SearchMemesAPI200ResponseMemesInner';
import { SearchNewsAPI200Response } from '../models/SearchNewsAPI200Response';
import { SearchNewsAPI200ResponseNewsInner } from '../models/SearchNewsAPI200ResponseNewsInner';
import { SearchRecipesAPI200Response } from '../models/SearchRecipesAPI200Response';
import { SearchRecipesAPI200ResponseRecipesInner } from '../models/SearchRecipesAPI200ResponseRecipesInner';
import { SearchRecipesAPI200ResponseRecipesInnerNutrition } from '../models/SearchRecipesAPI200ResponseRecipesInnerNutrition';
import { SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner } from '../models/SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner';
import { SearchRestaurantsAPI200Response } from '../models/SearchRestaurantsAPI200Response';
import { SearchRestaurantsAPI200ResponseRestaurantsInner } from '../models/SearchRestaurantsAPI200ResponseRestaurantsInner';
import { SearchRestaurantsAPI200ResponseRestaurantsInnerAddress } from '../models/SearchRestaurantsAPI200ResponseRestaurantsInnerAddress';
import { SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours } from '../models/SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours';
import { SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational } from '../models/SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational';
import { SearchRoyaltyFreeImagesAPI200Response } from '../models/SearchRoyaltyFreeImagesAPI200Response';
import { SearchRoyaltyFreeImagesAPI200ResponseImagesInner } from '../models/SearchRoyaltyFreeImagesAPI200ResponseImagesInner';
import { SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense } from '../models/SearchRoyaltyFreeImagesAPI200ResponseImagesInnerLicense';
import { SearchWebAPI200Response } from '../models/SearchWebAPI200Response';
import { SearchWebAPI200ResponseResultsInner } from '../models/SearchWebAPI200ResponseResultsInner';
import { SingularizeWordAPI200Response } from '../models/SingularizeWordAPI200Response';
import { StemTextAPI200Response } from '../models/StemTextAPI200Response';
import { StoreKeyValueGETAPI200Response } from '../models/StoreKeyValueGETAPI200Response';
import { TagPartOfSpeechAPI200Response } from '../models/TagPartOfSpeechAPI200Response';
import { TopNewsAPI200Response } from '../models/TopNewsAPI200Response';
import { TopNewsAPI200ResponseTopNewsInner } from '../models/TopNewsAPI200ResponseTopNewsInner';
import { TopNewsAPI200ResponseTopNewsInnerNewsInner } from '../models/TopNewsAPI200ResponseTopNewsInnerNewsInner';
import { VectorSearchAPI200Response } from '../models/VectorSearchAPI200Response';
import { VectorSearchAPI200ResponseVectorsInner } from '../models/VectorSearchAPI200ResponseVectorsInner';
import { VerifyEmailAddressAPI200Response } from '../models/VerifyEmailAddressAPI200Response';

import { ObservableArtApi } from "./ObservableAPI";
import { ArtApiRequestFactory, ArtApiResponseProcessor} from "../apis/ArtApi";

export interface ArtApiImageToAsciiArtByURLAPIRequest {
    /**
     * The URL to the image.
     * @type string
     * @memberof ArtApiimageToAsciiArtByURLAPI
     */
    url: string
    /**
     * The maximum width of the image (default 400, max. 500).
     * @type number
     * @memberof ArtApiimageToAsciiArtByURLAPI
     */
    width?: number
    /**
     * The maximum height of the image (default 400, max. 500).
     * @type number
     * @memberof ArtApiimageToAsciiArtByURLAPI
     */
    height?: number
}

export interface ArtApiRandomPoemAPIRequest {
    /**
     * The minimum number of lines of the poem.
     * @type number
     * @memberof ArtApirandomPoemAPI
     */
    minLines?: number
    /**
     * The maximum number of lines of the poem.
     * @type number
     * @memberof ArtApirandomPoemAPI
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
     * Image to Ascii Art by URL API
     * @param param the request object
     */
    public imageToAsciiArtByURLAPIWithHttpInfo(param: ArtApiImageToAsciiArtByURLAPIRequest, options?: Configuration): Promise<HttpInfo<string>> {
        return this.api.imageToAsciiArtByURLAPIWithHttpInfo(param.url, param.width, param.height,  options).toPromise();
    }

    /**
     * Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
     * Image to Ascii Art by URL API
     * @param param the request object
     */
    public imageToAsciiArtByURLAPI(param: ArtApiImageToAsciiArtByURLAPIRequest, options?: Configuration): Promise<string> {
        return this.api.imageToAsciiArtByURLAPI(param.url, param.width, param.height,  options).toPromise();
    }

    /**
     * Retrieve a random poem by many famous authors. You can filter poem\'s by length (number of lines).
     * Random Poem API
     * @param param the request object
     */
    public randomPoemAPIWithHttpInfo(param: ArtApiRandomPoemAPIRequest = {}, options?: Configuration): Promise<HttpInfo<RandomPoemAPI200Response>> {
        return this.api.randomPoemAPIWithHttpInfo(param.minLines, param.maxLines,  options).toPromise();
    }

    /**
     * Retrieve a random poem by many famous authors. You can filter poem\'s by length (number of lines).
     * Random Poem API
     * @param param the request object
     */
    public randomPoemAPI(param: ArtApiRandomPoemAPIRequest = {}, options?: Configuration): Promise<RandomPoemAPI200Response> {
        return this.api.randomPoemAPI(param.minLines, param.maxLines,  options).toPromise();
    }

}

import { ObservableBooksApi } from "./ObservableAPI";
import { BooksApiRequestFactory, BooksApiResponseProcessor} from "../apis/BooksApi";

export interface BooksApiFindSimilarBooksAPIRequest {
    /**
     * The id of the book to which similar books should be found.
     * @type number
     * @memberof BooksApifindSimilarBooksAPI
     */
    id: number
    /**
     * The number of similar books to return in range [1,100]
     * @type number
     * @memberof BooksApifindSimilarBooksAPI
     */
    number?: number
}

export interface BooksApiSearchBooksAPIRequest {
    /**
     * The search query.
     * @type string
     * @memberof BooksApisearchBooksAPI
     */
    query?: string
    /**
     * The books must have been published after this year.
     * @type number
     * @memberof BooksApisearchBooksAPI
     */
    earliestPublishYear?: number
    /**
     * The books must have been published before this year.
     * @type number
     * @memberof BooksApisearchBooksAPI
     */
    latestPublishYear?: number
    /**
     * The minimum rating the book must have gotten in the interval [0,1].
     * @type number
     * @memberof BooksApisearchBooksAPI
     */
    minRating?: number
    /**
     * The maximum rating the book must have gotten in the interval [0,1].
     * @type number
     * @memberof BooksApisearchBooksAPI
     */
    maxRating?: number
    /**
     * A comma-separated list of genres. Only books from any of the given genres will be returned.
     * @type string
     * @memberof BooksApisearchBooksAPI
     */
    genres?: string
    /**
     * A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can\&#39;t disambiguate.
     * @type string
     * @memberof BooksApisearchBooksAPI
     */
    authors?: string
    /**
     * Only the book matching the ISBN-13 will be returned
     * @type string
     * @memberof BooksApisearchBooksAPI
     */
    isbn?: string
    /**
     * Only the book matching the OCLC will be returned
     * @type string
     * @memberof BooksApisearchBooksAPI
     */
    oclc?: string
    /**
     * The sorting criteria (publish-date or rating).
     * @type string
     * @memberof BooksApisearchBooksAPI
     */
    sort?: string
    /**
     * Whether to sort ascending or descending (ASC or DESC).
     * @type string
     * @memberof BooksApisearchBooksAPI
     */
    sortDirection?: string
    /**
     * Whether to group similar editions of the same book.
     * @type boolean
     * @memberof BooksApisearchBooksAPI
     */
    groupResults?: boolean
    /**
     * The number of books to skip in range [0,1000]
     * @type number
     * @memberof BooksApisearchBooksAPI
     */
    offset?: number
    /**
     * The number of books to return in range [1,100]
     * @type number
     * @memberof BooksApisearchBooksAPI
     */
    number?: number
}

export class ObjectBooksApi {
    private api: ObservableBooksApi

    public constructor(configuration: Configuration, requestFactory?: BooksApiRequestFactory, responseProcessor?: BooksApiResponseProcessor) {
        this.api = new ObservableBooksApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Find books that are similar to the given book (based on a set of over 4 million books). This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
     * Find Similar Books API
     * @param param the request object
     */
    public findSimilarBooksAPIWithHttpInfo(param: BooksApiFindSimilarBooksAPIRequest, options?: Configuration): Promise<HttpInfo<FindSimilarBooksAPI200Response>> {
        return this.api.findSimilarBooksAPIWithHttpInfo(param.id, param.number,  options).toPromise();
    }

    /**
     * Find books that are similar to the given book (based on a set of over 4 million books). This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
     * Find Similar Books API
     * @param param the request object
     */
    public findSimilarBooksAPI(param: BooksApiFindSimilarBooksAPIRequest, options?: Configuration): Promise<FindSimilarBooksAPI200Response> {
        return this.api.findSimilarBooksAPI(param.id, param.number,  options).toPromise();
    }

    /**
     * Search and filter over 4 million books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.
     * Search Books API
     * @param param the request object
     */
    public searchBooksAPIWithHttpInfo(param: BooksApiSearchBooksAPIRequest = {}, options?: Configuration): Promise<HttpInfo<SearchBooksAPI200Response>> {
        return this.api.searchBooksAPIWithHttpInfo(param.query, param.earliestPublishYear, param.latestPublishYear, param.minRating, param.maxRating, param.genres, param.authors, param.isbn, param.oclc, param.sort, param.sortDirection, param.groupResults, param.offset, param.number,  options).toPromise();
    }

    /**
     * Search and filter over 4 million books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.
     * Search Books API
     * @param param the request object
     */
    public searchBooksAPI(param: BooksApiSearchBooksAPIRequest = {}, options?: Configuration): Promise<SearchBooksAPI200Response> {
        return this.api.searchBooksAPI(param.query, param.earliestPublishYear, param.latestPublishYear, param.minRating, param.maxRating, param.genres, param.authors, param.isbn, param.oclc, param.sort, param.sortDirection, param.groupResults, param.offset, param.number,  options).toPromise();
    }

}

import { ObservableFoodApi } from "./ObservableAPI";
import { FoodApiRequestFactory, FoodApiResponseProcessor} from "../apis/FoodApi";

export interface FoodApiComputeNutritionAPIRequest {
    /**
     * A comma-separated list of the ingredients of the recipe.
     * @type string
     * @memberof FoodApicomputeNutritionAPI
     */
    ingredients: string
    /**
     * The number of servings the ingredients make. Nutrition is computed per serving.
     * @type number
     * @memberof FoodApicomputeNutritionAPI
     */
    servings?: number
    /**
     * If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true.
     * @type boolean
     * @memberof FoodApicomputeNutritionAPI
     */
    reduceOils?: boolean
}

export interface FoodApiRetrieveRecipeInformationAPIRequest {
    /**
     * The id of the recipe to retrieve.
     * @type number
     * @memberof FoodApiretrieveRecipeInformationAPI
     */
    id: number
    /**
     * Whether to pair a wine to the recipe.
     * @type boolean
     * @memberof FoodApiretrieveRecipeInformationAPI
     */
    addWinePairing?: boolean
}

export interface FoodApiSearchDrinksAPIRequest {
    /**
     * The search query.
     * @type string
     * @memberof FoodApisearchDrinksAPI
     */
    query?: string
    /**
     * A comma-separated list (interpreted as OR) of glass types that the drink should be served in.
     * @type string
     * @memberof FoodApisearchDrinksAPI
     */
    glassTypes?: string
    /**
     * A comma-separated list (interpreted as AND) of dominant flavors in the drink.
     * @type string
     * @memberof FoodApisearchDrinksAPI
     */
    flavors?: string
    /**
     * The diet the drink must adhere to. One of the following: paleo,primal,grain-free,vegan,vegetarian.
     * @type string
     * @memberof FoodApisearchDrinksAPI
     */
    diet?: string
    /**
     * A comma-separated list of ingredients that should/must be used in the drinks.
     * @type string
     * @memberof FoodApisearchDrinksAPI
     */
    includeIngredients?: string
    /**
     * A comma-separated list of ingredients or ingredient types that the drinks must not contain.
     * @type string
     * @memberof FoodApisearchDrinksAPI
     */
    excludeIngredients?: string
    /**
     * The minimum amount of calories the drink must have per serving.
     * @type number
     * @memberof FoodApisearchDrinksAPI
     */
    minCalories?: number
    /**
     * The maximum amount of calories the drink can have per serving.
     * @type number
     * @memberof FoodApisearchDrinksAPI
     */
    maxCalories?: number
    /**
     * The minimum amount of carbohydrates in grams the drink must have per serving.
     * @type number
     * @memberof FoodApisearchDrinksAPI
     */
    minCarbs?: number
    /**
     * The maximum amount of carbohydrates in grams the drink can have per serving.
     * @type number
     * @memberof FoodApisearchDrinksAPI
     */
    maxCarbs?: number
    /**
     * The minimum amount of protein in grams the drink must have per serving.
     * @type number
     * @memberof FoodApisearchDrinksAPI
     */
    minProtein?: number
    /**
     * The maximum amount of protein in grams the drink can have per serving.
     * @type number
     * @memberof FoodApisearchDrinksAPI
     */
    maxProtein?: number
    /**
     * The minimum amount of fat in grams the drink must have per serving.
     * @type number
     * @memberof FoodApisearchDrinksAPI
     */
    minFat?: number
    /**
     * The maximum amount of fat in grams the drink can have per serving.
     * @type number
     * @memberof FoodApisearchDrinksAPI
     */
    maxFat?: number
    /**
     * The minimum alcohol percentage the drink must have.
     * @type number
     * @memberof FoodApisearchDrinksAPI
     */
    minAlcoholPercent?: number
    /**
     * The maximum alcohol percentage the drink can have.
     * @type number
     * @memberof FoodApisearchDrinksAPI
     */
    maxAlcoholPercent?: number
    /**
     * The minimum amount of caffeine in milligrams the drink must have per serving.
     * @type number
     * @memberof FoodApisearchDrinksAPI
     */
    minCaffeine?: number
    /**
     * The maximum amount of caffeine in milligrams the drink can have per serving.
     * @type number
     * @memberof FoodApisearchDrinksAPI
     */
    maxCaffeine?: number
    /**
     * The attribute by which to sort the drinks.
     * @type string
     * @memberof FoodApisearchDrinksAPI
     */
    sort?: string
    /**
     * Whether to sort ascending or descending (ASC or DESC).
     * @type string
     * @memberof FoodApisearchDrinksAPI
     */
    sortDirection?: string
    /**
     * The number of drinks to skip, between 0 and 90.
     * @type number
     * @memberof FoodApisearchDrinksAPI
     */
    offset?: number
    /**
     * The number of drinks, between 1 and 10.
     * @type number
     * @memberof FoodApisearchDrinksAPI
     */
    number?: number
}

export interface FoodApiSearchRecipesAPIRequest {
    /**
     * The search query.
     * @type string
     * @memberof FoodApisearchRecipesAPI
     */
    query?: string
    /**
     * The cuisine(s) of the recipes. One or more, comma-separated (will be interpreted as \&#39;OR\&#39;).
     * @type string
     * @memberof FoodApisearchRecipesAPI
     */
    cuisines?: string
    /**
     * The cuisine(s) the recipes must not match. One or more, comma-separated (will be interpreted as \&#39;AND\&#39;).
     * @type string
     * @memberof FoodApisearchRecipesAPI
     */
    excludeCuisines?: string
    /**
     * The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink.
     * @type string
     * @memberof FoodApisearchRecipesAPI
     */
    mealType?: string
    /**
     * The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian.
     * @type string
     * @memberof FoodApisearchRecipesAPI
     */
    diet?: string
    /**
     * A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered.
     * @type string
     * @memberof FoodApisearchRecipesAPI
     */
    intolerances?: string
    /**
     * The equipment required. Multiple values will be interpreted as \&#39;OR\&#39;.
     * @type string
     * @memberof FoodApisearchRecipesAPI
     */
    equipment?: string
    /**
     * A comma-separated list of ingredients that should/must be used in the recipes.
     * @type string
     * @memberof FoodApisearchRecipesAPI
     */
    includeIngredients?: string
    /**
     * A comma-separated list of ingredients or ingredient types that the recipes must not contain.
     * @type string
     * @memberof FoodApisearchRecipesAPI
     */
    excludeIngredients?: string
    /**
     * Add information about the ingredients and whether they are used or missing in relation to the query.
     * @type boolean
     * @memberof FoodApisearchRecipesAPI
     */
    fillIngredients?: boolean
    /**
     * If set to true, you get more information about the recipes returned.
     * @type boolean
     * @memberof FoodApisearchRecipesAPI
     */
    addRecipeInformation?: boolean
    /**
     * The maximum time in minutes it should take to prepare and cook the recipe.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxTime?: number
    /**
     * The minimum amount of servings the recipe is for.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minServings?: number
    /**
     * The maximum amount of servings the recipe is for.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxServings?: number
    /**
     * The minimum amount of calories the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minCalories?: number
    /**
     * The maximum amount of calories the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxCalories?: number
    /**
     * The minimum amount of carbohydrates in grams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minCarbs?: number
    /**
     * The maximum amount of carbohydrates in grams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxCarbs?: number
    /**
     * The minimum amount of protein in grams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minProtein?: number
    /**
     * The maximum amount of protein in grams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxProtein?: number
    /**
     * The minimum amount of fat in grams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minFat?: number
    /**
     * The maximum amount of fat in grams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxFat?: number
    /**
     * The minimum amount of sugar in grams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minSugar?: number
    /**
     * The maximum amount of sugar in grams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxSugar?: number
    /**
     * The minimum amount of fiber in grams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minFiber?: number
    /**
     * The maximum amount of fiber in grams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxFiber?: number
    /**
     * The minimum amount of folate in micrograms the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minFolate?: number
    /**
     * The maximum amount of folate in micrograms the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxFolate?: number
    /**
     * The minimum amount of folic acid in micrograms the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minFolicAcid?: number
    /**
     * The maximum amount of folic acid in micrograms the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxFolicAcid?: number
    /**
     * The minimum amount of iodine in micrograms the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minIodine?: number
    /**
     * The maximum amount of iodine in micrograms the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxIodine?: number
    /**
     * The minimum amount of iron in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minIron?: number
    /**
     * The maximum amount of iron in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxIron?: number
    /**
     * The minimum amount of zinc in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minZinc?: number
    /**
     * The maximum amount of zinc in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxZinc?: number
    /**
     * The minimum amount of magnesium in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minMagnesium?: number
    /**
     * The maximum amount of magnesium in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxMagnesium?: number
    /**
     * The minimum amount of manganese in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minManganese?: number
    /**
     * The maximum amount of manganese in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxManganese?: number
    /**
     * The minimum amount of phosphorus in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minPhosphorus?: number
    /**
     * The maximum amount of phosphorus in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxPhosphorus?: number
    /**
     * The minimum amount of potassium in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minPotassium?: number
    /**
     * The maximum amount of potassium in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxPotassium?: number
    /**
     * The minimum amount of sodium in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minSodium?: number
    /**
     * The maximum amount of sodium in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxSodium?: number
    /**
     * The minimum amount of selenium in micrograms the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minSelenium?: number
    /**
     * The maximum amount of selenium in micrograms the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxSelenium?: number
    /**
     * The minimum amount of copper in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minCopper?: number
    /**
     * The maximum amount of copper in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxCopper?: number
    /**
     * The minimum amount of calcium in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minCalcium?: number
    /**
     * The maximum amount of calcium in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxCalcium?: number
    /**
     * The minimum amount of choline in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minCholine?: number
    /**
     * The maximum amount of choline in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxCholine?: number
    /**
     * The minimum amount of cholesterol in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minCholesterol?: number
    /**
     * The maximum amount of cholesterol in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxCholesterol?: number
    /**
     * The minimum amount of fluoride in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minFluoride?: number
    /**
     * The maximum amount of fluoride in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxFluoride?: number
    /**
     * The minimum amount of alcohol in grams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minAlcohol?: number
    /**
     * The maximum amount of alcohol in grams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxAlcohol?: number
    /**
     * The minimum amount of caffeine in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minCaffeine?: number
    /**
     * The maximum amount of caffeine in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxCaffeine?: number
    /**
     * The minimum amount of saturated fat in grams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minSaturatedFat?: number
    /**
     * The maximum amount of saturated fat in grams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxSaturatedFat?: number
    /**
     * The minimum amount of Vitamin A in IU the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minVitaminA?: number
    /**
     * The maximum amount of Vitamin A in IU the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxVitaminA?: number
    /**
     * The minimum amount of Vitamin C in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minVitaminC?: number
    /**
     * The maximum amount of Vitamin C in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxVitaminC?: number
    /**
     * The minimum amount of Vitamin D in micrograms the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minVitaminD?: number
    /**
     * The maximum amount of Vitamin D in micrograms the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxVitaminD?: number
    /**
     * The minimum amount of Vitamin E in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minVitaminE?: number
    /**
     * The maximum amount of Vitamin E in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxVitaminE?: number
    /**
     * The minimum amount of Vitamin K in micrograms the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minVitaminK?: number
    /**
     * The maximum amount of Vitamin K in micrograms the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxVitaminK?: number
    /**
     * The minimum amount of Vitamin B1 in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minVitaminB1?: number
    /**
     * The maximum amount of Vitamin B1 in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxVitaminB1?: number
    /**
     * The minimum amount of Vitamin B2 in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minVitaminB2?: number
    /**
     * The maximum amount of Vitamin B2 in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxVitaminB2?: number
    /**
     * The minimum amount of Vitamin B3 in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minVitaminB3?: number
    /**
     * The maximum amount of Vitamin B3 in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxVitaminB3?: number
    /**
     * The minimum amount of Vitamin B5 in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minVitaminB5?: number
    /**
     * The maximum amount of Vitamin B5 in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxVitaminB5?: number
    /**
     * The minimum amount of Vitamin B6 in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minVitaminB6?: number
    /**
     * The maximum amount of Vitamin B6 in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxVitaminB6?: number
    /**
     * The minimum amount of Vitamin B12 in milligrams the recipe must have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    minVitaminB12?: number
    /**
     * The maximum amount of Vitamin B12 in milligrams the recipe can have per serving.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    maxVitaminB12?: number
    /**
     * The strategy to sort recipes by.
     * @type string
     * @memberof FoodApisearchRecipesAPI
     */
    sort?: string
    /**
     * Whether to sort ascending or descending (ASC or DESC).
     * @type string
     * @memberof FoodApisearchRecipesAPI
     */
    sortDirection?: string
    /**
     * The number of recipes to skip, between 0 and 900.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    offset?: number
    /**
     * The number of recipes, between 1 and 100.
     * @type number
     * @memberof FoodApisearchRecipesAPI
     */
    number?: number
}

export interface FoodApiSearchRestaurantsAPIRequest {
    /**
     * The latitude to search around.
     * @type number
     * @memberof FoodApisearchRestaurantsAPI
     */
    lat: number
    /**
     * The longitude to search around.
     * @type number
     * @memberof FoodApisearchRestaurantsAPI
     */
    lon: number
    /**
     * The search query.
     * @type string
     * @memberof FoodApisearchRestaurantsAPI
     */
    query?: string
    /**
     * The maximum distance of the restaurant in miles around the given location.
     * @type number
     * @memberof FoodApisearchRestaurantsAPI
     */
    distance?: number
    /**
     * The budget in USD for the meal.
     * @type number
     * @memberof FoodApisearchRestaurantsAPI
     */
    budget?: number
    /**
     * The minimum rating of the restaurants in range [0,5].
     * @type number
     * @memberof FoodApisearchRestaurantsAPI
     */
    minRating?: number
    /**
     * The cuisine that the restaurants should support.
     * @type string
     * @memberof FoodApisearchRestaurantsAPI
     */
    cuisine?: string
    /**
     * Whether the restaurants have to be open now.
     * @type boolean
     * @memberof FoodApisearchRestaurantsAPI
     */
    isOpen?: boolean
    /**
     * The page of the results.
     * @type number
     * @memberof FoodApisearchRestaurantsAPI
     */
    page?: number
    /**
     * The sort parameter, one of: cheapest, fastest, rating, distance or relevance.
     * @type string
     * @memberof FoodApisearchRestaurantsAPI
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
     * Compute Nutrition API
     * @param param the request object
     */
    public computeNutritionAPIWithHttpInfo(param: FoodApiComputeNutritionAPIRequest, options?: Configuration): Promise<HttpInfo<ComputeNutritionAPI200Response>> {
        return this.api.computeNutritionAPIWithHttpInfo(param.ingredients, param.servings, param.reduceOils,  options).toPromise();
    }

    /**
     * Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.
     * Compute Nutrition API
     * @param param the request object
     */
    public computeNutritionAPI(param: FoodApiComputeNutritionAPIRequest, options?: Configuration): Promise<ComputeNutritionAPI200Response> {
        return this.api.computeNutritionAPI(param.ingredients, param.servings, param.reduceOils,  options).toPromise();
    }

    /**
     * Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.
     * Retrieve Recipe Information API
     * @param param the request object
     */
    public retrieveRecipeInformationAPIWithHttpInfo(param: FoodApiRetrieveRecipeInformationAPIRequest, options?: Configuration): Promise<HttpInfo<RetrieveRecipeInformationAPI200Response>> {
        return this.api.retrieveRecipeInformationAPIWithHttpInfo(param.id, param.addWinePairing,  options).toPromise();
    }

    /**
     * Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.
     * Retrieve Recipe Information API
     * @param param the request object
     */
    public retrieveRecipeInformationAPI(param: FoodApiRetrieveRecipeInformationAPIRequest, options?: Configuration): Promise<RetrieveRecipeInformationAPI200Response> {
        return this.api.retrieveRecipeInformationAPI(param.id, param.addWinePairing,  options).toPromise();
    }

    /**
     * Search for drinks by title, ingredients, flavor, type of glass, alcohol content, and more.
     * Search Drinks API
     * @param param the request object
     */
    public searchDrinksAPIWithHttpInfo(param: FoodApiSearchDrinksAPIRequest = {}, options?: Configuration): Promise<HttpInfo<SearchDrinksAPI200Response>> {
        return this.api.searchDrinksAPIWithHttpInfo(param.query, param.glassTypes, param.flavors, param.diet, param.includeIngredients, param.excludeIngredients, param.minCalories, param.maxCalories, param.minCarbs, param.maxCarbs, param.minProtein, param.maxProtein, param.minFat, param.maxFat, param.minAlcoholPercent, param.maxAlcoholPercent, param.minCaffeine, param.maxCaffeine, param.sort, param.sortDirection, param.offset, param.number,  options).toPromise();
    }

    /**
     * Search for drinks by title, ingredients, flavor, type of glass, alcohol content, and more.
     * Search Drinks API
     * @param param the request object
     */
    public searchDrinksAPI(param: FoodApiSearchDrinksAPIRequest = {}, options?: Configuration): Promise<SearchDrinksAPI200Response> {
        return this.api.searchDrinksAPI(param.query, param.glassTypes, param.flavors, param.diet, param.includeIngredients, param.excludeIngredients, param.minCalories, param.maxCalories, param.minCarbs, param.maxCarbs, param.minProtein, param.maxProtein, param.minFat, param.maxFat, param.minAlcoholPercent, param.maxAlcoholPercent, param.minCaffeine, param.maxCaffeine, param.sort, param.sortDirection, param.offset, param.number,  options).toPromise();
    }

    /**
     * Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.
     * Search Recipes API
     * @param param the request object
     */
    public searchRecipesAPIWithHttpInfo(param: FoodApiSearchRecipesAPIRequest = {}, options?: Configuration): Promise<HttpInfo<SearchRecipesAPI200Response>> {
        return this.api.searchRecipesAPIWithHttpInfo(param.query, param.cuisines, param.excludeCuisines, param.mealType, param.diet, param.intolerances, param.equipment, param.includeIngredients, param.excludeIngredients, param.fillIngredients, param.addRecipeInformation, param.maxTime, param.minServings, param.maxServings, param.minCalories, param.maxCalories, param.minCarbs, param.maxCarbs, param.minProtein, param.maxProtein, param.minFat, param.maxFat, param.minSugar, param.maxSugar, param.minFiber, param.maxFiber, param.minFolate, param.maxFolate, param.minFolicAcid, param.maxFolicAcid, param.minIodine, param.maxIodine, param.minIron, param.maxIron, param.minZinc, param.maxZinc, param.minMagnesium, param.maxMagnesium, param.minManganese, param.maxManganese, param.minPhosphorus, param.maxPhosphorus, param.minPotassium, param.maxPotassium, param.minSodium, param.maxSodium, param.minSelenium, param.maxSelenium, param.minCopper, param.maxCopper, param.minCalcium, param.maxCalcium, param.minCholine, param.maxCholine, param.minCholesterol, param.maxCholesterol, param.minFluoride, param.maxFluoride, param.minAlcohol, param.maxAlcohol, param.minCaffeine, param.maxCaffeine, param.minSaturatedFat, param.maxSaturatedFat, param.minVitaminA, param.maxVitaminA, param.minVitaminC, param.maxVitaminC, param.minVitaminD, param.maxVitaminD, param.minVitaminE, param.maxVitaminE, param.minVitaminK, param.maxVitaminK, param.minVitaminB1, param.maxVitaminB1, param.minVitaminB2, param.maxVitaminB2, param.minVitaminB3, param.maxVitaminB3, param.minVitaminB5, param.maxVitaminB5, param.minVitaminB6, param.maxVitaminB6, param.minVitaminB12, param.maxVitaminB12, param.sort, param.sortDirection, param.offset, param.number,  options).toPromise();
    }

    /**
     * Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.
     * Search Recipes API
     * @param param the request object
     */
    public searchRecipesAPI(param: FoodApiSearchRecipesAPIRequest = {}, options?: Configuration): Promise<SearchRecipesAPI200Response> {
        return this.api.searchRecipesAPI(param.query, param.cuisines, param.excludeCuisines, param.mealType, param.diet, param.intolerances, param.equipment, param.includeIngredients, param.excludeIngredients, param.fillIngredients, param.addRecipeInformation, param.maxTime, param.minServings, param.maxServings, param.minCalories, param.maxCalories, param.minCarbs, param.maxCarbs, param.minProtein, param.maxProtein, param.minFat, param.maxFat, param.minSugar, param.maxSugar, param.minFiber, param.maxFiber, param.minFolate, param.maxFolate, param.minFolicAcid, param.maxFolicAcid, param.minIodine, param.maxIodine, param.minIron, param.maxIron, param.minZinc, param.maxZinc, param.minMagnesium, param.maxMagnesium, param.minManganese, param.maxManganese, param.minPhosphorus, param.maxPhosphorus, param.minPotassium, param.maxPotassium, param.minSodium, param.maxSodium, param.minSelenium, param.maxSelenium, param.minCopper, param.maxCopper, param.minCalcium, param.maxCalcium, param.minCholine, param.maxCholine, param.minCholesterol, param.maxCholesterol, param.minFluoride, param.maxFluoride, param.minAlcohol, param.maxAlcohol, param.minCaffeine, param.maxCaffeine, param.minSaturatedFat, param.maxSaturatedFat, param.minVitaminA, param.maxVitaminA, param.minVitaminC, param.maxVitaminC, param.minVitaminD, param.maxVitaminD, param.minVitaminE, param.maxVitaminE, param.minVitaminK, param.maxVitaminK, param.minVitaminB1, param.maxVitaminB1, param.minVitaminB2, param.maxVitaminB2, param.minVitaminB3, param.maxVitaminB3, param.minVitaminB5, param.maxVitaminB5, param.minVitaminB6, param.maxVitaminB6, param.minVitaminB12, param.maxVitaminB12, param.sort, param.sortDirection, param.offset, param.number,  options).toPromise();
    }

    /**
     * Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
     * Search Restaurants API
     * @param param the request object
     */
    public searchRestaurantsAPIWithHttpInfo(param: FoodApiSearchRestaurantsAPIRequest, options?: Configuration): Promise<HttpInfo<SearchRestaurantsAPI200Response>> {
        return this.api.searchRestaurantsAPIWithHttpInfo(param.lat, param.lon, param.query, param.distance, param.budget, param.minRating, param.cuisine, param.isOpen, param.page, param.sort,  options).toPromise();
    }

    /**
     * Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
     * Search Restaurants API
     * @param param the request object
     */
    public searchRestaurantsAPI(param: FoodApiSearchRestaurantsAPIRequest, options?: Configuration): Promise<SearchRestaurantsAPI200Response> {
        return this.api.searchRestaurantsAPI(param.lat, param.lon, param.query, param.distance, param.budget, param.minRating, param.cuisine, param.isOpen, param.page, param.sort,  options).toPromise();
    }

}

import { ObservableHumorApi } from "./ObservableAPI";
import { HumorApiRequestFactory, HumorApiResponseProcessor} from "../apis/HumorApi";

export interface HumorApiGenerateNonsenseWordAPIRequest {
}

export interface HumorApiRandomJokeAPIRequest {
    /**
     * A comma-separated list of tags the jokes should have.
     * @type string
     * @memberof HumorApirandomJokeAPI
     */
    includeTags?: string
    /**
     * A comma-separated list of tags the jokes must not have.
     * @type string
     * @memberof HumorApirandomJokeAPI
     */
    excludeTags?: string
    /**
     * The minimum rating in range [0.0,1.0] of the jokes.
     * @type number
     * @memberof HumorApirandomJokeAPI
     */
    minRating?: number
    /**
     * The maximum length of the joke in letters.
     * @type number
     * @memberof HumorApirandomJokeAPI
     */
    maxLength?: number
}

export interface HumorApiRandomMemeAPIRequest {
    /**
     * A comma-separated list of words that must occur in the meme.
     * @type string
     * @memberof HumorApirandomMemeAPI
     */
    keywords?: string
    /**
     * Whether the keywords must occur in the image.
     * @type boolean
     * @memberof HumorApirandomMemeAPI
     */
    keywordsInImage?: boolean
    /**
     * The media type (either \&#39;image\&#39;, \&#39;video\&#39; or even specific format such as \&#39;jpg\&#39;, \&#39;png\&#39;, or \&#39;gif\&#39;).
     * @type string
     * @memberof HumorApirandomMemeAPI
     */
    mediaType?: string
    /**
     * The minimum rating in range [0.0,1.0] of the meme.
     * @type number
     * @memberof HumorApirandomMemeAPI
     */
    minRating?: number
    /**
     * The maximum age of the meme in days.
     * @type number
     * @memberof HumorApirandomMemeAPI
     */
    maxAgeDays?: number
}

export interface HumorApiSearchGifsAPIRequest {
    /**
     * The search query.
     * @type string
     * @memberof HumorApisearchGifsAPI
     */
    query: string
    /**
     * The number of gifs to return in range [1,10]
     * @type number
     * @memberof HumorApisearchGifsAPI
     */
    number?: number
}

export interface HumorApiSearchJokesAPIRequest {
    /**
     * A comma-separated list of words that must occur in the joke.
     * @type string
     * @memberof HumorApisearchJokesAPI
     */
    keywords?: string
    /**
     * A comma-separated list of tags the jokes should have.
     * @type string
     * @memberof HumorApisearchJokesAPI
     */
    includeTags?: string
    /**
     * A comma-separated list of tags the jokes must not have.
     * @type string
     * @memberof HumorApisearchJokesAPI
     */
    excludeTags?: string
    /**
     * The minimum rating in range [0.0,1.0] of the jokes.
     * @type number
     * @memberof HumorApisearchJokesAPI
     */
    minRating?: number
    /**
     * The maximum length of the joke in letters.
     * @type number
     * @memberof HumorApisearchJokesAPI
     */
    maxLength?: number
    /**
     * The number of jokes to skip, between 0 and 1000.
     * @type number
     * @memberof HumorApisearchJokesAPI
     */
    offset?: number
    /**
     * The number of jokes, between 1 and 10.
     * @type number
     * @memberof HumorApisearchJokesAPI
     */
    number?: number
}

export interface HumorApiSearchMemesAPIRequest {
    /**
     * A comma-separated list of words that must occur in the meme.
     * @type string
     * @memberof HumorApisearchMemesAPI
     */
    keywords?: string
    /**
     * Whether the keywords must occur in the image.
     * @type boolean
     * @memberof HumorApisearchMemesAPI
     */
    keywordsInImage?: boolean
    /**
     * The media type (either \&#39;image\&#39;, \&#39;video\&#39; or even specific format such as \&#39;jpg\&#39;, \&#39;png\&#39;, or \&#39;gif\&#39;).
     * @type string
     * @memberof HumorApisearchMemesAPI
     */
    mediaType?: string
    /**
     * The minimum rating in range [0.0,1.0] of the meme.
     * @type number
     * @memberof HumorApisearchMemesAPI
     */
    minRating?: number
    /**
     * The maximum age of the meme in days.
     * @type number
     * @memberof HumorApisearchMemesAPI
     */
    maxAgeDays?: number
    /**
     * The number of memes to skip, between 0 and 1000.
     * @type number
     * @memberof HumorApisearchMemesAPI
     */
    offset?: number
    /**
     * The number of memes, between 1 and 10.
     * @type number
     * @memberof HumorApisearchMemesAPI
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
     * Generate Nonsense Word API
     * @param param the request object
     */
    public generateNonsenseWordAPIWithHttpInfo(param: HumorApiGenerateNonsenseWordAPIRequest = {}, options?: Configuration): Promise<HttpInfo<GenerateNonsenseWordAPI200Response>> {
        return this.api.generateNonsenseWordAPIWithHttpInfo( options).toPromise();
    }

    /**
     * Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
     * Generate Nonsense Word API
     * @param param the request object
     */
    public generateNonsenseWordAPI(param: HumorApiGenerateNonsenseWordAPIRequest = {}, options?: Configuration): Promise<GenerateNonsenseWordAPI200Response> {
        return this.api.generateNonsenseWordAPI( options).toPromise();
    }

    /**
     * This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
     * Random Joke API
     * @param param the request object
     */
    public randomJokeAPIWithHttpInfo(param: HumorApiRandomJokeAPIRequest = {}, options?: Configuration): Promise<HttpInfo<SearchJokesAPI200ResponseJokesInner>> {
        return this.api.randomJokeAPIWithHttpInfo(param.includeTags, param.excludeTags, param.minRating, param.maxLength,  options).toPromise();
    }

    /**
     * This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
     * Random Joke API
     * @param param the request object
     */
    public randomJokeAPI(param: HumorApiRandomJokeAPIRequest = {}, options?: Configuration): Promise<SearchJokesAPI200ResponseJokesInner> {
        return this.api.randomJokeAPI(param.includeTags, param.excludeTags, param.minRating, param.maxLength,  options).toPromise();
    }

    /**
     * Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter.
     * Random Meme API
     * @param param the request object
     */
    public randomMemeAPIWithHttpInfo(param: HumorApiRandomMemeAPIRequest = {}, options?: Configuration): Promise<HttpInfo<RandomMemeAPI200Response>> {
        return this.api.randomMemeAPIWithHttpInfo(param.keywords, param.keywordsInImage, param.mediaType, param.minRating, param.maxAgeDays,  options).toPromise();
    }

    /**
     * Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter.
     * Random Meme API
     * @param param the request object
     */
    public randomMemeAPI(param: HumorApiRandomMemeAPIRequest = {}, options?: Configuration): Promise<RandomMemeAPI200Response> {
        return this.api.randomMemeAPI(param.keywords, param.keywordsInImage, param.mediaType, param.minRating, param.maxAgeDays,  options).toPromise();
    }

    /**
     * Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
     * Search Gifs API
     * @param param the request object
     */
    public searchGifsAPIWithHttpInfo(param: HumorApiSearchGifsAPIRequest, options?: Configuration): Promise<HttpInfo<SearchGifsAPI200Response>> {
        return this.api.searchGifsAPIWithHttpInfo(param.query, param.number,  options).toPromise();
    }

    /**
     * Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
     * Search Gifs API
     * @param param the request object
     */
    public searchGifsAPI(param: HumorApiSearchGifsAPIRequest, options?: Configuration): Promise<SearchGifsAPI200Response> {
        return this.api.searchGifsAPI(param.query, param.number,  options).toPromise();
    }

    /**
     * With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
     * Search Jokes API
     * @param param the request object
     */
    public searchJokesAPIWithHttpInfo(param: HumorApiSearchJokesAPIRequest = {}, options?: Configuration): Promise<HttpInfo<SearchJokesAPI200Response>> {
        return this.api.searchJokesAPIWithHttpInfo(param.keywords, param.includeTags, param.excludeTags, param.minRating, param.maxLength, param.offset, param.number,  options).toPromise();
    }

    /**
     * With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
     * Search Jokes API
     * @param param the request object
     */
    public searchJokesAPI(param: HumorApiSearchJokesAPIRequest = {}, options?: Configuration): Promise<SearchJokesAPI200Response> {
        return this.api.searchJokesAPI(param.keywords, param.includeTags, param.excludeTags, param.minRating, param.maxLength, param.offset, param.number,  options).toPromise();
    }

    /**
     * Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You\'ll surely find something funny.
     * Search Memes API
     * @param param the request object
     */
    public searchMemesAPIWithHttpInfo(param: HumorApiSearchMemesAPIRequest = {}, options?: Configuration): Promise<HttpInfo<SearchMemesAPI200Response>> {
        return this.api.searchMemesAPIWithHttpInfo(param.keywords, param.keywordsInImage, param.mediaType, param.minRating, param.maxAgeDays, param.offset, param.number,  options).toPromise();
    }

    /**
     * Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You\'ll surely find something funny.
     * Search Memes API
     * @param param the request object
     */
    public searchMemesAPI(param: HumorApiSearchMemesAPIRequest = {}, options?: Configuration): Promise<SearchMemesAPI200Response> {
        return this.api.searchMemesAPI(param.keywords, param.keywordsInImage, param.mediaType, param.minRating, param.maxAgeDays, param.offset, param.number,  options).toPromise();
    }

}

import { ObservableKnowledgeApi } from "./ObservableAPI";
import { KnowledgeApiRequestFactory, KnowledgeApiResponseProcessor} from "../apis/KnowledgeApi";

export interface KnowledgeApiRandomQuoteAPIRequest {
    /**
     * The minimum length of the quote in letters.
     * @type number
     * @memberof KnowledgeApirandomQuoteAPI
     */
    minLength?: number
    /**
     * The maximum length of the quote in letters.
     * @type number
     * @memberof KnowledgeApirandomQuoteAPI
     */
    maxLength?: number
}

export interface KnowledgeApiRandomRiddleAPIRequest {
    /**
     * The difficulty of the riddle, either \&quot;easy\&quot;, \&quot;medium\&quot;, or \&quot;hard\&quot;.
     * @type string
     * @memberof KnowledgeApirandomRiddleAPI
     */
    difficulty?: string
}

export interface KnowledgeApiRandomTriviaAPIRequest {
    /**
     * The maximum length of the trivia in letters.
     * @type number
     * @memberof KnowledgeApirandomTriviaAPI
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
     * Random Quote API
     * @param param the request object
     */
    public randomQuoteAPIWithHttpInfo(param: KnowledgeApiRandomQuoteAPIRequest = {}, options?: Configuration): Promise<HttpInfo<RandomQuoteAPI200Response>> {
        return this.api.randomQuoteAPIWithHttpInfo(param.minLength, param.maxLength,  options).toPromise();
    }

    /**
     * This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.
     * Random Quote API
     * @param param the request object
     */
    public randomQuoteAPI(param: KnowledgeApiRandomQuoteAPIRequest = {}, options?: Configuration): Promise<RandomQuoteAPI200Response> {
        return this.api.randomQuoteAPI(param.minLength, param.maxLength,  options).toPromise();
    }

    /**
     * The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.
     * Random Riddle API
     * @param param the request object
     */
    public randomRiddleAPIWithHttpInfo(param: KnowledgeApiRandomRiddleAPIRequest = {}, options?: Configuration): Promise<HttpInfo<RandomRiddleAPI200Response>> {
        return this.api.randomRiddleAPIWithHttpInfo(param.difficulty,  options).toPromise();
    }

    /**
     * The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.
     * Random Riddle API
     * @param param the request object
     */
    public randomRiddleAPI(param: KnowledgeApiRandomRiddleAPIRequest = {}, options?: Configuration): Promise<RandomRiddleAPI200Response> {
        return this.api.randomRiddleAPI(param.difficulty,  options).toPromise();
    }

    /**
     * This endpoint returns a random piece of trivia like \"Rio de Janeiro was once the capital of Portugal, making it the only European capital outside of Europe.\".
     * Random Trivia API
     * @param param the request object
     */
    public randomTriviaAPIWithHttpInfo(param: KnowledgeApiRandomTriviaAPIRequest = {}, options?: Configuration): Promise<HttpInfo<RandomTriviaAPI200Response>> {
        return this.api.randomTriviaAPIWithHttpInfo(param.maxLength,  options).toPromise();
    }

    /**
     * This endpoint returns a random piece of trivia like \"Rio de Janeiro was once the capital of Portugal, making it the only European capital outside of Europe.\".
     * Random Trivia API
     * @param param the request object
     */
    public randomTriviaAPI(param: KnowledgeApiRandomTriviaAPIRequest = {}, options?: Configuration): Promise<RandomTriviaAPI200Response> {
        return this.api.randomTriviaAPI(param.maxLength,  options).toPromise();
    }

}

import { ObservableMathApi } from "./ObservableAPI";
import { MathApiRequestFactory, MathApiResponseProcessor} from "../apis/MathApi";

export interface MathApiConvertUnitsAPIRequest {
    /**
     * The source amount.
     * @type number
     * @memberof MathApiconvertUnitsAPI
     */
    sourceAmount: number
    /**
     * The source unit.
     * @type string
     * @memberof MathApiconvertUnitsAPI
     */
    sourceUnit: string
    /**
     * The unit to which should be converted.
     * @type string
     * @memberof MathApiconvertUnitsAPI
     */
    targetUnit: string
    /**
     * An optional food name. For converting foods the food is relevant as they have different densities.
     * @type string
     * @memberof MathApiconvertUnitsAPI
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
     * Convert Units API
     * @param param the request object
     */
    public convertUnitsAPIWithHttpInfo(param: MathApiConvertUnitsAPIRequest, options?: Configuration): Promise<HttpInfo<ConvertUnitsAPI200Response>> {
        return this.api.convertUnitsAPIWithHttpInfo(param.sourceAmount, param.sourceUnit, param.targetUnit, param.foodName,  options).toPromise();
    }

    /**
     * Convert units from one to another. The API returns the amount and the unit of the target unit.
     * Convert Units API
     * @param param the request object
     */
    public convertUnitsAPI(param: MathApiConvertUnitsAPIRequest, options?: Configuration): Promise<ConvertUnitsAPI200Response> {
        return this.api.convertUnitsAPI(param.sourceAmount, param.sourceUnit, param.targetUnit, param.foodName,  options).toPromise();
    }

}

import { ObservableMediaApi } from "./ObservableAPI";
import { MediaApiRequestFactory, MediaApiResponseProcessor} from "../apis/MediaApi";

export interface MediaApiDetectMainImageColorAPIRequest {
    /**
     * The url of the image for which the colors should be detected.
     * @type string
     * @memberof MediaApidetectMainImageColorAPI
     */
    url: string
}

export interface MediaApiRescaleImageAPIRequest {
    /**
     * The url of the image to be rescaled.
     * @type string
     * @memberof MediaApirescaleImageAPI
     */
    url: string
    /**
     * The desired width of the rescaled image.
     * @type number
     * @memberof MediaApirescaleImageAPI
     */
    width: number
    /**
     * The desired height of the rescaled image.
     * @type number
     * @memberof MediaApirescaleImageAPI
     */
    height: number
    /**
     * Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
     * @type boolean
     * @memberof MediaApirescaleImageAPI
     */
    crop: boolean
}

export interface MediaApiSearchIconsAPIRequest {
    /**
     * The search query.
     * @type string
     * @memberof MediaApisearchIconsAPI
     */
    query: string
    /**
     * If true, only public domain icons will be returned.
     * @type boolean
     * @memberof MediaApisearchIconsAPI
     */
    onlyPublicDomain?: boolean
    /**
     * The number of icons to return in range [1,100]
     * @type number
     * @memberof MediaApisearchIconsAPI
     */
    number?: number
}

export interface MediaApiSearchRoyaltyFreeImagesAPIRequest {
    /**
     * The search query.
     * @type string
     * @memberof MediaApisearchRoyaltyFreeImagesAPI
     */
    query: string
    /**
     * The number of images to return in range [1,100]
     * @type number
     * @memberof MediaApisearchRoyaltyFreeImagesAPI
     */
    number?: number
}

export interface MediaApiVectorSearchAPIRequest {
    /**
     * The search query.
     * @type string
     * @memberof MediaApivectorSearchAPI
     */
    query: string
    /**
     * The number of vectors to skip, between 0 and 1000
     * @type number
     * @memberof MediaApivectorSearchAPI
     */
    offset?: number
    /**
     * The number of vectors to return in range [1,10]
     * @type number
     * @memberof MediaApivectorSearchAPI
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
     * Detect Main Image Color API
     * @param param the request object
     */
    public detectMainImageColorAPIWithHttpInfo(param: MediaApiDetectMainImageColorAPIRequest, options?: Configuration): Promise<HttpInfo<Array<DetectMainImageColorAPI200ResponseInner>>> {
        return this.api.detectMainImageColorAPIWithHttpInfo(param.url,  options).toPromise();
    }

    /**
     * Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
     * Detect Main Image Color API
     * @param param the request object
     */
    public detectMainImageColorAPI(param: MediaApiDetectMainImageColorAPIRequest, options?: Configuration): Promise<Array<DetectMainImageColorAPI200ResponseInner>> {
        return this.api.detectMainImageColorAPI(param.url,  options).toPromise();
    }

    /**
     * Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
     * Rescale Image API
     * @param param the request object
     */
    public rescaleImageAPIWithHttpInfo(param: MediaApiRescaleImageAPIRequest, options?: Configuration): Promise<HttpInfo<HttpFile>> {
        return this.api.rescaleImageAPIWithHttpInfo(param.url, param.width, param.height, param.crop,  options).toPromise();
    }

    /**
     * Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
     * Rescale Image API
     * @param param the request object
     */
    public rescaleImageAPI(param: MediaApiRescaleImageAPIRequest, options?: Configuration): Promise<HttpFile> {
        return this.api.rescaleImageAPI(param.url, param.width, param.height, param.crop,  options).toPromise();
    }

    /**
     * Search through millions of icons to match any topic you want.
     * Search Icons API
     * @param param the request object
     */
    public searchIconsAPIWithHttpInfo(param: MediaApiSearchIconsAPIRequest, options?: Configuration): Promise<HttpInfo<SearchIconsAPI200Response>> {
        return this.api.searchIconsAPIWithHttpInfo(param.query, param.onlyPublicDomain, param.number,  options).toPromise();
    }

    /**
     * Search through millions of icons to match any topic you want.
     * Search Icons API
     * @param param the request object
     */
    public searchIconsAPI(param: MediaApiSearchIconsAPIRequest, options?: Configuration): Promise<SearchIconsAPI200Response> {
        return this.api.searchIconsAPI(param.query, param.onlyPublicDomain, param.number,  options).toPromise();
    }

    /**
     * Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
     * Search Royalty Free Images API
     * @param param the request object
     */
    public searchRoyaltyFreeImagesAPIWithHttpInfo(param: MediaApiSearchRoyaltyFreeImagesAPIRequest, options?: Configuration): Promise<HttpInfo<SearchRoyaltyFreeImagesAPI200Response>> {
        return this.api.searchRoyaltyFreeImagesAPIWithHttpInfo(param.query, param.number,  options).toPromise();
    }

    /**
     * Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
     * Search Royalty Free Images API
     * @param param the request object
     */
    public searchRoyaltyFreeImagesAPI(param: MediaApiSearchRoyaltyFreeImagesAPIRequest, options?: Configuration): Promise<SearchRoyaltyFreeImagesAPI200Response> {
        return this.api.searchRoyaltyFreeImagesAPI(param.query, param.number,  options).toPromise();
    }

    /**
     * Search through over 700,000 free to use vector icons. The license is either \"PUBLIC_DOMAIN\" or \"ATTRIBUTION\". If it is \"ATTRIBUTION\" just attribute the author somewhere in your project.
     * Vector Search API
     * @param param the request object
     */
    public vectorSearchAPIWithHttpInfo(param: MediaApiVectorSearchAPIRequest, options?: Configuration): Promise<HttpInfo<VectorSearchAPI200Response>> {
        return this.api.vectorSearchAPIWithHttpInfo(param.query, param.offset, param.number,  options).toPromise();
    }

    /**
     * Search through over 700,000 free to use vector icons. The license is either \"PUBLIC_DOMAIN\" or \"ATTRIBUTION\". If it is \"ATTRIBUTION\" just attribute the author somewhere in your project.
     * Vector Search API
     * @param param the request object
     */
    public vectorSearchAPI(param: MediaApiVectorSearchAPIRequest, options?: Configuration): Promise<VectorSearchAPI200Response> {
        return this.api.vectorSearchAPI(param.query, param.offset, param.number,  options).toPromise();
    }

}

import { ObservableNewsApi } from "./ObservableAPI";
import { NewsApiRequestFactory, NewsApiResponseProcessor} from "../apis/NewsApi";

export interface NewsApiExtractNewsAPIRequest {
    /**
     * The url of the news.
     * @type string
     * @memberof NewsApiextractNewsAPI
     */
    url: string
    /**
     * Whether to analyze the news (extract entities etc.)
     * @type boolean
     * @memberof NewsApiextractNewsAPI
     */
    analyze: boolean
}

export interface NewsApiSearchNewsAPIRequest {
    /**
     * The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford.
     * @type string
     * @memberof NewsApisearchNewsAPI
     */
    text?: string
    /**
     * A comma-separated list of ISO 3166 country codes from which the news should originate.
     * @type string
     * @memberof NewsApisearchNewsAPI
     */
    sourceCountries?: string
    /**
     * The ISO 6391 language code of the news.
     * @type string
     * @memberof NewsApisearchNewsAPI
     */
    language?: string
    /**
     * The minimal sentiment of the news in range [-1,1].
     * @type number
     * @memberof NewsApisearchNewsAPI
     */
    minSentiment?: number
    /**
     * The maximal sentiment of the news in range [-1,1].
     * @type number
     * @memberof NewsApisearchNewsAPI
     */
    maxSentiment?: number
    /**
     * The news must have been published after this date.
     * @type string
     * @memberof NewsApisearchNewsAPI
     */
    earliestPublishDate?: string
    /**
     * The news must have been published before this date.
     * @type string
     * @memberof NewsApisearchNewsAPI
     */
    latestPublishDate?: string
    /**
     * A comma-separated list of news sources from which the news should originate.
     * @type string
     * @memberof NewsApisearchNewsAPI
     */
    newsSources?: string
    /**
     * A comma-separated list of author names. Only news from any of the given authors will be returned.
     * @type string
     * @memberof NewsApisearchNewsAPI
     */
    authors?: string
    /**
     * A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other.
     * @type string
     * @memberof NewsApisearchNewsAPI
     */
    categories?: string
    /**
     * Filter news by entities (ORG, PER, or LOC).
     * @type string
     * @memberof NewsApisearchNewsAPI
     */
    entities?: string
    /**
     * Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;
     * @type string
     * @memberof NewsApisearchNewsAPI
     */
    locationFilter?: string
    /**
     * The sorting criteria (publish-time).
     * @type string
     * @memberof NewsApisearchNewsAPI
     */
    sort?: string
    /**
     * Whether to sort ascending or descending (ASC or DESC).
     * @type string
     * @memberof NewsApisearchNewsAPI
     */
    sortDirection?: string
    /**
     * The number of news to skip in range [0,10000]
     * @type number
     * @memberof NewsApisearchNewsAPI
     */
    offset?: number
    /**
     * The number of news to return in range [1,100]
     * @type number
     * @memberof NewsApisearchNewsAPI
     */
    number?: number
}

export interface NewsApiTopNewsAPIRequest {
    /**
     * The ISO 3166 country code of the country for which top news should be retrieved.
     * @type string
     * @memberof NewsApitopNewsAPI
     */
    sourceCountry: string
    /**
     * The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
     * @type string
     * @memberof NewsApitopNewsAPI
     */
    language: string
    /**
     * The date for which the top news should be retrieved. If no date is given, the current day is assumed.
     * @type string
     * @memberof NewsApitopNewsAPI
     */
    date?: string
    /**
     * Whether to only return basic information such as id, title, and url of the news.
     * @type boolean
     * @memberof NewsApitopNewsAPI
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
     * Extract News API
     * @param param the request object
     */
    public extractNewsAPIWithHttpInfo(param: NewsApiExtractNewsAPIRequest, options?: Configuration): Promise<HttpInfo<ExtractNewsAPI200Response>> {
        return this.api.extractNewsAPIWithHttpInfo(param.url, param.analyze,  options).toPromise();
    }

    /**
     * Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
     * Extract News API
     * @param param the request object
     */
    public extractNewsAPI(param: NewsApiExtractNewsAPIRequest, options?: Configuration): Promise<ExtractNewsAPI200Response> {
        return this.api.extractNewsAPI(param.url, param.analyze,  options).toPromise();
    }

    /**
     * Search and filter millions of news from over 200 countries in 90 languages by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
     * Search News API
     * @param param the request object
     */
    public searchNewsAPIWithHttpInfo(param: NewsApiSearchNewsAPIRequest = {}, options?: Configuration): Promise<HttpInfo<SearchNewsAPI200Response>> {
        return this.api.searchNewsAPIWithHttpInfo(param.text, param.sourceCountries, param.language, param.minSentiment, param.maxSentiment, param.earliestPublishDate, param.latestPublishDate, param.newsSources, param.authors, param.categories, param.entities, param.locationFilter, param.sort, param.sortDirection, param.offset, param.number,  options).toPromise();
    }

    /**
     * Search and filter millions of news from over 200 countries in 90 languages by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
     * Search News API
     * @param param the request object
     */
    public searchNewsAPI(param: NewsApiSearchNewsAPIRequest = {}, options?: Configuration): Promise<SearchNewsAPI200Response> {
        return this.api.searchNewsAPI(param.text, param.sourceCountries, param.language, param.minSentiment, param.maxSentiment, param.earliestPublishDate, param.latestPublishDate, param.newsSources, param.authors, param.categories, param.entities, param.locationFilter, param.sort, param.sortDirection, param.offset, param.number,  options).toPromise();
    }

    /**
     * Get the top news from a country (over 220 are supported) in a language (over 90 are supported) for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
     * Top News API
     * @param param the request object
     */
    public topNewsAPIWithHttpInfo(param: NewsApiTopNewsAPIRequest, options?: Configuration): Promise<HttpInfo<TopNewsAPI200Response>> {
        return this.api.topNewsAPIWithHttpInfo(param.sourceCountry, param.language, param.date, param.headlinesOnly,  options).toPromise();
    }

    /**
     * Get the top news from a country (over 220 are supported) in a language (over 90 are supported) for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
     * Top News API
     * @param param the request object
     */
    public topNewsAPI(param: NewsApiTopNewsAPIRequest, options?: Configuration): Promise<TopNewsAPI200Response> {
        return this.api.topNewsAPI(param.sourceCountry, param.language, param.date, param.headlinesOnly,  options).toPromise();
    }

}

import { ObservableStorageApi } from "./ObservableAPI";
import { StorageApiRequestFactory, StorageApiResponseProcessor} from "../apis/StorageApi";

export interface StorageApiReadKeyValueFromStoreAPIRequest {
    /**
     * The key for which the value is stored (max length 255 characters).
     * @type string
     * @memberof StorageApireadKeyValueFromStoreAPI
     */
    key: string
}

export interface StorageApiStoreKeyValueGETAPIRequest {
    /**
     * The key for which the value is stored (max length 255 characters).
     * @type string
     * @memberof StorageApistoreKeyValueGETAPI
     */
    key: string
    /**
     * The value that is supposed to be stored (max length 10,000 characters).
     * @type string
     * @memberof StorageApistoreKeyValueGETAPI
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
     * Read Key Value from Store API
     * @param param the request object
     */
    public readKeyValueFromStoreAPIWithHttpInfo(param: StorageApiReadKeyValueFromStoreAPIRequest, options?: Configuration): Promise<HttpInfo<ReadKeyValueFromStoreAPI200Response>> {
        return this.api.readKeyValueFromStoreAPIWithHttpInfo(param.key,  options).toPromise();
    }

    /**
     * Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
     * Read Key Value from Store API
     * @param param the request object
     */
    public readKeyValueFromStoreAPI(param: StorageApiReadKeyValueFromStoreAPIRequest, options?: Configuration): Promise<ReadKeyValueFromStoreAPI200Response> {
        return this.api.readKeyValueFromStoreAPI(param.key,  options).toPromise();
    }

    /**
     * Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
     * Store Key Value (GET) API
     * @param param the request object
     */
    public storeKeyValueGETAPIWithHttpInfo(param: StorageApiStoreKeyValueGETAPIRequest, options?: Configuration): Promise<HttpInfo<StoreKeyValueGETAPI200Response>> {
        return this.api.storeKeyValueGETAPIWithHttpInfo(param.key, param.value,  options).toPromise();
    }

    /**
     * Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
     * Store Key Value (GET) API
     * @param param the request object
     */
    public storeKeyValueGETAPI(param: StorageApiStoreKeyValueGETAPIRequest, options?: Configuration): Promise<StoreKeyValueGETAPI200Response> {
        return this.api.storeKeyValueGETAPI(param.key, param.value,  options).toPromise();
    }

}

import { ObservableTextApi } from "./ObservableAPI";
import { TextApiRequestFactory, TextApiResponseProcessor} from "../apis/TextApi";

export interface TextApiCorrectSpellingAPIRequest {
    /**
     * The text to be corrected.
     * @type string
     * @memberof TextApicorrectSpellingAPI
     */
    text: string
    /**
     * The language of the text, one of en, de, es, fr, or it.
     * @type string
     * @memberof TextApicorrectSpellingAPI
     */
    language: string
}

export interface TextApiDetectGenderByNameAPIRequest {
    /**
     * The name of the perso for which the sentiment should be detected.
     * @type string
     * @memberof TextApidetectGenderByNameAPI
     */
    name: string
}

export interface TextApiDetectLanguageAPIRequest {
    /**
     * The text for which the language should be detected.
     * @type string
     * @memberof TextApidetectLanguageAPI
     */
    text: string
}

export interface TextApiDetectSentimentAPIRequest {
    /**
     * The text for which the sentiment should be detected.
     * @type string
     * @memberof TextApidetectSentimentAPI
     */
    text: string
}

export interface TextApiExtractDatesAPIRequest {
    /**
     * The text from which dates should be extracted.
     * @type string
     * @memberof TextApiextractDatesAPI
     */
    text: string
}

export interface TextApiExtractEntitiesAPIRequest {
    /**
     * The text from which entities should be extracted.
     * @type string
     * @memberof TextApiextractEntitiesAPI
     */
    text: string
}

export interface TextApiListWordSynonymsAPIRequest {
    /**
     * The (noun) word for which a list of synonyms should be returned.
     * @type string
     * @memberof TextApilistWordSynonymsAPI
     */
    word: string
}

export interface TextApiPluralizeWordAPIRequest {
    /**
     * The (noun) word for which the plural form should be found.
     * @type string
     * @memberof TextApipluralizeWordAPI
     */
    word: string
}

export interface TextApiScoreReadabilityAPIRequest {
    /**
     * The text to score for readability.
     * @type string
     * @memberof TextApiscoreReadabilityAPI
     */
    text: string
}

export interface TextApiScoreTextAPIRequest {
    /**
     * The title of the text to score.
     * @type string
     * @memberof TextApiscoreTextAPI
     */
    title: string
    /**
     * The text to score for multiple metrics.
     * @type string
     * @memberof TextApiscoreTextAPI
     */
    text: string
}

export interface TextApiSingularizeWordAPIRequest {
    /**
     * The (noun) word for which the singular form should be found.
     * @type string
     * @memberof TextApisingularizeWordAPI
     */
    word: string
}

export interface TextApiStemTextAPIRequest {
    /**
     * The text to be stemmed.
     * @type string
     * @memberof TextApistemTextAPI
     */
    text: string
}

export interface TextApiTagPartOfSpeechAPIRequest {
    /**
     * The text to tag the part of speech.
     * @type string
     * @memberof TextApitagPartOfSpeechAPI
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
     * Correct Spelling API
     * @param param the request object
     */
    public correctSpellingAPIWithHttpInfo(param: TextApiCorrectSpellingAPIRequest, options?: Configuration): Promise<HttpInfo<CorrectSpellingAPI200Response>> {
        return this.api.correctSpellingAPIWithHttpInfo(param.text, param.language,  options).toPromise();
    }

    /**
     * The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).
     * Correct Spelling API
     * @param param the request object
     */
    public correctSpellingAPI(param: TextApiCorrectSpellingAPIRequest, options?: Configuration): Promise<CorrectSpellingAPI200Response> {
        return this.api.correctSpellingAPI(param.text, param.language,  options).toPromise();
    }

    /**
     * Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.
     * Detect Gender by Name API
     * @param param the request object
     */
    public detectGenderByNameAPIWithHttpInfo(param: TextApiDetectGenderByNameAPIRequest, options?: Configuration): Promise<HttpInfo<DetectGenderByNameAPI200Response>> {
        return this.api.detectGenderByNameAPIWithHttpInfo(param.name,  options).toPromise();
    }

    /**
     * Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.
     * Detect Gender by Name API
     * @param param the request object
     */
    public detectGenderByNameAPI(param: TextApiDetectGenderByNameAPIRequest, options?: Configuration): Promise<DetectGenderByNameAPI200Response> {
        return this.api.detectGenderByNameAPI(param.name,  options).toPromise();
    }

    /**
     * Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
     * Detect Language API
     * @param param the request object
     */
    public detectLanguageAPIWithHttpInfo(param: TextApiDetectLanguageAPIRequest, options?: Configuration): Promise<HttpInfo<Array<DetectLanguageAPI200ResponseInner>>> {
        return this.api.detectLanguageAPIWithHttpInfo(param.text,  options).toPromise();
    }

    /**
     * Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
     * Detect Language API
     * @param param the request object
     */
    public detectLanguageAPI(param: TextApiDetectLanguageAPIRequest, options?: Configuration): Promise<Array<DetectLanguageAPI200ResponseInner>> {
        return this.api.detectLanguageAPI(param.text,  options).toPromise();
    }

    /**
     * Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
     * Detect Sentiment API
     * @param param the request object
     */
    public detectSentimentAPIWithHttpInfo(param: TextApiDetectSentimentAPIRequest, options?: Configuration): Promise<HttpInfo<DetectSentimentAPI200Response>> {
        return this.api.detectSentimentAPIWithHttpInfo(param.text,  options).toPromise();
    }

    /**
     * Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
     * Detect Sentiment API
     * @param param the request object
     */
    public detectSentimentAPI(param: TextApiDetectSentimentAPIRequest, options?: Configuration): Promise<DetectSentimentAPI200Response> {
        return this.api.detectSentimentAPI(param.text,  options).toPromise();
    }

    /**
     * Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).
     * Extract Dates API
     * @param param the request object
     */
    public extractDatesAPIWithHttpInfo(param: TextApiExtractDatesAPIRequest, options?: Configuration): Promise<HttpInfo<ExtractDatesAPI200Response>> {
        return this.api.extractDatesAPIWithHttpInfo(param.text,  options).toPromise();
    }

    /**
     * Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).
     * Extract Dates API
     * @param param the request object
     */
    public extractDatesAPI(param: TextApiExtractDatesAPIRequest, options?: Configuration): Promise<ExtractDatesAPI200Response> {
        return this.api.extractDatesAPI(param.text,  options).toPromise();
    }

    /**
     * Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
     * Extract Entities API
     * @param param the request object
     */
    public extractEntitiesAPIWithHttpInfo(param: TextApiExtractEntitiesAPIRequest, options?: Configuration): Promise<HttpInfo<ExtractEntitiesAPI200Response>> {
        return this.api.extractEntitiesAPIWithHttpInfo(param.text,  options).toPromise();
    }

    /**
     * Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
     * Extract Entities API
     * @param param the request object
     */
    public extractEntitiesAPI(param: TextApiExtractEntitiesAPIRequest, options?: Configuration): Promise<ExtractEntitiesAPI200Response> {
        return this.api.extractEntitiesAPI(param.text,  options).toPromise();
    }

    /**
     * Return synonyms of a word.
     * List Word Synonyms API
     * @param param the request object
     */
    public listWordSynonymsAPIWithHttpInfo(param: TextApiListWordSynonymsAPIRequest, options?: Configuration): Promise<HttpInfo<ListWordSynonymsAPI200Response>> {
        return this.api.listWordSynonymsAPIWithHttpInfo(param.word,  options).toPromise();
    }

    /**
     * Return synonyms of a word.
     * List Word Synonyms API
     * @param param the request object
     */
    public listWordSynonymsAPI(param: TextApiListWordSynonymsAPIRequest, options?: Configuration): Promise<ListWordSynonymsAPI200Response> {
        return this.api.listWordSynonymsAPI(param.word,  options).toPromise();
    }

    /**
     * Find the plural form of a word.
     * Pluralize Word API
     * @param param the request object
     */
    public pluralizeWordAPIWithHttpInfo(param: TextApiPluralizeWordAPIRequest, options?: Configuration): Promise<HttpInfo<PluralizeWordAPI200Response>> {
        return this.api.pluralizeWordAPIWithHttpInfo(param.word,  options).toPromise();
    }

    /**
     * Find the plural form of a word.
     * Pluralize Word API
     * @param param the request object
     */
    public pluralizeWordAPI(param: TextApiPluralizeWordAPIRequest, options?: Configuration): Promise<PluralizeWordAPI200Response> {
        return this.api.pluralizeWordAPI(param.word,  options).toPromise();
    }

    /**
     * Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
     * Score Readability API
     * @param param the request object
     */
    public scoreReadabilityAPIWithHttpInfo(param: TextApiScoreReadabilityAPIRequest, options?: Configuration): Promise<HttpInfo<ScoreReadabilityAPI200Response>> {
        return this.api.scoreReadabilityAPIWithHttpInfo(param.text,  options).toPromise();
    }

    /**
     * Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
     * Score Readability API
     * @param param the request object
     */
    public scoreReadabilityAPI(param: TextApiScoreReadabilityAPIRequest, options?: Configuration): Promise<ScoreReadabilityAPI200Response> {
        return this.api.scoreReadabilityAPI(param.text,  options).toPromise();
    }

    /**
     * Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
     * Score Text API
     * @param param the request object
     */
    public scoreTextAPIWithHttpInfo(param: TextApiScoreTextAPIRequest, options?: Configuration): Promise<HttpInfo<ScoreTextAPI200Response>> {
        return this.api.scoreTextAPIWithHttpInfo(param.title, param.text,  options).toPromise();
    }

    /**
     * Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
     * Score Text API
     * @param param the request object
     */
    public scoreTextAPI(param: TextApiScoreTextAPIRequest, options?: Configuration): Promise<ScoreTextAPI200Response> {
        return this.api.scoreTextAPI(param.title, param.text,  options).toPromise();
    }

    /**
     * Find the singular form of a word.
     * Singularize Word API
     * @param param the request object
     */
    public singularizeWordAPIWithHttpInfo(param: TextApiSingularizeWordAPIRequest, options?: Configuration): Promise<HttpInfo<SingularizeWordAPI200Response>> {
        return this.api.singularizeWordAPIWithHttpInfo(param.word,  options).toPromise();
    }

    /**
     * Find the singular form of a word.
     * Singularize Word API
     * @param param the request object
     */
    public singularizeWordAPI(param: TextApiSingularizeWordAPIRequest, options?: Configuration): Promise<SingularizeWordAPI200Response> {
        return this.api.singularizeWordAPI(param.word,  options).toPromise();
    }

    /**
     * The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
     * Stem Text API
     * @param param the request object
     */
    public stemTextAPIWithHttpInfo(param: TextApiStemTextAPIRequest, options?: Configuration): Promise<HttpInfo<StemTextAPI200Response>> {
        return this.api.stemTextAPIWithHttpInfo(param.text,  options).toPromise();
    }

    /**
     * The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
     * Stem Text API
     * @param param the request object
     */
    public stemTextAPI(param: TextApiStemTextAPIRequest, options?: Configuration): Promise<StemTextAPI200Response> {
        return this.api.stemTextAPI(param.text,  options).toPromise();
    }

    /**
     * Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
     * Tag Part of Speech API
     * @param param the request object
     */
    public tagPartOfSpeechAPIWithHttpInfo(param: TextApiTagPartOfSpeechAPIRequest, options?: Configuration): Promise<HttpInfo<TagPartOfSpeechAPI200Response>> {
        return this.api.tagPartOfSpeechAPIWithHttpInfo(param.text,  options).toPromise();
    }

    /**
     * Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
     * Tag Part of Speech API
     * @param param the request object
     */
    public tagPartOfSpeechAPI(param: TextApiTagPartOfSpeechAPIRequest, options?: Configuration): Promise<TagPartOfSpeechAPI200Response> {
        return this.api.tagPartOfSpeechAPI(param.text,  options).toPromise();
    }

}

import { ObservableWebApi } from "./ObservableAPI";
import { WebApiRequestFactory, WebApiResponseProcessor} from "../apis/WebApi";

export interface WebApiExtractAuthorsAPIRequest {
    /**
     * The url with the article from which authors should be extracted.
     * @type string
     * @memberof WebApiextractAuthorsAPI
     */
    url: string
}

export interface WebApiExtractContentFromAWebPageAPIRequest {
    /**
     * The url for which the content will be extracted.
     * @type string
     * @memberof WebApiextractContentFromAWebPageAPI
     */
    url: string
}

export interface WebApiExtractPublishDateAPIRequest {
    /**
     * The url for which the publish date should be extracted.
     * @type string
     * @memberof WebApiextractPublishDateAPI
     */
    url: string
}

export interface WebApiRetrievePageRankAPIRequest {
    /**
     * The domain for which the page rank should be returned.
     * @type string
     * @memberof WebApiretrievePageRankAPI
     */
    domain: string
}

export interface WebApiSearchWebAPIRequest {
    /**
     * The search query.
     * @type string
     * @memberof WebApisearchWebAPI
     */
    query: string
    /**
     * The number of results to return in range [1,50]
     * @type number
     * @memberof WebApisearchWebAPI
     */
    number?: number
}

export interface WebApiVerifyEmailAddressAPIRequest {
    /**
     * The email address to verify.
     * @type string
     * @memberof WebApiverifyEmailAddressAPI
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
     * Extract Authors API
     * @param param the request object
     */
    public extractAuthorsAPIWithHttpInfo(param: WebApiExtractAuthorsAPIRequest, options?: Configuration): Promise<HttpInfo<ExtractAuthorsAPI200Response>> {
        return this.api.extractAuthorsAPIWithHttpInfo(param.url,  options).toPromise();
    }

    /**
     * Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
     * Extract Authors API
     * @param param the request object
     */
    public extractAuthorsAPI(param: WebApiExtractAuthorsAPIRequest, options?: Configuration): Promise<ExtractAuthorsAPI200Response> {
        return this.api.extractAuthorsAPI(param.url,  options).toPromise();
    }

    /**
     * Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
     * Extract Content from a Web Page API
     * @param param the request object
     */
    public extractContentFromAWebPageAPIWithHttpInfo(param: WebApiExtractContentFromAWebPageAPIRequest, options?: Configuration): Promise<HttpInfo<ExtractContentFromAWebPageAPI200Response>> {
        return this.api.extractContentFromAWebPageAPIWithHttpInfo(param.url,  options).toPromise();
    }

    /**
     * Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
     * Extract Content from a Web Page API
     * @param param the request object
     */
    public extractContentFromAWebPageAPI(param: WebApiExtractContentFromAWebPageAPIRequest, options?: Configuration): Promise<ExtractContentFromAWebPageAPI200Response> {
        return this.api.extractContentFromAWebPageAPI(param.url,  options).toPromise();
    }

    /**
     * Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
     * Extract Publish Date API
     * @param param the request object
     */
    public extractPublishDateAPIWithHttpInfo(param: WebApiExtractPublishDateAPIRequest, options?: Configuration): Promise<HttpInfo<ExtractPublishDateAPI200Response>> {
        return this.api.extractPublishDateAPIWithHttpInfo(param.url,  options).toPromise();
    }

    /**
     * Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
     * Extract Publish Date API
     * @param param the request object
     */
    public extractPublishDateAPI(param: WebApiExtractPublishDateAPIRequest, options?: Configuration): Promise<ExtractPublishDateAPI200Response> {
        return this.api.extractPublishDateAPI(param.url,  options).toPromise();
    }

    /**
     * This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
     * Retrieve Page Rank API
     * @param param the request object
     */
    public retrievePageRankAPIWithHttpInfo(param: WebApiRetrievePageRankAPIRequest, options?: Configuration): Promise<HttpInfo<RetrievePageRankAPI200Response>> {
        return this.api.retrievePageRankAPIWithHttpInfo(param.domain,  options).toPromise();
    }

    /**
     * This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
     * Retrieve Page Rank API
     * @param param the request object
     */
    public retrievePageRankAPI(param: WebApiRetrievePageRankAPIRequest, options?: Configuration): Promise<RetrievePageRankAPI200Response> {
        return this.api.retrievePageRankAPI(param.domain,  options).toPromise();
    }

    /**
     * Search the web for a given query. The API returns a list of results with the title, summary, and URL.
     * Search Web API
     * @param param the request object
     */
    public searchWebAPIWithHttpInfo(param: WebApiSearchWebAPIRequest, options?: Configuration): Promise<HttpInfo<SearchWebAPI200Response>> {
        return this.api.searchWebAPIWithHttpInfo(param.query, param.number,  options).toPromise();
    }

    /**
     * Search the web for a given query. The API returns a list of results with the title, summary, and URL.
     * Search Web API
     * @param param the request object
     */
    public searchWebAPI(param: WebApiSearchWebAPIRequest, options?: Configuration): Promise<SearchWebAPI200Response> {
        return this.api.searchWebAPI(param.query, param.number,  options).toPromise();
    }

    /**
     * This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.
     * Verify Email Address API
     * @param param the request object
     */
    public verifyEmailAddressAPIWithHttpInfo(param: WebApiVerifyEmailAddressAPIRequest, options?: Configuration): Promise<HttpInfo<VerifyEmailAddressAPI200Response>> {
        return this.api.verifyEmailAddressAPIWithHttpInfo(param.email,  options).toPromise();
    }

    /**
     * This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.
     * Verify Email Address API
     * @param param the request object
     */
    public verifyEmailAddressAPI(param: WebApiVerifyEmailAddressAPIRequest, options?: Configuration): Promise<VerifyEmailAddressAPI200Response> {
        return this.api.verifyEmailAddressAPI(param.email,  options).toPromise();
    }

}
