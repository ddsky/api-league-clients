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
import { ObservableArtApi } from './ObservableAPI';

import { ArtApiRequestFactory, ArtApiResponseProcessor} from "../apis/ArtApi";
export class PromiseArtApi {
    private api: ObservableArtApi

    public constructor(
        configuration: Configuration,
        requestFactory?: ArtApiRequestFactory,
        responseProcessor?: ArtApiResponseProcessor
    ) {
        this.api = new ObservableArtApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
     * Image to Ascii Art by URL
     * @param url The URL to the image.
     * @param width The maximum width of the image (default 400, max. 500).
     * @param height The maximum height of the image (default 400, max. 500).
     */
    public imageToAsciiArtByURLWithHttpInfo(url: string, width?: number, height?: number, _options?: Configuration): Promise<HttpInfo<string>> {
        const result = this.api.imageToAsciiArtByURLWithHttpInfo(url, width, height, _options);
        return result.toPromise();
    }

    /**
     * Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
     * Image to Ascii Art by URL
     * @param url The URL to the image.
     * @param width The maximum width of the image (default 400, max. 500).
     * @param height The maximum height of the image (default 400, max. 500).
     */
    public imageToAsciiArtByURL(url: string, width?: number, height?: number, _options?: Configuration): Promise<string> {
        const result = this.api.imageToAsciiArtByURL(url, width, height, _options);
        return result.toPromise();
    }

    /**
     * Retrieve a random poem by many famous authors. You can filter poem\'s by length (number of lines).
     * Random Poem
     * @param minLines The minimum number of lines of the poem.
     * @param maxLines The maximum number of lines of the poem.
     */
    public randomPoemWithHttpInfo(minLines?: number, maxLines?: number, _options?: Configuration): Promise<HttpInfo<RandomPoem200Response>> {
        const result = this.api.randomPoemWithHttpInfo(minLines, maxLines, _options);
        return result.toPromise();
    }

    /**
     * Retrieve a random poem by many famous authors. You can filter poem\'s by length (number of lines).
     * Random Poem
     * @param minLines The minimum number of lines of the poem.
     * @param maxLines The maximum number of lines of the poem.
     */
    public randomPoem(minLines?: number, maxLines?: number, _options?: Configuration): Promise<RandomPoem200Response> {
        const result = this.api.randomPoem(minLines, maxLines, _options);
        return result.toPromise();
    }


}



import { ObservableBooksApi } from './ObservableAPI';

import { BooksApiRequestFactory, BooksApiResponseProcessor} from "../apis/BooksApi";
export class PromiseBooksApi {
    private api: ObservableBooksApi

    public constructor(
        configuration: Configuration,
        requestFactory?: BooksApiRequestFactory,
        responseProcessor?: BooksApiResponseProcessor
    ) {
        this.api = new ObservableBooksApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
     * Find Similar Books
     * @param id The id of the book to which similar books should be found.
     * @param number The number of similar books to return in range [1,100]
     */
    public findSimilarBooksWithHttpInfo(id: number, number?: number, _options?: Configuration): Promise<HttpInfo<FindSimilarBooks200Response>> {
        const result = this.api.findSimilarBooksWithHttpInfo(id, number, _options);
        return result.toPromise();
    }

    /**
     * Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
     * Find Similar Books
     * @param id The id of the book to which similar books should be found.
     * @param number The number of similar books to return in range [1,100]
     */
    public findSimilarBooks(id: number, number?: number, _options?: Configuration): Promise<FindSimilarBooks200Response> {
        const result = this.api.findSimilarBooks(id, number, _options);
        return result.toPromise();
    }

    /**
     * Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.
     * Search Books
     * @param query The search query.
     * @param earliestPublishYear The books must have been published after this year.
     * @param latestPublishYear The books must have been published before this year.
     * @param minRating The minimum rating the book must have gotten in the interval [0,1].
     * @param maxRating The maximum rating the book must have gotten in the interval [0,1].
     * @param genres A comma-separated list of genres. Only books from any of the given genres will be returned.
     * @param authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can\&#39;t disambiguate.
     * @param isbn Only the book matching the ISBN-13 will be returned
     * @param oclc Only the book matching the OCLC will be returned
     * @param sort The sorting criteria (publish-date or rating).
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC).
     * @param groupResults Whether to group similar editions of the same book.
     * @param offset The number of books to skip in range [0,1000]
     * @param number The number of books to return in range [1,100]
     */
    public searchBooksWithHttpInfo(query?: string, earliestPublishYear?: number, latestPublishYear?: number, minRating?: number, maxRating?: number, genres?: string, authors?: string, isbn?: string, oclc?: string, sort?: string, sortDirection?: string, groupResults?: boolean, offset?: number, number?: number, _options?: Configuration): Promise<HttpInfo<SearchBooks200Response>> {
        const result = this.api.searchBooksWithHttpInfo(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number, _options);
        return result.toPromise();
    }

    /**
     * Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.
     * Search Books
     * @param query The search query.
     * @param earliestPublishYear The books must have been published after this year.
     * @param latestPublishYear The books must have been published before this year.
     * @param minRating The minimum rating the book must have gotten in the interval [0,1].
     * @param maxRating The maximum rating the book must have gotten in the interval [0,1].
     * @param genres A comma-separated list of genres. Only books from any of the given genres will be returned.
     * @param authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can\&#39;t disambiguate.
     * @param isbn Only the book matching the ISBN-13 will be returned
     * @param oclc Only the book matching the OCLC will be returned
     * @param sort The sorting criteria (publish-date or rating).
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC).
     * @param groupResults Whether to group similar editions of the same book.
     * @param offset The number of books to skip in range [0,1000]
     * @param number The number of books to return in range [1,100]
     */
    public searchBooks(query?: string, earliestPublishYear?: number, latestPublishYear?: number, minRating?: number, maxRating?: number, genres?: string, authors?: string, isbn?: string, oclc?: string, sort?: string, sortDirection?: string, groupResults?: boolean, offset?: number, number?: number, _options?: Configuration): Promise<SearchBooks200Response> {
        const result = this.api.searchBooks(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number, _options);
        return result.toPromise();
    }


}



import { ObservableFoodApi } from './ObservableAPI';

import { FoodApiRequestFactory, FoodApiResponseProcessor} from "../apis/FoodApi";
export class PromiseFoodApi {
    private api: ObservableFoodApi

    public constructor(
        configuration: Configuration,
        requestFactory?: FoodApiRequestFactory,
        responseProcessor?: FoodApiResponseProcessor
    ) {
        this.api = new ObservableFoodApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.
     * Compute Nutrition
     * @param ingredients A comma-separated list of the ingredients of the recipe.
     * @param servings The number of servings the ingredients make. Nutrition is computed per serving.
     * @param reduceOils If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true.
     */
    public computeNutritionWithHttpInfo(ingredients: string, servings?: number, reduceOils?: boolean, _options?: Configuration): Promise<HttpInfo<ComputeNutrition200Response>> {
        const result = this.api.computeNutritionWithHttpInfo(ingredients, servings, reduceOils, _options);
        return result.toPromise();
    }

    /**
     * Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.
     * Compute Nutrition
     * @param ingredients A comma-separated list of the ingredients of the recipe.
     * @param servings The number of servings the ingredients make. Nutrition is computed per serving.
     * @param reduceOils If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true.
     */
    public computeNutrition(ingredients: string, servings?: number, reduceOils?: boolean, _options?: Configuration): Promise<ComputeNutrition200Response> {
        const result = this.api.computeNutrition(ingredients, servings, reduceOils, _options);
        return result.toPromise();
    }

    /**
     * Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.
     * Retrieve Recipe Information
     * @param id The id of the recipe to retrieve.
     * @param addWinePairing Whether to pair a wine to the recipe.
     */
    public retrieveRecipeInformationWithHttpInfo(id: number, addWinePairing?: boolean, _options?: Configuration): Promise<HttpInfo<RetrieveRecipeInformation200Response>> {
        const result = this.api.retrieveRecipeInformationWithHttpInfo(id, addWinePairing, _options);
        return result.toPromise();
    }

    /**
     * Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.
     * Retrieve Recipe Information
     * @param id The id of the recipe to retrieve.
     * @param addWinePairing Whether to pair a wine to the recipe.
     */
    public retrieveRecipeInformation(id: number, addWinePairing?: boolean, _options?: Configuration): Promise<RetrieveRecipeInformation200Response> {
        const result = this.api.retrieveRecipeInformation(id, addWinePairing, _options);
        return result.toPromise();
    }

    /**
     * Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.
     * Search Recipes
     * @param query The search query.
     * @param cuisines The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as \&#39;OR\&#39;).
     * @param excludeCuisines The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as \&#39;AND\&#39;).
     * @param mealType The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink.
     * @param diet The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian.
     * @param intolerances A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered.
     * @param equipment The equipment required. Multiple values will be interpreted as \&#39;OR\&#39;.
     * @param includeIngredients A comma-separated list of ingredients that should/must be used in the recipes.
     * @param excludeIngredients A comma-separated list of ingredients or ingredient types that the recipes must not contain.
     * @param fillIngredients Add information about the ingredients and whether they are used or missing in relation to the query.
     * @param addRecipeInformation If set to true, you get more information about the recipes returned.
     * @param maxTime The maximum time in minutes it should take to prepare and cook the recipe.
     * @param minServings The minimum amount of servings the recipe is for.
     * @param maxServings The maximum amount of servings the recipe is for.
     * @param minCalories The minimum amount of calories the recipe must have per serving.
     * @param maxCalories The maximum amount of calories the recipe can have per serving.
     * @param minCarbs The minimum amount of carbohydrates in grams the recipe must have per serving.
     * @param maxCarbs The maximum amount of carbohydrates in grams the recipe can have per serving.
     * @param minProtein The minimum amount of protein in grams the recipe must have per serving.
     * @param maxProtein The maximum amount of protein in grams the recipe can have per serving.
     * @param minFat The minimum amount of fat in grams the recipe must have per serving.
     * @param maxFat The maximum amount of fat in grams the recipe can have per serving.
     * @param minSugar The minimum amount of sugar in grams the recipe must have per serving.
     * @param maxSugar The maximum amount of sugar in grams the recipe can have per serving.
     * @param minFiber The minimum amount of fiber in grams the recipe must have per serving.
     * @param maxFiber The maximum amount of fiber in grams the recipe can have per serving.
     * @param minFolate The minimum amount of folate in micrograms the recipe must have per serving.
     * @param maxFolate The maximum amount of folate in micrograms the recipe can have per serving.
     * @param minFolicAcid The minimum amount of folic acid in micrograms the recipe must have per serving.
     * @param maxFolicAcid The maximum amount of folic acid in micrograms the recipe can have per serving.
     * @param minIodine The minimum amount of iodine in micrograms the recipe must have per serving.
     * @param maxIodine The maximum amount of iodine in micrograms the recipe can have per serving.
     * @param minIron The minimum amount of iron in milligrams the recipe must have per serving.
     * @param maxIron The maximum amount of iron in milligrams the recipe can have per serving.
     * @param minZinc The minimum amount of zinc in milligrams the recipe must have per serving.
     * @param maxZinc The maximum amount of zinc in milligrams the recipe can have per serving.
     * @param minMagnesium The minimum amount of magnesium in milligrams the recipe must have per serving.
     * @param maxMagnesium The maximum amount of magnesium in milligrams the recipe can have per serving.
     * @param minManganese The minimum amount of manganese in milligrams the recipe must have per serving.
     * @param maxManganese The maximum amount of manganese in milligrams the recipe can have per serving.
     * @param minPhosphorus The minimum amount of phosphorus in milligrams the recipe must have per serving.
     * @param maxPhosphorus The maximum amount of phosphorus in milligrams the recipe can have per serving.
     * @param minPotassium The minimum amount of potassium in milligrams the recipe must have per serving.
     * @param maxPotassium The maximum amount of potassium in milligrams the recipe can have per serving.
     * @param minSodium The minimum amount of sodium in milligrams the recipe must have per serving.
     * @param maxSodium The maximum amount of sodium in milligrams the recipe can have per serving.
     * @param minSelenium The minimum amount of selenium in micrograms the recipe must have per serving.
     * @param maxSelenium The maximum amount of selenium in micrograms the recipe can have per serving.
     * @param minCopper The minimum amount of copper in milligrams the recipe must have per serving.
     * @param maxCopper The maximum amount of copper in milligrams the recipe can have per serving.
     * @param minCalcium The minimum amount of calcium in milligrams the recipe must have per serving.
     * @param maxCalcium The maximum amount of calcium in milligrams the recipe can have per serving.
     * @param minCholine The minimum amount of choline in milligrams the recipe must have per serving.
     * @param maxCholine The maximum amount of choline in milligrams the recipe can have per serving.
     * @param minCholesterol The minimum amount of cholesterol in milligrams the recipe must have per serving.
     * @param maxCholesterol The maximum amount of cholesterol in milligrams the recipe can have per serving.
     * @param minFluoride The minimum amount of fluoride in milligrams the recipe must have per serving.
     * @param maxFluoride The maximum amount of fluoride in milligrams the recipe can have per serving.
     * @param minAlcohol The minimum amount of alcohol in grams the recipe must have per serving.
     * @param maxAlcohol The maximum amount of alcohol in grams the recipe can have per serving.
     * @param minCaffeine The minimum amount of caffeine in milligrams the recipe must have per serving.
     * @param maxCaffeine The maximum amount of caffeine in milligrams the recipe can have per serving.
     * @param minSaturatedFat The minimum amount of saturated fat in grams the recipe must have per serving.
     * @param maxSaturatedFat The maximum amount of saturated fat in grams the recipe can have per serving.
     * @param minVitaminA The minimum amount of Vitamin A in IU the recipe must have per serving.
     * @param maxVitaminA The maximum amount of Vitamin A in IU the recipe can have per serving.
     * @param minVitaminC The minimum amount of Vitamin C in milligrams the recipe must have per serving.
     * @param maxVitaminC The maximum amount of Vitamin C in milligrams the recipe can have per serving.
     * @param minVitaminD The minimum amount of Vitamin D in micrograms the recipe must have per serving.
     * @param maxVitaminD The maximum amount of Vitamin D in micrograms the recipe can have per serving.
     * @param minVitaminE The minimum amount of Vitamin E in milligrams the recipe must have per serving.
     * @param maxVitaminE The maximum amount of Vitamin E in milligrams the recipe can have per serving.
     * @param minVitaminK The minimum amount of Vitamin K in micrograms the recipe must have per serving.
     * @param maxVitaminK The maximum amount of Vitamin K in micrograms the recipe can have per serving.
     * @param minVitaminB1 The minimum amount of Vitamin B1 in milligrams the recipe must have per serving.
     * @param maxVitaminB1 The maximum amount of Vitamin B1 in milligrams the recipe can have per serving.
     * @param minVitaminB2 The minimum amount of Vitamin B2 in milligrams the recipe must have per serving.
     * @param maxVitaminB2 The maximum amount of Vitamin B2 in milligrams the recipe can have per serving.
     * @param minVitaminB3 The minimum amount of Vitamin B3 in milligrams the recipe must have per serving.
     * @param maxVitaminB3 The maximum amount of Vitamin B3 in milligrams the recipe can have per serving.
     * @param minVitaminB5 The minimum amount of Vitamin B5 in milligrams the recipe must have per serving.
     * @param maxVitaminB5 The maximum amount of Vitamin B5 in milligrams the recipe can have per serving.
     * @param minVitaminB6 The minimum amount of Vitamin B6 in milligrams the recipe must have per serving.
     * @param maxVitaminB6 The maximum amount of Vitamin B6 in milligrams the recipe can have per serving.
     * @param minVitaminB12 The minimum amount of Vitamin B12 in milligrams the recipe must have per serving.
     * @param maxVitaminB12 The maximum amount of Vitamin B12 in milligrams the recipe can have per serving.
     * @param sort The strategy to sort recipes by. See a full list of supported sorting options.
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC).
     * @param offset The number of recipes to skip, between 0 and 900.
     * @param number The number of recipes, between 1 and 100.
     */
    public searchRecipesWithHttpInfo(query?: string, cuisines?: string, excludeCuisines?: string, mealType?: string, diet?: string, intolerances?: string, equipment?: string, includeIngredients?: string, excludeIngredients?: string, fillIngredients?: boolean, addRecipeInformation?: boolean, maxTime?: number, minServings?: number, maxServings?: number, minCalories?: number, maxCalories?: number, minCarbs?: number, maxCarbs?: number, minProtein?: number, maxProtein?: number, minFat?: number, maxFat?: number, minSugar?: number, maxSugar?: number, minFiber?: number, maxFiber?: number, minFolate?: number, maxFolate?: number, minFolicAcid?: number, maxFolicAcid?: number, minIodine?: number, maxIodine?: number, minIron?: number, maxIron?: number, minZinc?: number, maxZinc?: number, minMagnesium?: number, maxMagnesium?: number, minManganese?: number, maxManganese?: number, minPhosphorus?: number, maxPhosphorus?: number, minPotassium?: number, maxPotassium?: number, minSodium?: number, maxSodium?: number, minSelenium?: number, maxSelenium?: number, minCopper?: number, maxCopper?: number, minCalcium?: number, maxCalcium?: number, minCholine?: number, maxCholine?: number, minCholesterol?: number, maxCholesterol?: number, minFluoride?: number, maxFluoride?: number, minAlcohol?: number, maxAlcohol?: number, minCaffeine?: number, maxCaffeine?: number, minSaturatedFat?: number, maxSaturatedFat?: number, minVitaminA?: number, maxVitaminA?: number, minVitaminC?: number, maxVitaminC?: number, minVitaminD?: number, maxVitaminD?: number, minVitaminE?: number, maxVitaminE?: number, minVitaminK?: number, maxVitaminK?: number, minVitaminB1?: number, maxVitaminB1?: number, minVitaminB2?: number, maxVitaminB2?: number, minVitaminB3?: number, maxVitaminB3?: number, minVitaminB5?: number, maxVitaminB5?: number, minVitaminB6?: number, maxVitaminB6?: number, minVitaminB12?: number, maxVitaminB12?: number, sort?: string, sortDirection?: string, offset?: number, number?: number, _options?: Configuration): Promise<HttpInfo<SearchRecipes200Response>> {
        const result = this.api.searchRecipesWithHttpInfo(query, cuisines, excludeCuisines, mealType, diet, intolerances, equipment, includeIngredients, excludeIngredients, fillIngredients, addRecipeInformation, maxTime, minServings, maxServings, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minSugar, maxSugar, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minZinc, maxZinc, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSodium, maxSodium, minSelenium, maxSelenium, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB3, maxVitaminB3, minVitaminB5, maxVitaminB5, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, sort, sortDirection, offset, number, _options);
        return result.toPromise();
    }

    /**
     * Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.
     * Search Recipes
     * @param query The search query.
     * @param cuisines The cuisine(s) of the recipes. One or more, comma separated (will be interpreted as \&#39;OR\&#39;).
     * @param excludeCuisines The cuisine(s) the recipes must not match. One or more, comma separated (will be interpreted as \&#39;AND\&#39;).
     * @param mealType The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink.
     * @param diet The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian.
     * @param intolerances A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered.
     * @param equipment The equipment required. Multiple values will be interpreted as \&#39;OR\&#39;.
     * @param includeIngredients A comma-separated list of ingredients that should/must be used in the recipes.
     * @param excludeIngredients A comma-separated list of ingredients or ingredient types that the recipes must not contain.
     * @param fillIngredients Add information about the ingredients and whether they are used or missing in relation to the query.
     * @param addRecipeInformation If set to true, you get more information about the recipes returned.
     * @param maxTime The maximum time in minutes it should take to prepare and cook the recipe.
     * @param minServings The minimum amount of servings the recipe is for.
     * @param maxServings The maximum amount of servings the recipe is for.
     * @param minCalories The minimum amount of calories the recipe must have per serving.
     * @param maxCalories The maximum amount of calories the recipe can have per serving.
     * @param minCarbs The minimum amount of carbohydrates in grams the recipe must have per serving.
     * @param maxCarbs The maximum amount of carbohydrates in grams the recipe can have per serving.
     * @param minProtein The minimum amount of protein in grams the recipe must have per serving.
     * @param maxProtein The maximum amount of protein in grams the recipe can have per serving.
     * @param minFat The minimum amount of fat in grams the recipe must have per serving.
     * @param maxFat The maximum amount of fat in grams the recipe can have per serving.
     * @param minSugar The minimum amount of sugar in grams the recipe must have per serving.
     * @param maxSugar The maximum amount of sugar in grams the recipe can have per serving.
     * @param minFiber The minimum amount of fiber in grams the recipe must have per serving.
     * @param maxFiber The maximum amount of fiber in grams the recipe can have per serving.
     * @param minFolate The minimum amount of folate in micrograms the recipe must have per serving.
     * @param maxFolate The maximum amount of folate in micrograms the recipe can have per serving.
     * @param minFolicAcid The minimum amount of folic acid in micrograms the recipe must have per serving.
     * @param maxFolicAcid The maximum amount of folic acid in micrograms the recipe can have per serving.
     * @param minIodine The minimum amount of iodine in micrograms the recipe must have per serving.
     * @param maxIodine The maximum amount of iodine in micrograms the recipe can have per serving.
     * @param minIron The minimum amount of iron in milligrams the recipe must have per serving.
     * @param maxIron The maximum amount of iron in milligrams the recipe can have per serving.
     * @param minZinc The minimum amount of zinc in milligrams the recipe must have per serving.
     * @param maxZinc The maximum amount of zinc in milligrams the recipe can have per serving.
     * @param minMagnesium The minimum amount of magnesium in milligrams the recipe must have per serving.
     * @param maxMagnesium The maximum amount of magnesium in milligrams the recipe can have per serving.
     * @param minManganese The minimum amount of manganese in milligrams the recipe must have per serving.
     * @param maxManganese The maximum amount of manganese in milligrams the recipe can have per serving.
     * @param minPhosphorus The minimum amount of phosphorus in milligrams the recipe must have per serving.
     * @param maxPhosphorus The maximum amount of phosphorus in milligrams the recipe can have per serving.
     * @param minPotassium The minimum amount of potassium in milligrams the recipe must have per serving.
     * @param maxPotassium The maximum amount of potassium in milligrams the recipe can have per serving.
     * @param minSodium The minimum amount of sodium in milligrams the recipe must have per serving.
     * @param maxSodium The maximum amount of sodium in milligrams the recipe can have per serving.
     * @param minSelenium The minimum amount of selenium in micrograms the recipe must have per serving.
     * @param maxSelenium The maximum amount of selenium in micrograms the recipe can have per serving.
     * @param minCopper The minimum amount of copper in milligrams the recipe must have per serving.
     * @param maxCopper The maximum amount of copper in milligrams the recipe can have per serving.
     * @param minCalcium The minimum amount of calcium in milligrams the recipe must have per serving.
     * @param maxCalcium The maximum amount of calcium in milligrams the recipe can have per serving.
     * @param minCholine The minimum amount of choline in milligrams the recipe must have per serving.
     * @param maxCholine The maximum amount of choline in milligrams the recipe can have per serving.
     * @param minCholesterol The minimum amount of cholesterol in milligrams the recipe must have per serving.
     * @param maxCholesterol The maximum amount of cholesterol in milligrams the recipe can have per serving.
     * @param minFluoride The minimum amount of fluoride in milligrams the recipe must have per serving.
     * @param maxFluoride The maximum amount of fluoride in milligrams the recipe can have per serving.
     * @param minAlcohol The minimum amount of alcohol in grams the recipe must have per serving.
     * @param maxAlcohol The maximum amount of alcohol in grams the recipe can have per serving.
     * @param minCaffeine The minimum amount of caffeine in milligrams the recipe must have per serving.
     * @param maxCaffeine The maximum amount of caffeine in milligrams the recipe can have per serving.
     * @param minSaturatedFat The minimum amount of saturated fat in grams the recipe must have per serving.
     * @param maxSaturatedFat The maximum amount of saturated fat in grams the recipe can have per serving.
     * @param minVitaminA The minimum amount of Vitamin A in IU the recipe must have per serving.
     * @param maxVitaminA The maximum amount of Vitamin A in IU the recipe can have per serving.
     * @param minVitaminC The minimum amount of Vitamin C in milligrams the recipe must have per serving.
     * @param maxVitaminC The maximum amount of Vitamin C in milligrams the recipe can have per serving.
     * @param minVitaminD The minimum amount of Vitamin D in micrograms the recipe must have per serving.
     * @param maxVitaminD The maximum amount of Vitamin D in micrograms the recipe can have per serving.
     * @param minVitaminE The minimum amount of Vitamin E in milligrams the recipe must have per serving.
     * @param maxVitaminE The maximum amount of Vitamin E in milligrams the recipe can have per serving.
     * @param minVitaminK The minimum amount of Vitamin K in micrograms the recipe must have per serving.
     * @param maxVitaminK The maximum amount of Vitamin K in micrograms the recipe can have per serving.
     * @param minVitaminB1 The minimum amount of Vitamin B1 in milligrams the recipe must have per serving.
     * @param maxVitaminB1 The maximum amount of Vitamin B1 in milligrams the recipe can have per serving.
     * @param minVitaminB2 The minimum amount of Vitamin B2 in milligrams the recipe must have per serving.
     * @param maxVitaminB2 The maximum amount of Vitamin B2 in milligrams the recipe can have per serving.
     * @param minVitaminB3 The minimum amount of Vitamin B3 in milligrams the recipe must have per serving.
     * @param maxVitaminB3 The maximum amount of Vitamin B3 in milligrams the recipe can have per serving.
     * @param minVitaminB5 The minimum amount of Vitamin B5 in milligrams the recipe must have per serving.
     * @param maxVitaminB5 The maximum amount of Vitamin B5 in milligrams the recipe can have per serving.
     * @param minVitaminB6 The minimum amount of Vitamin B6 in milligrams the recipe must have per serving.
     * @param maxVitaminB6 The maximum amount of Vitamin B6 in milligrams the recipe can have per serving.
     * @param minVitaminB12 The minimum amount of Vitamin B12 in milligrams the recipe must have per serving.
     * @param maxVitaminB12 The maximum amount of Vitamin B12 in milligrams the recipe can have per serving.
     * @param sort The strategy to sort recipes by. See a full list of supported sorting options.
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC).
     * @param offset The number of recipes to skip, between 0 and 900.
     * @param number The number of recipes, between 1 and 100.
     */
    public searchRecipes(query?: string, cuisines?: string, excludeCuisines?: string, mealType?: string, diet?: string, intolerances?: string, equipment?: string, includeIngredients?: string, excludeIngredients?: string, fillIngredients?: boolean, addRecipeInformation?: boolean, maxTime?: number, minServings?: number, maxServings?: number, minCalories?: number, maxCalories?: number, minCarbs?: number, maxCarbs?: number, minProtein?: number, maxProtein?: number, minFat?: number, maxFat?: number, minSugar?: number, maxSugar?: number, minFiber?: number, maxFiber?: number, minFolate?: number, maxFolate?: number, minFolicAcid?: number, maxFolicAcid?: number, minIodine?: number, maxIodine?: number, minIron?: number, maxIron?: number, minZinc?: number, maxZinc?: number, minMagnesium?: number, maxMagnesium?: number, minManganese?: number, maxManganese?: number, minPhosphorus?: number, maxPhosphorus?: number, minPotassium?: number, maxPotassium?: number, minSodium?: number, maxSodium?: number, minSelenium?: number, maxSelenium?: number, minCopper?: number, maxCopper?: number, minCalcium?: number, maxCalcium?: number, minCholine?: number, maxCholine?: number, minCholesterol?: number, maxCholesterol?: number, minFluoride?: number, maxFluoride?: number, minAlcohol?: number, maxAlcohol?: number, minCaffeine?: number, maxCaffeine?: number, minSaturatedFat?: number, maxSaturatedFat?: number, minVitaminA?: number, maxVitaminA?: number, minVitaminC?: number, maxVitaminC?: number, minVitaminD?: number, maxVitaminD?: number, minVitaminE?: number, maxVitaminE?: number, minVitaminK?: number, maxVitaminK?: number, minVitaminB1?: number, maxVitaminB1?: number, minVitaminB2?: number, maxVitaminB2?: number, minVitaminB3?: number, maxVitaminB3?: number, minVitaminB5?: number, maxVitaminB5?: number, minVitaminB6?: number, maxVitaminB6?: number, minVitaminB12?: number, maxVitaminB12?: number, sort?: string, sortDirection?: string, offset?: number, number?: number, _options?: Configuration): Promise<SearchRecipes200Response> {
        const result = this.api.searchRecipes(query, cuisines, excludeCuisines, mealType, diet, intolerances, equipment, includeIngredients, excludeIngredients, fillIngredients, addRecipeInformation, maxTime, minServings, maxServings, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minSugar, maxSugar, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minZinc, maxZinc, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSodium, maxSodium, minSelenium, maxSelenium, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB3, maxVitaminB3, minVitaminB5, maxVitaminB5, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, sort, sortDirection, offset, number, _options);
        return result.toPromise();
    }

    /**
     * Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
     * Search Restaurants
     * @param lat The latitude to search around.
     * @param lon The longitude to search around.
     * @param query The search query.
     * @param distance The maximum distance of the restaurant in miles around the given location.
     * @param budget The budget in USD for the meal.
     * @param minRating The minimum rating of the restaurants in range [0,5].
     * @param cuisine The cuisine that the restaurants should support.
     * @param isOpen Whether the restaurants have to be open now.
     * @param page The page of the results.
     * @param sort The sort parameter, one of: cheapest, fastest, rating, distance or relevance.
     */
    public searchRestaurantsWithHttpInfo(lat: number, lon: number, query?: string, distance?: number, budget?: number, minRating?: number, cuisine?: string, isOpen?: boolean, page?: number, sort?: string, _options?: Configuration): Promise<HttpInfo<SearchRestaurants200Response>> {
        const result = this.api.searchRestaurantsWithHttpInfo(lat, lon, query, distance, budget, minRating, cuisine, isOpen, page, sort, _options);
        return result.toPromise();
    }

    /**
     * Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
     * Search Restaurants
     * @param lat The latitude to search around.
     * @param lon The longitude to search around.
     * @param query The search query.
     * @param distance The maximum distance of the restaurant in miles around the given location.
     * @param budget The budget in USD for the meal.
     * @param minRating The minimum rating of the restaurants in range [0,5].
     * @param cuisine The cuisine that the restaurants should support.
     * @param isOpen Whether the restaurants have to be open now.
     * @param page The page of the results.
     * @param sort The sort parameter, one of: cheapest, fastest, rating, distance or relevance.
     */
    public searchRestaurants(lat: number, lon: number, query?: string, distance?: number, budget?: number, minRating?: number, cuisine?: string, isOpen?: boolean, page?: number, sort?: string, _options?: Configuration): Promise<SearchRestaurants200Response> {
        const result = this.api.searchRestaurants(lat, lon, query, distance, budget, minRating, cuisine, isOpen, page, sort, _options);
        return result.toPromise();
    }


}



import { ObservableHumorApi } from './ObservableAPI';

import { HumorApiRequestFactory, HumorApiResponseProcessor} from "../apis/HumorApi";
export class PromiseHumorApi {
    private api: ObservableHumorApi

    public constructor(
        configuration: Configuration,
        requestFactory?: HumorApiRequestFactory,
        responseProcessor?: HumorApiResponseProcessor
    ) {
        this.api = new ObservableHumorApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
     * Generate Nonsense Word
     */
    public generateNonsenseWordWithHttpInfo(_options?: Configuration): Promise<HttpInfo<GenerateNonsenseWord200Response>> {
        const result = this.api.generateNonsenseWordWithHttpInfo(_options);
        return result.toPromise();
    }

    /**
     * Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
     * Generate Nonsense Word
     */
    public generateNonsenseWord(_options?: Configuration): Promise<GenerateNonsenseWord200Response> {
        const result = this.api.generateNonsenseWord(_options);
        return result.toPromise();
    }

    /**
     * This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
     * Random Joke
     * @param includeTags A comma-separated list of tags the jokes should have.
     * @param excludeTags A comma-separated list of tags the jokes must not have.
     * @param minRating The minimum rating in range [0.0,1.0] of the jokes.
     * @param maxLength The maximum length of the joke in letters.
     */
    public randomJokeWithHttpInfo(includeTags?: string, excludeTags?: string, minRating?: number, maxLength?: number, _options?: Configuration): Promise<HttpInfo<SearchJokes200ResponseJokesInner>> {
        const result = this.api.randomJokeWithHttpInfo(includeTags, excludeTags, minRating, maxLength, _options);
        return result.toPromise();
    }

    /**
     * This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
     * Random Joke
     * @param includeTags A comma-separated list of tags the jokes should have.
     * @param excludeTags A comma-separated list of tags the jokes must not have.
     * @param minRating The minimum rating in range [0.0,1.0] of the jokes.
     * @param maxLength The maximum length of the joke in letters.
     */
    public randomJoke(includeTags?: string, excludeTags?: string, minRating?: number, maxLength?: number, _options?: Configuration): Promise<SearchJokes200ResponseJokesInner> {
        const result = this.api.randomJoke(includeTags, excludeTags, minRating, maxLength, _options);
        return result.toPromise();
    }

    /**
     * Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
     * Random Meme
     * @param keywords A comma-separated list of words that must occur in the meme.
     * @param keywordsInImage Whether the keywords must occur in the image.
     * @param mediaType The media type (either \&#39;image\&#39;, \&#39;video\&#39; or even specific format such as \&#39;jpg\&#39;, \&#39;png\&#39;, or \&#39;gif\&#39;).
     * @param minRating The minimum rating in range [0.0,1.0] of the meme.
     * @param maxAgeDays The maximum age of the meme in days.
     */
    public randomMemeWithHttpInfo(keywords?: string, keywordsInImage?: boolean, mediaType?: string, minRating?: number, maxAgeDays?: number, _options?: Configuration): Promise<HttpInfo<RandomMeme200Response>> {
        const result = this.api.randomMemeWithHttpInfo(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, _options);
        return result.toPromise();
    }

    /**
     * Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
     * Random Meme
     * @param keywords A comma-separated list of words that must occur in the meme.
     * @param keywordsInImage Whether the keywords must occur in the image.
     * @param mediaType The media type (either \&#39;image\&#39;, \&#39;video\&#39; or even specific format such as \&#39;jpg\&#39;, \&#39;png\&#39;, or \&#39;gif\&#39;).
     * @param minRating The minimum rating in range [0.0,1.0] of the meme.
     * @param maxAgeDays The maximum age of the meme in days.
     */
    public randomMeme(keywords?: string, keywordsInImage?: boolean, mediaType?: string, minRating?: number, maxAgeDays?: number, _options?: Configuration): Promise<RandomMeme200Response> {
        const result = this.api.randomMeme(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, _options);
        return result.toPromise();
    }

    /**
     * Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
     * Search Gifs
     * @param query The search query.
     * @param number The number of gifs to return in range [1,10]
     */
    public searchGifsWithHttpInfo(query: string, number?: number, _options?: Configuration): Promise<HttpInfo<SearchGifs200Response>> {
        const result = this.api.searchGifsWithHttpInfo(query, number, _options);
        return result.toPromise();
    }

    /**
     * Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
     * Search Gifs
     * @param query The search query.
     * @param number The number of gifs to return in range [1,10]
     */
    public searchGifs(query: string, number?: number, _options?: Configuration): Promise<SearchGifs200Response> {
        const result = this.api.searchGifs(query, number, _options);
        return result.toPromise();
    }

    /**
     * With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
     * Search Jokes
     * @param keywords A comma-separated list of words that must occur in the joke.
     * @param includeTags A comma-separated list of tags the jokes should have.
     * @param excludeTags A comma-separated list of tags the jokes must not have.
     * @param minRating The minimum rating in range [0.0,1.0] of the jokes.
     * @param maxLength The maximum length of the joke in letters.
     * @param offset The number of jokes to skip, between 0 and 1000.
     * @param number The number of jokes, between 1 and 10.
     */
    public searchJokesWithHttpInfo(keywords?: string, includeTags?: string, excludeTags?: string, minRating?: number, maxLength?: number, offset?: number, number?: number, _options?: Configuration): Promise<HttpInfo<SearchJokes200Response>> {
        const result = this.api.searchJokesWithHttpInfo(keywords, includeTags, excludeTags, minRating, maxLength, offset, number, _options);
        return result.toPromise();
    }

    /**
     * With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
     * Search Jokes
     * @param keywords A comma-separated list of words that must occur in the joke.
     * @param includeTags A comma-separated list of tags the jokes should have.
     * @param excludeTags A comma-separated list of tags the jokes must not have.
     * @param minRating The minimum rating in range [0.0,1.0] of the jokes.
     * @param maxLength The maximum length of the joke in letters.
     * @param offset The number of jokes to skip, between 0 and 1000.
     * @param number The number of jokes, between 1 and 10.
     */
    public searchJokes(keywords?: string, includeTags?: string, excludeTags?: string, minRating?: number, maxLength?: number, offset?: number, number?: number, _options?: Configuration): Promise<SearchJokes200Response> {
        const result = this.api.searchJokes(keywords, includeTags, excludeTags, minRating, maxLength, offset, number, _options);
        return result.toPromise();
    }

    /**
     * With over 200,000 memes, you\'ll surely find something funny. You can even search for text within memes and filter by user ratings.
     * Search Memes
     * @param keywords A comma-separated list of words that must occur in the meme.
     * @param keywordsInImage Whether the keywords must occur in the image.
     * @param mediaType The media type (either \&#39;image\&#39;, \&#39;video\&#39; or even specific format such as \&#39;jpg\&#39;, \&#39;png\&#39;, or \&#39;gif\&#39;).
     * @param minRating The minimum rating in range [0.0,1.0] of the meme.
     * @param maxAgeDays The maximum age of the meme in days.
     * @param offset The number of memes to skip, between 0 and 1000.
     * @param number The number of memes, between 1 and 10.
     */
    public searchMemesWithHttpInfo(keywords?: string, keywordsInImage?: boolean, mediaType?: string, minRating?: number, maxAgeDays?: number, offset?: number, number?: number, _options?: Configuration): Promise<HttpInfo<SearchMemes200Response>> {
        const result = this.api.searchMemesWithHttpInfo(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number, _options);
        return result.toPromise();
    }

    /**
     * With over 200,000 memes, you\'ll surely find something funny. You can even search for text within memes and filter by user ratings.
     * Search Memes
     * @param keywords A comma-separated list of words that must occur in the meme.
     * @param keywordsInImage Whether the keywords must occur in the image.
     * @param mediaType The media type (either \&#39;image\&#39;, \&#39;video\&#39; or even specific format such as \&#39;jpg\&#39;, \&#39;png\&#39;, or \&#39;gif\&#39;).
     * @param minRating The minimum rating in range [0.0,1.0] of the meme.
     * @param maxAgeDays The maximum age of the meme in days.
     * @param offset The number of memes to skip, between 0 and 1000.
     * @param number The number of memes, between 1 and 10.
     */
    public searchMemes(keywords?: string, keywordsInImage?: boolean, mediaType?: string, minRating?: number, maxAgeDays?: number, offset?: number, number?: number, _options?: Configuration): Promise<SearchMemes200Response> {
        const result = this.api.searchMemes(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number, _options);
        return result.toPromise();
    }


}



import { ObservableKnowledgeApi } from './ObservableAPI';

import { KnowledgeApiRequestFactory, KnowledgeApiResponseProcessor} from "../apis/KnowledgeApi";
export class PromiseKnowledgeApi {
    private api: ObservableKnowledgeApi

    public constructor(
        configuration: Configuration,
        requestFactory?: KnowledgeApiRequestFactory,
        responseProcessor?: KnowledgeApiResponseProcessor
    ) {
        this.api = new ObservableKnowledgeApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.
     * Random Quote
     * @param minLength The minimum length of the quote in letters.
     * @param maxLength The maximum length of the quote in letters.
     */
    public randomQuoteWithHttpInfo(minLength?: number, maxLength?: number, _options?: Configuration): Promise<HttpInfo<RandomQuote200Response>> {
        const result = this.api.randomQuoteWithHttpInfo(minLength, maxLength, _options);
        return result.toPromise();
    }

    /**
     * This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.
     * Random Quote
     * @param minLength The minimum length of the quote in letters.
     * @param maxLength The maximum length of the quote in letters.
     */
    public randomQuote(minLength?: number, maxLength?: number, _options?: Configuration): Promise<RandomQuote200Response> {
        const result = this.api.randomQuote(minLength, maxLength, _options);
        return result.toPromise();
    }

    /**
     * The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.
     * Random Riddle
     * @param difficulty The difficulty of the riddle, either \&quot;easy\&quot;, \&quot;medium\&quot;, or \&quot;hard\&quot;.
     */
    public randomRiddleWithHttpInfo(difficulty?: string, _options?: Configuration): Promise<HttpInfo<RandomRiddle200Response>> {
        const result = this.api.randomRiddleWithHttpInfo(difficulty, _options);
        return result.toPromise();
    }

    /**
     * The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.
     * Random Riddle
     * @param difficulty The difficulty of the riddle, either \&quot;easy\&quot;, \&quot;medium\&quot;, or \&quot;hard\&quot;.
     */
    public randomRiddle(difficulty?: string, _options?: Configuration): Promise<RandomRiddle200Response> {
        const result = this.api.randomRiddle(difficulty, _options);
        return result.toPromise();
    }

    /**
     * This endpoint returns a random piece of trivia.
     * Random Trivia
     * @param maxLength The maximum length of the trivia in letters.
     */
    public randomTriviaWithHttpInfo(maxLength?: number, _options?: Configuration): Promise<HttpInfo<RandomTrivia200Response>> {
        const result = this.api.randomTriviaWithHttpInfo(maxLength, _options);
        return result.toPromise();
    }

    /**
     * This endpoint returns a random piece of trivia.
     * Random Trivia
     * @param maxLength The maximum length of the trivia in letters.
     */
    public randomTrivia(maxLength?: number, _options?: Configuration): Promise<RandomTrivia200Response> {
        const result = this.api.randomTrivia(maxLength, _options);
        return result.toPromise();
    }


}



import { ObservableMathApi } from './ObservableAPI';

import { MathApiRequestFactory, MathApiResponseProcessor} from "../apis/MathApi";
export class PromiseMathApi {
    private api: ObservableMathApi

    public constructor(
        configuration: Configuration,
        requestFactory?: MathApiRequestFactory,
        responseProcessor?: MathApiResponseProcessor
    ) {
        this.api = new ObservableMathApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Convert units from one to another. The API returns the amount and the unit of the target unit.
     * Convert Units
     * @param sourceAmount The source amount.
     * @param sourceUnit The source unit.
     * @param targetUnit The unit to which should be converted.
     * @param foodName An optional food name. For converting foods the food is relevant as they have different densities.
     */
    public convertUnitsWithHttpInfo(sourceAmount: number, sourceUnit: string, targetUnit: string, foodName?: string, _options?: Configuration): Promise<HttpInfo<ConvertUnits200Response>> {
        const result = this.api.convertUnitsWithHttpInfo(sourceAmount, sourceUnit, targetUnit, foodName, _options);
        return result.toPromise();
    }

    /**
     * Convert units from one to another. The API returns the amount and the unit of the target unit.
     * Convert Units
     * @param sourceAmount The source amount.
     * @param sourceUnit The source unit.
     * @param targetUnit The unit to which should be converted.
     * @param foodName An optional food name. For converting foods the food is relevant as they have different densities.
     */
    public convertUnits(sourceAmount: number, sourceUnit: string, targetUnit: string, foodName?: string, _options?: Configuration): Promise<ConvertUnits200Response> {
        const result = this.api.convertUnits(sourceAmount, sourceUnit, targetUnit, foodName, _options);
        return result.toPromise();
    }


}



import { ObservableMediaApi } from './ObservableAPI';

import { MediaApiRequestFactory, MediaApiResponseProcessor} from "../apis/MediaApi";
export class PromiseMediaApi {
    private api: ObservableMediaApi

    public constructor(
        configuration: Configuration,
        requestFactory?: MediaApiRequestFactory,
        responseProcessor?: MediaApiResponseProcessor
    ) {
        this.api = new ObservableMediaApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
     * Detect Main Image Color
     * @param url The url of the image for which the colors should be detected.
     */
    public detectMainImageColorWithHttpInfo(url: string, _options?: Configuration): Promise<HttpInfo<Array<DetectMainImageColor200ResponseInner>>> {
        const result = this.api.detectMainImageColorWithHttpInfo(url, _options);
        return result.toPromise();
    }

    /**
     * Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
     * Detect Main Image Color
     * @param url The url of the image for which the colors should be detected.
     */
    public detectMainImageColor(url: string, _options?: Configuration): Promise<Array<DetectMainImageColor200ResponseInner>> {
        const result = this.api.detectMainImageColor(url, _options);
        return result.toPromise();
    }

    /**
     * Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
     * Rescale Image
     * @param url The url of the image to be rescaled.
     * @param width The desired width of the rescaled image.
     * @param height The desired height of the rescaled image.
     * @param crop Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
     */
    public rescaleImageWithHttpInfo(url: string, width: number, height: number, crop: boolean, _options?: Configuration): Promise<HttpInfo<any>> {
        const result = this.api.rescaleImageWithHttpInfo(url, width, height, crop, _options);
        return result.toPromise();
    }

    /**
     * Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
     * Rescale Image
     * @param url The url of the image to be rescaled.
     * @param width The desired width of the rescaled image.
     * @param height The desired height of the rescaled image.
     * @param crop Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
     */
    public rescaleImage(url: string, width: number, height: number, crop: boolean, _options?: Configuration): Promise<any> {
        const result = this.api.rescaleImage(url, width, height, crop, _options);
        return result.toPromise();
    }

    /**
     * Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
     * Search Royalty Free Images
     * @param query The search query.
     * @param number The number of images to return in range [1,10]
     */
    public searchRoyaltyFreeImagesWithHttpInfo(query: string, number?: number, _options?: Configuration): Promise<HttpInfo<SearchRoyaltyFreeImages200Response>> {
        const result = this.api.searchRoyaltyFreeImagesWithHttpInfo(query, number, _options);
        return result.toPromise();
    }

    /**
     * Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
     * Search Royalty Free Images
     * @param query The search query.
     * @param number The number of images to return in range [1,10]
     */
    public searchRoyaltyFreeImages(query: string, number?: number, _options?: Configuration): Promise<SearchRoyaltyFreeImages200Response> {
        const result = this.api.searchRoyaltyFreeImages(query, number, _options);
        return result.toPromise();
    }


}



import { ObservableNewsApi } from './ObservableAPI';

import { NewsApiRequestFactory, NewsApiResponseProcessor} from "../apis/NewsApi";
export class PromiseNewsApi {
    private api: ObservableNewsApi

    public constructor(
        configuration: Configuration,
        requestFactory?: NewsApiRequestFactory,
        responseProcessor?: NewsApiResponseProcessor
    ) {
        this.api = new ObservableNewsApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
     * Extract News
     * @param url The url of the news.
     * @param analyze Whether to analyze the news (extract entities etc.)
     */
    public extractNewsWithHttpInfo(url: string, analyze: boolean, _options?: Configuration): Promise<HttpInfo<ExtractNews200Response>> {
        const result = this.api.extractNewsWithHttpInfo(url, analyze, _options);
        return result.toPromise();
    }

    /**
     * Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
     * Extract News
     * @param url The url of the news.
     * @param analyze Whether to analyze the news (extract entities etc.)
     */
    public extractNews(url: string, analyze: boolean, _options?: Configuration): Promise<ExtractNews200Response> {
        const result = this.api.extractNews(url, analyze, _options);
        return result.toPromise();
    }

    /**
     * Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
     * Search News
     * @param text The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
     * @param sourceCountries A comma-separated list of ISO 3166 country codes from which the news should originate.
     * @param language The ISO 6391 language code of the news.
     * @param minSentiment The minimal sentiment of the news in range [-1,1].
     * @param maxSentiment The maximal sentiment of the news in range [-1,1].
     * @param earliestPublishDate The news must have been published after this date.
     * @param latestPublishDate The news must have been published before this date.
     * @param newsSources A comma-separated list of news sources from which the news should originate.
     * @param authors A comma-separated list of author names. Only news from any of the given authors will be returned.
     * @param categories A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other.
     * @param entities Filter news by entities (ORG, PER, or LOC).
     * @param locationFilter Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;
     * @param sort The sorting criteria (publish-time).
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC).
     * @param offset The number of news to skip in range [0,10000]
     * @param number The number of news to return in range [1,100]
     */
    public searchNewsWithHttpInfo(text?: string, sourceCountries?: string, language?: string, minSentiment?: number, maxSentiment?: number, earliestPublishDate?: string, latestPublishDate?: string, newsSources?: string, authors?: string, categories?: string, entities?: string, locationFilter?: string, sort?: string, sortDirection?: string, offset?: number, number?: number, _options?: Configuration): Promise<HttpInfo<SearchNews200Response>> {
        const result = this.api.searchNewsWithHttpInfo(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, categories, entities, locationFilter, sort, sortDirection, offset, number, _options);
        return result.toPromise();
    }

    /**
     * Search and filter news by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
     * Search News
     * @param text The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
     * @param sourceCountries A comma-separated list of ISO 3166 country codes from which the news should originate.
     * @param language The ISO 6391 language code of the news.
     * @param minSentiment The minimal sentiment of the news in range [-1,1].
     * @param maxSentiment The maximal sentiment of the news in range [-1,1].
     * @param earliestPublishDate The news must have been published after this date.
     * @param latestPublishDate The news must have been published before this date.
     * @param newsSources A comma-separated list of news sources from which the news should originate.
     * @param authors A comma-separated list of author names. Only news from any of the given authors will be returned.
     * @param categories A comma-separated list of categories. Only news from any of the given categories will be returned. Possible categories are politics, sports, business, technology, entertainment, health, science, lifestyle, travel, culture, education, environment, other.
     * @param entities Filter news by entities (ORG, PER, or LOC).
     * @param locationFilter Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;
     * @param sort The sorting criteria (publish-time).
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC).
     * @param offset The number of news to skip in range [0,10000]
     * @param number The number of news to return in range [1,100]
     */
    public searchNews(text?: string, sourceCountries?: string, language?: string, minSentiment?: number, maxSentiment?: number, earliestPublishDate?: string, latestPublishDate?: string, newsSources?: string, authors?: string, categories?: string, entities?: string, locationFilter?: string, sort?: string, sortDirection?: string, offset?: number, number?: number, _options?: Configuration): Promise<SearchNews200Response> {
        const result = this.api.searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, categories, entities, locationFilter, sort, sortDirection, offset, number, _options);
        return result.toPromise();
    }

    /**
     * Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
     * Top News
     * @param sourceCountry The ISO 3166 country code of the country for which top news should be retrieved.
     * @param language The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
     * @param date The date for which the top news should be retrieved. If no date is given, the current day is assumed.
     * @param headlinesOnly Whether to only return basic information such as id, title, and url of the news.
     */
    public topNewsWithHttpInfo(sourceCountry: string, language: string, date?: string, headlinesOnly?: boolean, _options?: Configuration): Promise<HttpInfo<TopNews200Response>> {
        const result = this.api.topNewsWithHttpInfo(sourceCountry, language, date, headlinesOnly, _options);
        return result.toPromise();
    }

    /**
     * Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
     * Top News
     * @param sourceCountry The ISO 3166 country code of the country for which top news should be retrieved.
     * @param language The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
     * @param date The date for which the top news should be retrieved. If no date is given, the current day is assumed.
     * @param headlinesOnly Whether to only return basic information such as id, title, and url of the news.
     */
    public topNews(sourceCountry: string, language: string, date?: string, headlinesOnly?: boolean, _options?: Configuration): Promise<TopNews200Response> {
        const result = this.api.topNews(sourceCountry, language, date, headlinesOnly, _options);
        return result.toPromise();
    }


}



import { ObservableStorageApi } from './ObservableAPI';

import { StorageApiRequestFactory, StorageApiResponseProcessor} from "../apis/StorageApi";
export class PromiseStorageApi {
    private api: ObservableStorageApi

    public constructor(
        configuration: Configuration,
        requestFactory?: StorageApiRequestFactory,
        responseProcessor?: StorageApiResponseProcessor
    ) {
        this.api = new ObservableStorageApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
     * Read Key Value from Store
     * @param key The key for which the value is stored (max length 255 characters).
     */
    public readKeyValueFromStoreWithHttpInfo(key: string, _options?: Configuration): Promise<HttpInfo<ReadKeyValueFromStore200Response>> {
        const result = this.api.readKeyValueFromStoreWithHttpInfo(key, _options);
        return result.toPromise();
    }

    /**
     * Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
     * Read Key Value from Store
     * @param key The key for which the value is stored (max length 255 characters).
     */
    public readKeyValueFromStore(key: string, _options?: Configuration): Promise<ReadKeyValueFromStore200Response> {
        const result = this.api.readKeyValueFromStore(key, _options);
        return result.toPromise();
    }

    /**
     * Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
     * Store Key Value (GET)
     * @param key The key for which the value is stored (max length 255 characters).
     * @param value The value that is supposed to be stored (max length 10,000 characters).
     */
    public storeKeyValueGETWithHttpInfo(key: string, value: string, _options?: Configuration): Promise<HttpInfo<StoreKeyValueGET200Response>> {
        const result = this.api.storeKeyValueGETWithHttpInfo(key, value, _options);
        return result.toPromise();
    }

    /**
     * Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
     * Store Key Value (GET)
     * @param key The key for which the value is stored (max length 255 characters).
     * @param value The value that is supposed to be stored (max length 10,000 characters).
     */
    public storeKeyValueGET(key: string, value: string, _options?: Configuration): Promise<StoreKeyValueGET200Response> {
        const result = this.api.storeKeyValueGET(key, value, _options);
        return result.toPromise();
    }


}



import { ObservableTextApi } from './ObservableAPI';

import { TextApiRequestFactory, TextApiResponseProcessor} from "../apis/TextApi";
export class PromiseTextApi {
    private api: ObservableTextApi

    public constructor(
        configuration: Configuration,
        requestFactory?: TextApiRequestFactory,
        responseProcessor?: TextApiResponseProcessor
    ) {
        this.api = new ObservableTextApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).
     * Correct Spelling
     * @param text The text to be corrected.
     * @param language The language of the text, one of en, de, es, fr, or it.
     */
    public correctSpellingWithHttpInfo(text: string, language: string, _options?: Configuration): Promise<HttpInfo<CorrectSpelling200Response>> {
        const result = this.api.correctSpellingWithHttpInfo(text, language, _options);
        return result.toPromise();
    }

    /**
     * The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).
     * Correct Spelling
     * @param text The text to be corrected.
     * @param language The language of the text, one of en, de, es, fr, or it.
     */
    public correctSpelling(text: string, language: string, _options?: Configuration): Promise<CorrectSpelling200Response> {
        const result = this.api.correctSpelling(text, language, _options);
        return result.toPromise();
    }

    /**
     * Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.
     * Detect Gender by Name
     * @param name The name of the perso for which the sentiment should be detected.
     */
    public detectGenderByNameWithHttpInfo(name: string, _options?: Configuration): Promise<HttpInfo<DetectGenderByName200Response>> {
        const result = this.api.detectGenderByNameWithHttpInfo(name, _options);
        return result.toPromise();
    }

    /**
     * Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.
     * Detect Gender by Name
     * @param name The name of the perso for which the sentiment should be detected.
     */
    public detectGenderByName(name: string, _options?: Configuration): Promise<DetectGenderByName200Response> {
        const result = this.api.detectGenderByName(name, _options);
        return result.toPromise();
    }

    /**
     * Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
     * Detect Language
     * @param text The text for which the language should be detected.
     */
    public detectLanguageWithHttpInfo(text: string, _options?: Configuration): Promise<HttpInfo<Array<DetectLanguage200ResponseInner>>> {
        const result = this.api.detectLanguageWithHttpInfo(text, _options);
        return result.toPromise();
    }

    /**
     * Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
     * Detect Language
     * @param text The text for which the language should be detected.
     */
    public detectLanguage(text: string, _options?: Configuration): Promise<Array<DetectLanguage200ResponseInner>> {
        const result = this.api.detectLanguage(text, _options);
        return result.toPromise();
    }

    /**
     * Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
     * Detect Sentiment
     * @param text The text for which the sentiment should be detected.
     */
    public detectSentimentWithHttpInfo(text: string, _options?: Configuration): Promise<HttpInfo<DetectSentiment200Response>> {
        const result = this.api.detectSentimentWithHttpInfo(text, _options);
        return result.toPromise();
    }

    /**
     * Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
     * Detect Sentiment
     * @param text The text for which the sentiment should be detected.
     */
    public detectSentiment(text: string, _options?: Configuration): Promise<DetectSentiment200Response> {
        const result = this.api.detectSentiment(text, _options);
        return result.toPromise();
    }

    /**
     * Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).
     * Extract Dates
     * @param text The text from which dates should be extracted.
     */
    public extractDatesWithHttpInfo(text: string, _options?: Configuration): Promise<HttpInfo<ExtractDates200Response>> {
        const result = this.api.extractDatesWithHttpInfo(text, _options);
        return result.toPromise();
    }

    /**
     * Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).
     * Extract Dates
     * @param text The text from which dates should be extracted.
     */
    public extractDates(text: string, _options?: Configuration): Promise<ExtractDates200Response> {
        const result = this.api.extractDates(text, _options);
        return result.toPromise();
    }

    /**
     * Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
     * Extract Entities
     * @param text The text from which entities should be extracted.
     */
    public extractEntitiesWithHttpInfo(text: string, _options?: Configuration): Promise<HttpInfo<ExtractEntities200Response>> {
        const result = this.api.extractEntitiesWithHttpInfo(text, _options);
        return result.toPromise();
    }

    /**
     * Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
     * Extract Entities
     * @param text The text from which entities should be extracted.
     */
    public extractEntities(text: string, _options?: Configuration): Promise<ExtractEntities200Response> {
        const result = this.api.extractEntities(text, _options);
        return result.toPromise();
    }

    /**
     * Return synonyms of a word.
     * List Word Synonyms
     * @param word The (noun) word for which a list of synonyms should be returned.
     */
    public listWordSynonymsWithHttpInfo(word: string, _options?: Configuration): Promise<HttpInfo<ListWordSynonyms200Response>> {
        const result = this.api.listWordSynonymsWithHttpInfo(word, _options);
        return result.toPromise();
    }

    /**
     * Return synonyms of a word.
     * List Word Synonyms
     * @param word The (noun) word for which a list of synonyms should be returned.
     */
    public listWordSynonyms(word: string, _options?: Configuration): Promise<ListWordSynonyms200Response> {
        const result = this.api.listWordSynonyms(word, _options);
        return result.toPromise();
    }

    /**
     * Find the plural form of a word.
     * Pluralize Word
     * @param word The (noun) word for which the plural form should be found.
     */
    public pluralizeWordWithHttpInfo(word: string, _options?: Configuration): Promise<HttpInfo<PluralizeWord200Response>> {
        const result = this.api.pluralizeWordWithHttpInfo(word, _options);
        return result.toPromise();
    }

    /**
     * Find the plural form of a word.
     * Pluralize Word
     * @param word The (noun) word for which the plural form should be found.
     */
    public pluralizeWord(word: string, _options?: Configuration): Promise<PluralizeWord200Response> {
        const result = this.api.pluralizeWord(word, _options);
        return result.toPromise();
    }

    /**
     * Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
     * Score Readability
     * @param text The text to score for readability.
     */
    public scoreReadabilityWithHttpInfo(text: string, _options?: Configuration): Promise<HttpInfo<ScoreReadability200Response>> {
        const result = this.api.scoreReadabilityWithHttpInfo(text, _options);
        return result.toPromise();
    }

    /**
     * Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
     * Score Readability
     * @param text The text to score for readability.
     */
    public scoreReadability(text: string, _options?: Configuration): Promise<ScoreReadability200Response> {
        const result = this.api.scoreReadability(text, _options);
        return result.toPromise();
    }

    /**
     * Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
     * Score Text
     * @param title The title of the text to score.
     * @param text The text to score for multiple metrics.
     */
    public scoreTextWithHttpInfo(title: string, text: string, _options?: Configuration): Promise<HttpInfo<ScoreText200Response>> {
        const result = this.api.scoreTextWithHttpInfo(title, text, _options);
        return result.toPromise();
    }

    /**
     * Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
     * Score Text
     * @param title The title of the text to score.
     * @param text The text to score for multiple metrics.
     */
    public scoreText(title: string, text: string, _options?: Configuration): Promise<ScoreText200Response> {
        const result = this.api.scoreText(title, text, _options);
        return result.toPromise();
    }

    /**
     * Find the singular form of a word.
     * Singularize Word
     * @param word The (noun) word for which the singular form should be found.
     */
    public singularizeWordWithHttpInfo(word: string, _options?: Configuration): Promise<HttpInfo<SingularizeWord200Response>> {
        const result = this.api.singularizeWordWithHttpInfo(word, _options);
        return result.toPromise();
    }

    /**
     * Find the singular form of a word.
     * Singularize Word
     * @param word The (noun) word for which the singular form should be found.
     */
    public singularizeWord(word: string, _options?: Configuration): Promise<SingularizeWord200Response> {
        const result = this.api.singularizeWord(word, _options);
        return result.toPromise();
    }

    /**
     * The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
     * Stem Text
     * @param text The text to be stemmed.
     */
    public stemTextWithHttpInfo(text: string, _options?: Configuration): Promise<HttpInfo<StemText200Response>> {
        const result = this.api.stemTextWithHttpInfo(text, _options);
        return result.toPromise();
    }

    /**
     * The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
     * Stem Text
     * @param text The text to be stemmed.
     */
    public stemText(text: string, _options?: Configuration): Promise<StemText200Response> {
        const result = this.api.stemText(text, _options);
        return result.toPromise();
    }

    /**
     * Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
     * Tag Part of Speech
     * @param text The text to tag the part of speech.
     */
    public tagPartOfSpeechWithHttpInfo(text: string, _options?: Configuration): Promise<HttpInfo<TagPartOfSpeech200Response>> {
        const result = this.api.tagPartOfSpeechWithHttpInfo(text, _options);
        return result.toPromise();
    }

    /**
     * Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
     * Tag Part of Speech
     * @param text The text to tag the part of speech.
     */
    public tagPartOfSpeech(text: string, _options?: Configuration): Promise<TagPartOfSpeech200Response> {
        const result = this.api.tagPartOfSpeech(text, _options);
        return result.toPromise();
    }


}



import { ObservableWebApi } from './ObservableAPI';

import { WebApiRequestFactory, WebApiResponseProcessor} from "../apis/WebApi";
export class PromiseWebApi {
    private api: ObservableWebApi

    public constructor(
        configuration: Configuration,
        requestFactory?: WebApiRequestFactory,
        responseProcessor?: WebApiResponseProcessor
    ) {
        this.api = new ObservableWebApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
     * Extract Authors
     * @param url The url with the article from which authors should be extracted.
     */
    public extractAuthorsWithHttpInfo(url: string, _options?: Configuration): Promise<HttpInfo<ExtractAuthors200Response>> {
        const result = this.api.extractAuthorsWithHttpInfo(url, _options);
        return result.toPromise();
    }

    /**
     * Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
     * Extract Authors
     * @param url The url with the article from which authors should be extracted.
     */
    public extractAuthors(url: string, _options?: Configuration): Promise<ExtractAuthors200Response> {
        const result = this.api.extractAuthors(url, _options);
        return result.toPromise();
    }

    /**
     * Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
     * Extract Content from a Web Page
     * @param url The url for which the content will be extracted.
     */
    public extractContentFromAWebPageWithHttpInfo(url: string, _options?: Configuration): Promise<HttpInfo<ExtractContentFromAWebPage200Response>> {
        const result = this.api.extractContentFromAWebPageWithHttpInfo(url, _options);
        return result.toPromise();
    }

    /**
     * Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
     * Extract Content from a Web Page
     * @param url The url for which the content will be extracted.
     */
    public extractContentFromAWebPage(url: string, _options?: Configuration): Promise<ExtractContentFromAWebPage200Response> {
        const result = this.api.extractContentFromAWebPage(url, _options);
        return result.toPromise();
    }

    /**
     * Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
     * Extract Publish Date
     * @param url The url for which the publish date should be extracted.
     */
    public extractPublishDateWithHttpInfo(url: string, _options?: Configuration): Promise<HttpInfo<ExtractPublishDate200Response>> {
        const result = this.api.extractPublishDateWithHttpInfo(url, _options);
        return result.toPromise();
    }

    /**
     * Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
     * Extract Publish Date
     * @param url The url for which the publish date should be extracted.
     */
    public extractPublishDate(url: string, _options?: Configuration): Promise<ExtractPublishDate200Response> {
        const result = this.api.extractPublishDate(url, _options);
        return result.toPromise();
    }

    /**
     * This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
     * Retrieve Page Rank
     * @param domain The domain for which the page rank should be returned.
     */
    public retrievePageRankWithHttpInfo(domain: string, _options?: Configuration): Promise<HttpInfo<RetrievePageRank200Response>> {
        const result = this.api.retrievePageRankWithHttpInfo(domain, _options);
        return result.toPromise();
    }

    /**
     * This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
     * Retrieve Page Rank
     * @param domain The domain for which the page rank should be returned.
     */
    public retrievePageRank(domain: string, _options?: Configuration): Promise<RetrievePageRank200Response> {
        const result = this.api.retrievePageRank(domain, _options);
        return result.toPromise();
    }

    /**
     * Search the web for a given query. The API returns a list of results with the title, summary, and URL.
     * Search Web
     * @param query The search query.
     * @param number The number of results to return in range [1,50]
     */
    public searchWebWithHttpInfo(query: string, number?: number, _options?: Configuration): Promise<HttpInfo<SearchWeb200Response>> {
        const result = this.api.searchWebWithHttpInfo(query, number, _options);
        return result.toPromise();
    }

    /**
     * Search the web for a given query. The API returns a list of results with the title, summary, and URL.
     * Search Web
     * @param query The search query.
     * @param number The number of results to return in range [1,50]
     */
    public searchWeb(query: string, number?: number, _options?: Configuration): Promise<SearchWeb200Response> {
        const result = this.api.searchWeb(query, number, _options);
        return result.toPromise();
    }

    /**
     * This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.
     * Verify Email Address
     * @param email The email address to verify.
     */
    public verifyEmailAddressWithHttpInfo(email: string, _options?: Configuration): Promise<HttpInfo<VerifyEmailAddress200Response>> {
        const result = this.api.verifyEmailAddressWithHttpInfo(email, _options);
        return result.toPromise();
    }

    /**
     * This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.
     * Verify Email Address
     * @param email The email address to verify.
     */
    public verifyEmailAddress(email: string, _options?: Configuration): Promise<VerifyEmailAddress200Response> {
        const result = this.api.verifyEmailAddress(email, _options);
        return result.toPromise();
    }


}



