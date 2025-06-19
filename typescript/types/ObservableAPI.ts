import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration} from '../configuration'
import { Observable, of, from } from '../rxjsStub';
import {mergeMap, map} from  '../rxjsStub';
import { ArtSearchAPI200Response } from '../models/ArtSearchAPI200Response';
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
import { RetrieveArtworkById200Response } from '../models/RetrieveArtworkById200Response';
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

import { ArtApiRequestFactory, ArtApiResponseProcessor} from "../apis/ArtApi";
export class ObservableArtApi {
    private requestFactory: ArtApiRequestFactory;
    private responseProcessor: ArtApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: ArtApiRequestFactory,
        responseProcessor?: ArtApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new ArtApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new ArtApiResponseProcessor();
    }

    /**
     * Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.
     * Art Search API
     * @param query The search query.
     * @param earliestStartDate The artwork must have been created after this date.
     * @param latestStartDate The artwork must have been created before this date.
     * @param earliestEndDate For artworks with a period of creation, the completion date must be after this date.
     * @param latestEndDate For artworks with a period of creation, the completion date must be before this date.
     * @param minRatio The minimum aspect ratio (width/height) the artwork image must have.
     * @param maxRatio The maximum aspect ratio (width/height) the artwork image must have.
     * @param type The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy.
     * @param material The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood.
     * @param technique The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging.
     * @param origin The country or region of origin for the artwork
     * @param offset The number of artworks to skip in range [0,1000]
     * @param number The number of artworks to return in range [1,10]
     */
    public artSearchAPIWithHttpInfo(query?: string, earliestStartDate?: number, latestStartDate?: number, earliestEndDate?: number, latestEndDate?: number, minRatio?: number, maxRatio?: number, type?: string, material?: string, technique?: string, origin?: string, offset?: number, number?: number, _options?: Configuration): Observable<HttpInfo<ArtSearchAPI200Response>> {
        const requestContextPromise = this.requestFactory.artSearchAPI(query, earliestStartDate, latestStartDate, earliestEndDate, latestEndDate, minRatio, maxRatio, type, material, technique, origin, offset, number, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.artSearchAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.
     * Art Search API
     * @param query The search query.
     * @param earliestStartDate The artwork must have been created after this date.
     * @param latestStartDate The artwork must have been created before this date.
     * @param earliestEndDate For artworks with a period of creation, the completion date must be after this date.
     * @param latestEndDate For artworks with a period of creation, the completion date must be before this date.
     * @param minRatio The minimum aspect ratio (width/height) the artwork image must have.
     * @param maxRatio The maximum aspect ratio (width/height) the artwork image must have.
     * @param type The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy.
     * @param material The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood.
     * @param technique The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging.
     * @param origin The country or region of origin for the artwork
     * @param offset The number of artworks to skip in range [0,1000]
     * @param number The number of artworks to return in range [1,10]
     */
    public artSearchAPI(query?: string, earliestStartDate?: number, latestStartDate?: number, earliestEndDate?: number, latestEndDate?: number, minRatio?: number, maxRatio?: number, type?: string, material?: string, technique?: string, origin?: string, offset?: number, number?: number, _options?: Configuration): Observable<ArtSearchAPI200Response> {
        return this.artSearchAPIWithHttpInfo(query, earliestStartDate, latestStartDate, earliestEndDate, latestEndDate, minRatio, maxRatio, type, material, technique, origin, offset, number, _options).pipe(map((apiResponse: HttpInfo<ArtSearchAPI200Response>) => apiResponse.data));
    }

    /**
     * Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
     * Image to Ascii Art by URL API
     * @param url The URL to the image.
     * @param width The maximum width of the image (default 400, max. 500).
     * @param height The maximum height of the image (default 400, max. 500).
     */
    public imageToAsciiArtByURLAPIWithHttpInfo(url: string, width?: number, height?: number, _options?: Configuration): Observable<HttpInfo<string>> {
        const requestContextPromise = this.requestFactory.imageToAsciiArtByURLAPI(url, width, height, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.imageToAsciiArtByURLAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
     * Image to Ascii Art by URL API
     * @param url The URL to the image.
     * @param width The maximum width of the image (default 400, max. 500).
     * @param height The maximum height of the image (default 400, max. 500).
     */
    public imageToAsciiArtByURLAPI(url: string, width?: number, height?: number, _options?: Configuration): Observable<string> {
        return this.imageToAsciiArtByURLAPIWithHttpInfo(url, width, height, _options).pipe(map((apiResponse: HttpInfo<string>) => apiResponse.data));
    }

    /**
     * Retrieve a random poem by many famous authors. You can filter poem\'s by length (number of lines).
     * Random Poem API
     * @param minLines The minimum number of lines of the poem.
     * @param maxLines The maximum number of lines of the poem.
     */
    public randomPoemAPIWithHttpInfo(minLines?: number, maxLines?: number, _options?: Configuration): Observable<HttpInfo<RandomPoemAPI200Response>> {
        const requestContextPromise = this.requestFactory.randomPoemAPI(minLines, maxLines, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.randomPoemAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Retrieve a random poem by many famous authors. You can filter poem\'s by length (number of lines).
     * Random Poem API
     * @param minLines The minimum number of lines of the poem.
     * @param maxLines The maximum number of lines of the poem.
     */
    public randomPoemAPI(minLines?: number, maxLines?: number, _options?: Configuration): Observable<RandomPoemAPI200Response> {
        return this.randomPoemAPIWithHttpInfo(minLines, maxLines, _options).pipe(map((apiResponse: HttpInfo<RandomPoemAPI200Response>) => apiResponse.data));
    }

    /**
     * Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.
     * Retrieve Artwork by Id
     * @param id The id of the artwork.
     */
    public retrieveArtworkByIdWithHttpInfo(id: number, _options?: Configuration): Observable<HttpInfo<RetrieveArtworkById200Response>> {
        const requestContextPromise = this.requestFactory.retrieveArtworkById(id, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.retrieveArtworkByIdWithHttpInfo(rsp)));
            }));
    }

    /**
     * Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.
     * Retrieve Artwork by Id
     * @param id The id of the artwork.
     */
    public retrieveArtworkById(id: number, _options?: Configuration): Observable<RetrieveArtworkById200Response> {
        return this.retrieveArtworkByIdWithHttpInfo(id, _options).pipe(map((apiResponse: HttpInfo<RetrieveArtworkById200Response>) => apiResponse.data));
    }

}

import { BooksApiRequestFactory, BooksApiResponseProcessor} from "../apis/BooksApi";
export class ObservableBooksApi {
    private requestFactory: BooksApiRequestFactory;
    private responseProcessor: BooksApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: BooksApiRequestFactory,
        responseProcessor?: BooksApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new BooksApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new BooksApiResponseProcessor();
    }

    /**
     * Find books that are similar to the given book (based on a set of over 4 million books). This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
     * Find Similar Books API
     * @param id The id of the book to which similar books should be found.
     * @param number The number of similar books to return in range [1,100]
     */
    public findSimilarBooksAPIWithHttpInfo(id: number, number?: number, _options?: Configuration): Observable<HttpInfo<FindSimilarBooksAPI200Response>> {
        const requestContextPromise = this.requestFactory.findSimilarBooksAPI(id, number, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.findSimilarBooksAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Find books that are similar to the given book (based on a set of over 4 million books). This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
     * Find Similar Books API
     * @param id The id of the book to which similar books should be found.
     * @param number The number of similar books to return in range [1,100]
     */
    public findSimilarBooksAPI(id: number, number?: number, _options?: Configuration): Observable<FindSimilarBooksAPI200Response> {
        return this.findSimilarBooksAPIWithHttpInfo(id, number, _options).pipe(map((apiResponse: HttpInfo<FindSimilarBooksAPI200Response>) => apiResponse.data));
    }

    /**
     * Search and filter over 4 million books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.
     * Search Books API
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
    public searchBooksAPIWithHttpInfo(query?: string, earliestPublishYear?: number, latestPublishYear?: number, minRating?: number, maxRating?: number, genres?: string, authors?: string, isbn?: string, oclc?: string, sort?: string, sortDirection?: string, groupResults?: boolean, offset?: number, number?: number, _options?: Configuration): Observable<HttpInfo<SearchBooksAPI200Response>> {
        const requestContextPromise = this.requestFactory.searchBooksAPI(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.searchBooksAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Search and filter over 4 million books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.
     * Search Books API
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
    public searchBooksAPI(query?: string, earliestPublishYear?: number, latestPublishYear?: number, minRating?: number, maxRating?: number, genres?: string, authors?: string, isbn?: string, oclc?: string, sort?: string, sortDirection?: string, groupResults?: boolean, offset?: number, number?: number, _options?: Configuration): Observable<SearchBooksAPI200Response> {
        return this.searchBooksAPIWithHttpInfo(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number, _options).pipe(map((apiResponse: HttpInfo<SearchBooksAPI200Response>) => apiResponse.data));
    }

}

import { FoodApiRequestFactory, FoodApiResponseProcessor} from "../apis/FoodApi";
export class ObservableFoodApi {
    private requestFactory: FoodApiRequestFactory;
    private responseProcessor: FoodApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: FoodApiRequestFactory,
        responseProcessor?: FoodApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new FoodApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new FoodApiResponseProcessor();
    }

    /**
     * Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.
     * Compute Nutrition API
     * @param ingredients A comma-separated list of the ingredients of the recipe.
     * @param servings The number of servings the ingredients make. Nutrition is computed per serving.
     * @param reduceOils If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true.
     */
    public computeNutritionAPIWithHttpInfo(ingredients: string, servings?: number, reduceOils?: boolean, _options?: Configuration): Observable<HttpInfo<ComputeNutritionAPI200Response>> {
        const requestContextPromise = this.requestFactory.computeNutritionAPI(ingredients, servings, reduceOils, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.computeNutritionAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.
     * Compute Nutrition API
     * @param ingredients A comma-separated list of the ingredients of the recipe.
     * @param servings The number of servings the ingredients make. Nutrition is computed per serving.
     * @param reduceOils If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true.
     */
    public computeNutritionAPI(ingredients: string, servings?: number, reduceOils?: boolean, _options?: Configuration): Observable<ComputeNutritionAPI200Response> {
        return this.computeNutritionAPIWithHttpInfo(ingredients, servings, reduceOils, _options).pipe(map((apiResponse: HttpInfo<ComputeNutritionAPI200Response>) => apiResponse.data));
    }

    /**
     * Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.
     * Retrieve Recipe Information API
     * @param id The id of the recipe to retrieve.
     * @param addWinePairing Whether to pair a wine to the recipe.
     */
    public retrieveRecipeInformationAPIWithHttpInfo(id: number, addWinePairing?: boolean, _options?: Configuration): Observable<HttpInfo<RetrieveRecipeInformationAPI200Response>> {
        const requestContextPromise = this.requestFactory.retrieveRecipeInformationAPI(id, addWinePairing, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.retrieveRecipeInformationAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.
     * Retrieve Recipe Information API
     * @param id The id of the recipe to retrieve.
     * @param addWinePairing Whether to pair a wine to the recipe.
     */
    public retrieveRecipeInformationAPI(id: number, addWinePairing?: boolean, _options?: Configuration): Observable<RetrieveRecipeInformationAPI200Response> {
        return this.retrieveRecipeInformationAPIWithHttpInfo(id, addWinePairing, _options).pipe(map((apiResponse: HttpInfo<RetrieveRecipeInformationAPI200Response>) => apiResponse.data));
    }

    /**
     * Search for drinks by title, ingredients, flavor, type of glass, alcohol content, and more.
     * Search Drinks API
     * @param query The search query.
     * @param glassTypes A comma-separated list (interpreted as OR) of glass types that the drink should be served in.
     * @param flavors A comma-separated list (interpreted as AND) of dominant flavors in the drink.
     * @param diet The diet the drink must adhere to. One of the following: paleo,primal,grain-free,vegan,vegetarian.
     * @param includeIngredients A comma-separated list of ingredients that should/must be used in the drinks.
     * @param excludeIngredients A comma-separated list of ingredients or ingredient types that the drinks must not contain.
     * @param minCalories The minimum amount of calories the drink must have per serving.
     * @param maxCalories The maximum amount of calories the drink can have per serving.
     * @param minCarbs The minimum amount of carbohydrates in grams the drink must have per serving.
     * @param maxCarbs The maximum amount of carbohydrates in grams the drink can have per serving.
     * @param minProtein The minimum amount of protein in grams the drink must have per serving.
     * @param maxProtein The maximum amount of protein in grams the drink can have per serving.
     * @param minFat The minimum amount of fat in grams the drink must have per serving.
     * @param maxFat The maximum amount of fat in grams the drink can have per serving.
     * @param minAlcoholPercent The minimum alcohol percentage the drink must have.
     * @param maxAlcoholPercent The maximum alcohol percentage the drink can have.
     * @param minCaffeine The minimum amount of caffeine in milligrams the drink must have per serving.
     * @param maxCaffeine The maximum amount of caffeine in milligrams the drink can have per serving.
     * @param sort The attribute by which to sort the drinks.
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC).
     * @param offset The number of drinks to skip, between 0 and 90.
     * @param number The number of drinks, between 1 and 10.
     */
    public searchDrinksAPIWithHttpInfo(query?: string, glassTypes?: string, flavors?: string, diet?: string, includeIngredients?: string, excludeIngredients?: string, minCalories?: number, maxCalories?: number, minCarbs?: number, maxCarbs?: number, minProtein?: number, maxProtein?: number, minFat?: number, maxFat?: number, minAlcoholPercent?: number, maxAlcoholPercent?: number, minCaffeine?: number, maxCaffeine?: number, sort?: string, sortDirection?: string, offset?: number, number?: number, _options?: Configuration): Observable<HttpInfo<SearchDrinksAPI200Response>> {
        const requestContextPromise = this.requestFactory.searchDrinksAPI(query, glassTypes, flavors, diet, includeIngredients, excludeIngredients, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minAlcoholPercent, maxAlcoholPercent, minCaffeine, maxCaffeine, sort, sortDirection, offset, number, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.searchDrinksAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Search for drinks by title, ingredients, flavor, type of glass, alcohol content, and more.
     * Search Drinks API
     * @param query The search query.
     * @param glassTypes A comma-separated list (interpreted as OR) of glass types that the drink should be served in.
     * @param flavors A comma-separated list (interpreted as AND) of dominant flavors in the drink.
     * @param diet The diet the drink must adhere to. One of the following: paleo,primal,grain-free,vegan,vegetarian.
     * @param includeIngredients A comma-separated list of ingredients that should/must be used in the drinks.
     * @param excludeIngredients A comma-separated list of ingredients or ingredient types that the drinks must not contain.
     * @param minCalories The minimum amount of calories the drink must have per serving.
     * @param maxCalories The maximum amount of calories the drink can have per serving.
     * @param minCarbs The minimum amount of carbohydrates in grams the drink must have per serving.
     * @param maxCarbs The maximum amount of carbohydrates in grams the drink can have per serving.
     * @param minProtein The minimum amount of protein in grams the drink must have per serving.
     * @param maxProtein The maximum amount of protein in grams the drink can have per serving.
     * @param minFat The minimum amount of fat in grams the drink must have per serving.
     * @param maxFat The maximum amount of fat in grams the drink can have per serving.
     * @param minAlcoholPercent The minimum alcohol percentage the drink must have.
     * @param maxAlcoholPercent The maximum alcohol percentage the drink can have.
     * @param minCaffeine The minimum amount of caffeine in milligrams the drink must have per serving.
     * @param maxCaffeine The maximum amount of caffeine in milligrams the drink can have per serving.
     * @param sort The attribute by which to sort the drinks.
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC).
     * @param offset The number of drinks to skip, between 0 and 90.
     * @param number The number of drinks, between 1 and 10.
     */
    public searchDrinksAPI(query?: string, glassTypes?: string, flavors?: string, diet?: string, includeIngredients?: string, excludeIngredients?: string, minCalories?: number, maxCalories?: number, minCarbs?: number, maxCarbs?: number, minProtein?: number, maxProtein?: number, minFat?: number, maxFat?: number, minAlcoholPercent?: number, maxAlcoholPercent?: number, minCaffeine?: number, maxCaffeine?: number, sort?: string, sortDirection?: string, offset?: number, number?: number, _options?: Configuration): Observable<SearchDrinksAPI200Response> {
        return this.searchDrinksAPIWithHttpInfo(query, glassTypes, flavors, diet, includeIngredients, excludeIngredients, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minAlcoholPercent, maxAlcoholPercent, minCaffeine, maxCaffeine, sort, sortDirection, offset, number, _options).pipe(map((apiResponse: HttpInfo<SearchDrinksAPI200Response>) => apiResponse.data));
    }

    /**
     * Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.
     * Search Recipes API
     * @param query The search query.
     * @param cuisines The cuisine(s) of the recipes. One or more, comma-separated (will be interpreted as \&#39;OR\&#39;).
     * @param excludeCuisines The cuisine(s) the recipes must not match. One or more, comma-separated (will be interpreted as \&#39;AND\&#39;).
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
     * @param sort The strategy to sort recipes by.
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC).
     * @param offset The number of recipes to skip, between 0 and 900.
     * @param number The number of recipes, between 1 and 100.
     */
    public searchRecipesAPIWithHttpInfo(query?: string, cuisines?: string, excludeCuisines?: string, mealType?: string, diet?: string, intolerances?: string, equipment?: string, includeIngredients?: string, excludeIngredients?: string, fillIngredients?: boolean, addRecipeInformation?: boolean, maxTime?: number, minServings?: number, maxServings?: number, minCalories?: number, maxCalories?: number, minCarbs?: number, maxCarbs?: number, minProtein?: number, maxProtein?: number, minFat?: number, maxFat?: number, minSugar?: number, maxSugar?: number, minFiber?: number, maxFiber?: number, minFolate?: number, maxFolate?: number, minFolicAcid?: number, maxFolicAcid?: number, minIodine?: number, maxIodine?: number, minIron?: number, maxIron?: number, minZinc?: number, maxZinc?: number, minMagnesium?: number, maxMagnesium?: number, minManganese?: number, maxManganese?: number, minPhosphorus?: number, maxPhosphorus?: number, minPotassium?: number, maxPotassium?: number, minSodium?: number, maxSodium?: number, minSelenium?: number, maxSelenium?: number, minCopper?: number, maxCopper?: number, minCalcium?: number, maxCalcium?: number, minCholine?: number, maxCholine?: number, minCholesterol?: number, maxCholesterol?: number, minFluoride?: number, maxFluoride?: number, minAlcohol?: number, maxAlcohol?: number, minCaffeine?: number, maxCaffeine?: number, minSaturatedFat?: number, maxSaturatedFat?: number, minVitaminA?: number, maxVitaminA?: number, minVitaminC?: number, maxVitaminC?: number, minVitaminD?: number, maxVitaminD?: number, minVitaminE?: number, maxVitaminE?: number, minVitaminK?: number, maxVitaminK?: number, minVitaminB1?: number, maxVitaminB1?: number, minVitaminB2?: number, maxVitaminB2?: number, minVitaminB3?: number, maxVitaminB3?: number, minVitaminB5?: number, maxVitaminB5?: number, minVitaminB6?: number, maxVitaminB6?: number, minVitaminB12?: number, maxVitaminB12?: number, sort?: string, sortDirection?: string, offset?: number, number?: number, _options?: Configuration): Observable<HttpInfo<SearchRecipesAPI200Response>> {
        const requestContextPromise = this.requestFactory.searchRecipesAPI(query, cuisines, excludeCuisines, mealType, diet, intolerances, equipment, includeIngredients, excludeIngredients, fillIngredients, addRecipeInformation, maxTime, minServings, maxServings, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minSugar, maxSugar, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minZinc, maxZinc, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSodium, maxSodium, minSelenium, maxSelenium, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB3, maxVitaminB3, minVitaminB5, maxVitaminB5, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, sort, sortDirection, offset, number, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.searchRecipesAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.
     * Search Recipes API
     * @param query The search query.
     * @param cuisines The cuisine(s) of the recipes. One or more, comma-separated (will be interpreted as \&#39;OR\&#39;).
     * @param excludeCuisines The cuisine(s) the recipes must not match. One or more, comma-separated (will be interpreted as \&#39;AND\&#39;).
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
     * @param sort The strategy to sort recipes by.
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC).
     * @param offset The number of recipes to skip, between 0 and 900.
     * @param number The number of recipes, between 1 and 100.
     */
    public searchRecipesAPI(query?: string, cuisines?: string, excludeCuisines?: string, mealType?: string, diet?: string, intolerances?: string, equipment?: string, includeIngredients?: string, excludeIngredients?: string, fillIngredients?: boolean, addRecipeInformation?: boolean, maxTime?: number, minServings?: number, maxServings?: number, minCalories?: number, maxCalories?: number, minCarbs?: number, maxCarbs?: number, minProtein?: number, maxProtein?: number, minFat?: number, maxFat?: number, minSugar?: number, maxSugar?: number, minFiber?: number, maxFiber?: number, minFolate?: number, maxFolate?: number, minFolicAcid?: number, maxFolicAcid?: number, minIodine?: number, maxIodine?: number, minIron?: number, maxIron?: number, minZinc?: number, maxZinc?: number, minMagnesium?: number, maxMagnesium?: number, minManganese?: number, maxManganese?: number, minPhosphorus?: number, maxPhosphorus?: number, minPotassium?: number, maxPotassium?: number, minSodium?: number, maxSodium?: number, minSelenium?: number, maxSelenium?: number, minCopper?: number, maxCopper?: number, minCalcium?: number, maxCalcium?: number, minCholine?: number, maxCholine?: number, minCholesterol?: number, maxCholesterol?: number, minFluoride?: number, maxFluoride?: number, minAlcohol?: number, maxAlcohol?: number, minCaffeine?: number, maxCaffeine?: number, minSaturatedFat?: number, maxSaturatedFat?: number, minVitaminA?: number, maxVitaminA?: number, minVitaminC?: number, maxVitaminC?: number, minVitaminD?: number, maxVitaminD?: number, minVitaminE?: number, maxVitaminE?: number, minVitaminK?: number, maxVitaminK?: number, minVitaminB1?: number, maxVitaminB1?: number, minVitaminB2?: number, maxVitaminB2?: number, minVitaminB3?: number, maxVitaminB3?: number, minVitaminB5?: number, maxVitaminB5?: number, minVitaminB6?: number, maxVitaminB6?: number, minVitaminB12?: number, maxVitaminB12?: number, sort?: string, sortDirection?: string, offset?: number, number?: number, _options?: Configuration): Observable<SearchRecipesAPI200Response> {
        return this.searchRecipesAPIWithHttpInfo(query, cuisines, excludeCuisines, mealType, diet, intolerances, equipment, includeIngredients, excludeIngredients, fillIngredients, addRecipeInformation, maxTime, minServings, maxServings, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minSugar, maxSugar, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minZinc, maxZinc, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSodium, maxSodium, minSelenium, maxSelenium, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB3, maxVitaminB3, minVitaminB5, maxVitaminB5, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, sort, sortDirection, offset, number, _options).pipe(map((apiResponse: HttpInfo<SearchRecipesAPI200Response>) => apiResponse.data));
    }

    /**
     * Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
     * Search Restaurants API
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
    public searchRestaurantsAPIWithHttpInfo(lat: number, lon: number, query?: string, distance?: number, budget?: number, minRating?: number, cuisine?: string, isOpen?: boolean, page?: number, sort?: string, _options?: Configuration): Observable<HttpInfo<SearchRestaurantsAPI200Response>> {
        const requestContextPromise = this.requestFactory.searchRestaurantsAPI(lat, lon, query, distance, budget, minRating, cuisine, isOpen, page, sort, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.searchRestaurantsAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
     * Search Restaurants API
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
    public searchRestaurantsAPI(lat: number, lon: number, query?: string, distance?: number, budget?: number, minRating?: number, cuisine?: string, isOpen?: boolean, page?: number, sort?: string, _options?: Configuration): Observable<SearchRestaurantsAPI200Response> {
        return this.searchRestaurantsAPIWithHttpInfo(lat, lon, query, distance, budget, minRating, cuisine, isOpen, page, sort, _options).pipe(map((apiResponse: HttpInfo<SearchRestaurantsAPI200Response>) => apiResponse.data));
    }

}

import { HumorApiRequestFactory, HumorApiResponseProcessor} from "../apis/HumorApi";
export class ObservableHumorApi {
    private requestFactory: HumorApiRequestFactory;
    private responseProcessor: HumorApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: HumorApiRequestFactory,
        responseProcessor?: HumorApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new HumorApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new HumorApiResponseProcessor();
    }

    /**
     * Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
     * Generate Nonsense Word API
     */
    public generateNonsenseWordAPIWithHttpInfo(_options?: Configuration): Observable<HttpInfo<GenerateNonsenseWordAPI200Response>> {
        const requestContextPromise = this.requestFactory.generateNonsenseWordAPI(_options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.generateNonsenseWordAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
     * Generate Nonsense Word API
     */
    public generateNonsenseWordAPI(_options?: Configuration): Observable<GenerateNonsenseWordAPI200Response> {
        return this.generateNonsenseWordAPIWithHttpInfo(_options).pipe(map((apiResponse: HttpInfo<GenerateNonsenseWordAPI200Response>) => apiResponse.data));
    }

    /**
     * This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
     * Random Joke API
     * @param includeTags A comma-separated list of tags the jokes should have.
     * @param excludeTags A comma-separated list of tags the jokes must not have.
     * @param minRating The minimum rating in range [0.0,1.0] of the jokes.
     * @param maxLength The maximum length of the joke in letters.
     */
    public randomJokeAPIWithHttpInfo(includeTags?: string, excludeTags?: string, minRating?: number, maxLength?: number, _options?: Configuration): Observable<HttpInfo<SearchJokesAPI200ResponseJokesInner>> {
        const requestContextPromise = this.requestFactory.randomJokeAPI(includeTags, excludeTags, minRating, maxLength, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.randomJokeAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \"nsfw\" or \"religious\".
     * Random Joke API
     * @param includeTags A comma-separated list of tags the jokes should have.
     * @param excludeTags A comma-separated list of tags the jokes must not have.
     * @param minRating The minimum rating in range [0.0,1.0] of the jokes.
     * @param maxLength The maximum length of the joke in letters.
     */
    public randomJokeAPI(includeTags?: string, excludeTags?: string, minRating?: number, maxLength?: number, _options?: Configuration): Observable<SearchJokesAPI200ResponseJokesInner> {
        return this.randomJokeAPIWithHttpInfo(includeTags, excludeTags, minRating, maxLength, _options).pipe(map((apiResponse: HttpInfo<SearchJokesAPI200ResponseJokesInner>) => apiResponse.data));
    }

    /**
     * Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter.
     * Random Meme API
     * @param keywords A comma-separated list of words that must occur in the meme.
     * @param keywordsInImage Whether the keywords must occur in the image.
     * @param mediaType The media type (either \&#39;image\&#39;, \&#39;video\&#39; or even specific format such as \&#39;jpg\&#39;, \&#39;png\&#39;, or \&#39;gif\&#39;).
     * @param minRating The minimum rating in range [0.0,1.0] of the meme.
     * @param maxAgeDays The maximum age of the meme in days.
     */
    public randomMemeAPIWithHttpInfo(keywords?: string, keywordsInImage?: boolean, mediaType?: string, minRating?: number, maxAgeDays?: number, _options?: Configuration): Observable<HttpInfo<RandomMemeAPI200Response>> {
        const requestContextPromise = this.requestFactory.randomMemeAPI(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.randomMemeAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter.
     * Random Meme API
     * @param keywords A comma-separated list of words that must occur in the meme.
     * @param keywordsInImage Whether the keywords must occur in the image.
     * @param mediaType The media type (either \&#39;image\&#39;, \&#39;video\&#39; or even specific format such as \&#39;jpg\&#39;, \&#39;png\&#39;, or \&#39;gif\&#39;).
     * @param minRating The minimum rating in range [0.0,1.0] of the meme.
     * @param maxAgeDays The maximum age of the meme in days.
     */
    public randomMemeAPI(keywords?: string, keywordsInImage?: boolean, mediaType?: string, minRating?: number, maxAgeDays?: number, _options?: Configuration): Observable<RandomMemeAPI200Response> {
        return this.randomMemeAPIWithHttpInfo(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, _options).pipe(map((apiResponse: HttpInfo<RandomMemeAPI200Response>) => apiResponse.data));
    }

    /**
     * Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
     * Search Gifs API
     * @param query The search query.
     * @param number The number of gifs to return in range [1,10]
     */
    public searchGifsAPIWithHttpInfo(query: string, number?: number, _options?: Configuration): Observable<HttpInfo<SearchGifsAPI200Response>> {
        const requestContextPromise = this.requestFactory.searchGifsAPI(query, number, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.searchGifsAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
     * Search Gifs API
     * @param query The search query.
     * @param number The number of gifs to return in range [1,10]
     */
    public searchGifsAPI(query: string, number?: number, _options?: Configuration): Observable<SearchGifsAPI200Response> {
        return this.searchGifsAPIWithHttpInfo(query, number, _options).pipe(map((apiResponse: HttpInfo<SearchGifsAPI200Response>) => apiResponse.data));
    }

    /**
     * With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
     * Search Jokes API
     * @param keywords A comma-separated list of words that must occur in the joke.
     * @param includeTags A comma-separated list of tags the jokes should have.
     * @param excludeTags A comma-separated list of tags the jokes must not have.
     * @param minRating The minimum rating in range [0.0,1.0] of the jokes.
     * @param maxLength The maximum length of the joke in letters.
     * @param offset The number of jokes to skip, between 0 and 1000.
     * @param number The number of jokes, between 1 and 10.
     */
    public searchJokesAPIWithHttpInfo(keywords?: string, includeTags?: string, excludeTags?: string, minRating?: number, maxLength?: number, offset?: number, number?: number, _options?: Configuration): Observable<HttpInfo<SearchJokesAPI200Response>> {
        const requestContextPromise = this.requestFactory.searchJokesAPI(keywords, includeTags, excludeTags, minRating, maxLength, offset, number, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.searchJokesAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
     * Search Jokes API
     * @param keywords A comma-separated list of words that must occur in the joke.
     * @param includeTags A comma-separated list of tags the jokes should have.
     * @param excludeTags A comma-separated list of tags the jokes must not have.
     * @param minRating The minimum rating in range [0.0,1.0] of the jokes.
     * @param maxLength The maximum length of the joke in letters.
     * @param offset The number of jokes to skip, between 0 and 1000.
     * @param number The number of jokes, between 1 and 10.
     */
    public searchJokesAPI(keywords?: string, includeTags?: string, excludeTags?: string, minRating?: number, maxLength?: number, offset?: number, number?: number, _options?: Configuration): Observable<SearchJokesAPI200Response> {
        return this.searchJokesAPIWithHttpInfo(keywords, includeTags, excludeTags, minRating, maxLength, offset, number, _options).pipe(map((apiResponse: HttpInfo<SearchJokesAPI200Response>) => apiResponse.data));
    }

    /**
     * Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You\'ll surely find something funny.
     * Search Memes API
     * @param keywords A comma-separated list of words that must occur in the meme.
     * @param keywordsInImage Whether the keywords must occur in the image.
     * @param mediaType The media type (either \&#39;image\&#39;, \&#39;video\&#39; or even specific format such as \&#39;jpg\&#39;, \&#39;png\&#39;, or \&#39;gif\&#39;).
     * @param minRating The minimum rating in range [0.0,1.0] of the meme.
     * @param maxAgeDays The maximum age of the meme in days.
     * @param offset The number of memes to skip, between 0 and 1000.
     * @param number The number of memes, between 1 and 10.
     */
    public searchMemesAPIWithHttpInfo(keywords?: string, keywordsInImage?: boolean, mediaType?: string, minRating?: number, maxAgeDays?: number, offset?: number, number?: number, _options?: Configuration): Observable<HttpInfo<SearchMemesAPI200Response>> {
        const requestContextPromise = this.requestFactory.searchMemesAPI(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.searchMemesAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You\'ll surely find something funny.
     * Search Memes API
     * @param keywords A comma-separated list of words that must occur in the meme.
     * @param keywordsInImage Whether the keywords must occur in the image.
     * @param mediaType The media type (either \&#39;image\&#39;, \&#39;video\&#39; or even specific format such as \&#39;jpg\&#39;, \&#39;png\&#39;, or \&#39;gif\&#39;).
     * @param minRating The minimum rating in range [0.0,1.0] of the meme.
     * @param maxAgeDays The maximum age of the meme in days.
     * @param offset The number of memes to skip, between 0 and 1000.
     * @param number The number of memes, between 1 and 10.
     */
    public searchMemesAPI(keywords?: string, keywordsInImage?: boolean, mediaType?: string, minRating?: number, maxAgeDays?: number, offset?: number, number?: number, _options?: Configuration): Observable<SearchMemesAPI200Response> {
        return this.searchMemesAPIWithHttpInfo(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number, _options).pipe(map((apiResponse: HttpInfo<SearchMemesAPI200Response>) => apiResponse.data));
    }

}

import { KnowledgeApiRequestFactory, KnowledgeApiResponseProcessor} from "../apis/KnowledgeApi";
export class ObservableKnowledgeApi {
    private requestFactory: KnowledgeApiRequestFactory;
    private responseProcessor: KnowledgeApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: KnowledgeApiRequestFactory,
        responseProcessor?: KnowledgeApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new KnowledgeApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new KnowledgeApiResponseProcessor();
    }

    /**
     * This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.
     * Random Quote API
     * @param minLength The minimum length of the quote in letters.
     * @param maxLength The maximum length of the quote in letters.
     */
    public randomQuoteAPIWithHttpInfo(minLength?: number, maxLength?: number, _options?: Configuration): Observable<HttpInfo<RandomQuoteAPI200Response>> {
        const requestContextPromise = this.requestFactory.randomQuoteAPI(minLength, maxLength, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.randomQuoteAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.
     * Random Quote API
     * @param minLength The minimum length of the quote in letters.
     * @param maxLength The maximum length of the quote in letters.
     */
    public randomQuoteAPI(minLength?: number, maxLength?: number, _options?: Configuration): Observable<RandomQuoteAPI200Response> {
        return this.randomQuoteAPIWithHttpInfo(minLength, maxLength, _options).pipe(map((apiResponse: HttpInfo<RandomQuoteAPI200Response>) => apiResponse.data));
    }

    /**
     * The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.
     * Random Riddle API
     * @param difficulty The difficulty of the riddle, either \&quot;easy\&quot;, \&quot;medium\&quot;, or \&quot;hard\&quot;.
     */
    public randomRiddleAPIWithHttpInfo(difficulty?: string, _options?: Configuration): Observable<HttpInfo<RandomRiddleAPI200Response>> {
        const requestContextPromise = this.requestFactory.randomRiddleAPI(difficulty, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.randomRiddleAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.
     * Random Riddle API
     * @param difficulty The difficulty of the riddle, either \&quot;easy\&quot;, \&quot;medium\&quot;, or \&quot;hard\&quot;.
     */
    public randomRiddleAPI(difficulty?: string, _options?: Configuration): Observable<RandomRiddleAPI200Response> {
        return this.randomRiddleAPIWithHttpInfo(difficulty, _options).pipe(map((apiResponse: HttpInfo<RandomRiddleAPI200Response>) => apiResponse.data));
    }

    /**
     * This endpoint returns a random piece of trivia like \"Rio de Janeiro was once the capital of Portugal, making it the only European capital outside of Europe.\".
     * Random Trivia API
     * @param maxLength The maximum length of the trivia in letters.
     */
    public randomTriviaAPIWithHttpInfo(maxLength?: number, _options?: Configuration): Observable<HttpInfo<RandomTriviaAPI200Response>> {
        const requestContextPromise = this.requestFactory.randomTriviaAPI(maxLength, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.randomTriviaAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * This endpoint returns a random piece of trivia like \"Rio de Janeiro was once the capital of Portugal, making it the only European capital outside of Europe.\".
     * Random Trivia API
     * @param maxLength The maximum length of the trivia in letters.
     */
    public randomTriviaAPI(maxLength?: number, _options?: Configuration): Observable<RandomTriviaAPI200Response> {
        return this.randomTriviaAPIWithHttpInfo(maxLength, _options).pipe(map((apiResponse: HttpInfo<RandomTriviaAPI200Response>) => apiResponse.data));
    }

}

import { MathApiRequestFactory, MathApiResponseProcessor} from "../apis/MathApi";
export class ObservableMathApi {
    private requestFactory: MathApiRequestFactory;
    private responseProcessor: MathApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: MathApiRequestFactory,
        responseProcessor?: MathApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new MathApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new MathApiResponseProcessor();
    }

    /**
     * Convert units from one to another. The API returns the amount and the unit of the target unit.
     * Convert Units API
     * @param sourceAmount The source amount.
     * @param sourceUnit The source unit.
     * @param targetUnit The unit to which should be converted.
     * @param foodName An optional food name. For converting foods the food is relevant as they have different densities.
     */
    public convertUnitsAPIWithHttpInfo(sourceAmount: number, sourceUnit: string, targetUnit: string, foodName?: string, _options?: Configuration): Observable<HttpInfo<ConvertUnitsAPI200Response>> {
        const requestContextPromise = this.requestFactory.convertUnitsAPI(sourceAmount, sourceUnit, targetUnit, foodName, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.convertUnitsAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Convert units from one to another. The API returns the amount and the unit of the target unit.
     * Convert Units API
     * @param sourceAmount The source amount.
     * @param sourceUnit The source unit.
     * @param targetUnit The unit to which should be converted.
     * @param foodName An optional food name. For converting foods the food is relevant as they have different densities.
     */
    public convertUnitsAPI(sourceAmount: number, sourceUnit: string, targetUnit: string, foodName?: string, _options?: Configuration): Observable<ConvertUnitsAPI200Response> {
        return this.convertUnitsAPIWithHttpInfo(sourceAmount, sourceUnit, targetUnit, foodName, _options).pipe(map((apiResponse: HttpInfo<ConvertUnitsAPI200Response>) => apiResponse.data));
    }

}

import { MediaApiRequestFactory, MediaApiResponseProcessor} from "../apis/MediaApi";
export class ObservableMediaApi {
    private requestFactory: MediaApiRequestFactory;
    private responseProcessor: MediaApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: MediaApiRequestFactory,
        responseProcessor?: MediaApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new MediaApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new MediaApiResponseProcessor();
    }

    /**
     * Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
     * Detect Main Image Color API
     * @param url The url of the image for which the colors should be detected.
     */
    public detectMainImageColorAPIWithHttpInfo(url: string, _options?: Configuration): Observable<HttpInfo<Array<DetectMainImageColorAPI200ResponseInner>>> {
        const requestContextPromise = this.requestFactory.detectMainImageColorAPI(url, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.detectMainImageColorAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
     * Detect Main Image Color API
     * @param url The url of the image for which the colors should be detected.
     */
    public detectMainImageColorAPI(url: string, _options?: Configuration): Observable<Array<DetectMainImageColorAPI200ResponseInner>> {
        return this.detectMainImageColorAPIWithHttpInfo(url, _options).pipe(map((apiResponse: HttpInfo<Array<DetectMainImageColorAPI200ResponseInner>>) => apiResponse.data));
    }

    /**
     * Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
     * Rescale Image API
     * @param url The url of the image to be rescaled.
     * @param width The desired width of the rescaled image.
     * @param height The desired height of the rescaled image.
     * @param crop Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
     */
    public rescaleImageAPIWithHttpInfo(url: string, width: number, height: number, crop: boolean, _options?: Configuration): Observable<HttpInfo<HttpFile>> {
        const requestContextPromise = this.requestFactory.rescaleImageAPI(url, width, height, crop, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.rescaleImageAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
     * Rescale Image API
     * @param url The url of the image to be rescaled.
     * @param width The desired width of the rescaled image.
     * @param height The desired height of the rescaled image.
     * @param crop Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
     */
    public rescaleImageAPI(url: string, width: number, height: number, crop: boolean, _options?: Configuration): Observable<HttpFile> {
        return this.rescaleImageAPIWithHttpInfo(url, width, height, crop, _options).pipe(map((apiResponse: HttpInfo<HttpFile>) => apiResponse.data));
    }

    /**
     * Search through millions of icons to match any topic you want.
     * Search Icons API
     * @param query The search query.
     * @param onlyPublicDomain If true, only public domain icons will be returned.
     * @param number The number of icons to return in range [1,100]
     */
    public searchIconsAPIWithHttpInfo(query: string, onlyPublicDomain?: boolean, number?: number, _options?: Configuration): Observable<HttpInfo<SearchIconsAPI200Response>> {
        const requestContextPromise = this.requestFactory.searchIconsAPI(query, onlyPublicDomain, number, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.searchIconsAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Search through millions of icons to match any topic you want.
     * Search Icons API
     * @param query The search query.
     * @param onlyPublicDomain If true, only public domain icons will be returned.
     * @param number The number of icons to return in range [1,100]
     */
    public searchIconsAPI(query: string, onlyPublicDomain?: boolean, number?: number, _options?: Configuration): Observable<SearchIconsAPI200Response> {
        return this.searchIconsAPIWithHttpInfo(query, onlyPublicDomain, number, _options).pipe(map((apiResponse: HttpInfo<SearchIconsAPI200Response>) => apiResponse.data));
    }

    /**
     * Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
     * Search Royalty Free Images API
     * @param query The search query.
     * @param number The number of images to return in range [1,100]
     */
    public searchRoyaltyFreeImagesAPIWithHttpInfo(query: string, number?: number, _options?: Configuration): Observable<HttpInfo<SearchRoyaltyFreeImagesAPI200Response>> {
        const requestContextPromise = this.requestFactory.searchRoyaltyFreeImagesAPI(query, number, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.searchRoyaltyFreeImagesAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
     * Search Royalty Free Images API
     * @param query The search query.
     * @param number The number of images to return in range [1,100]
     */
    public searchRoyaltyFreeImagesAPI(query: string, number?: number, _options?: Configuration): Observable<SearchRoyaltyFreeImagesAPI200Response> {
        return this.searchRoyaltyFreeImagesAPIWithHttpInfo(query, number, _options).pipe(map((apiResponse: HttpInfo<SearchRoyaltyFreeImagesAPI200Response>) => apiResponse.data));
    }

    /**
     * Search through over 700,000 free to use vector icons. The license is either \"PUBLIC_DOMAIN\" or \"ATTRIBUTION\". If it is \"ATTRIBUTION\" just attribute the author somewhere in your project.
     * Vector Search API
     * @param query The search query.
     * @param offset The number of vectors to skip, between 0 and 1000
     * @param number The number of vectors to return in range [1,10]
     */
    public vectorSearchAPIWithHttpInfo(query: string, offset?: number, number?: number, _options?: Configuration): Observable<HttpInfo<VectorSearchAPI200Response>> {
        const requestContextPromise = this.requestFactory.vectorSearchAPI(query, offset, number, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.vectorSearchAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Search through over 700,000 free to use vector icons. The license is either \"PUBLIC_DOMAIN\" or \"ATTRIBUTION\". If it is \"ATTRIBUTION\" just attribute the author somewhere in your project.
     * Vector Search API
     * @param query The search query.
     * @param offset The number of vectors to skip, between 0 and 1000
     * @param number The number of vectors to return in range [1,10]
     */
    public vectorSearchAPI(query: string, offset?: number, number?: number, _options?: Configuration): Observable<VectorSearchAPI200Response> {
        return this.vectorSearchAPIWithHttpInfo(query, offset, number, _options).pipe(map((apiResponse: HttpInfo<VectorSearchAPI200Response>) => apiResponse.data));
    }

}

import { NewsApiRequestFactory, NewsApiResponseProcessor} from "../apis/NewsApi";
export class ObservableNewsApi {
    private requestFactory: NewsApiRequestFactory;
    private responseProcessor: NewsApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: NewsApiRequestFactory,
        responseProcessor?: NewsApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new NewsApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new NewsApiResponseProcessor();
    }

    /**
     * Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
     * Extract News API
     * @param url The url of the news.
     * @param analyze Whether to analyze the news (extract entities etc.)
     */
    public extractNewsAPIWithHttpInfo(url: string, analyze: boolean, _options?: Configuration): Observable<HttpInfo<ExtractNewsAPI200Response>> {
        const requestContextPromise = this.requestFactory.extractNewsAPI(url, analyze, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.extractNewsAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
     * Extract News API
     * @param url The url of the news.
     * @param analyze Whether to analyze the news (extract entities etc.)
     */
    public extractNewsAPI(url: string, analyze: boolean, _options?: Configuration): Observable<ExtractNewsAPI200Response> {
        return this.extractNewsAPIWithHttpInfo(url, analyze, _options).pipe(map((apiResponse: HttpInfo<ExtractNewsAPI200Response>) => apiResponse.data));
    }

    /**
     * Search and filter millions of news from over 200 countries in 90 languages by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
     * Search News API
     * @param text The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford.
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
    public searchNewsAPIWithHttpInfo(text?: string, sourceCountries?: string, language?: string, minSentiment?: number, maxSentiment?: number, earliestPublishDate?: string, latestPublishDate?: string, newsSources?: string, authors?: string, categories?: string, entities?: string, locationFilter?: string, sort?: string, sortDirection?: string, offset?: number, number?: number, _options?: Configuration): Observable<HttpInfo<SearchNewsAPI200Response>> {
        const requestContextPromise = this.requestFactory.searchNewsAPI(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, categories, entities, locationFilter, sort, sortDirection, offset, number, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.searchNewsAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Search and filter millions of news from over 200 countries in 90 languages by text, date, location, category, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
     * Search News API
     * @param text The text to match in the news content (at least 3 characters, maximum 100 characters). By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford. You can also exclude terms by putting a minus sign (-) in front of the term, e.g. tesla -ford.
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
    public searchNewsAPI(text?: string, sourceCountries?: string, language?: string, minSentiment?: number, maxSentiment?: number, earliestPublishDate?: string, latestPublishDate?: string, newsSources?: string, authors?: string, categories?: string, entities?: string, locationFilter?: string, sort?: string, sortDirection?: string, offset?: number, number?: number, _options?: Configuration): Observable<SearchNewsAPI200Response> {
        return this.searchNewsAPIWithHttpInfo(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, categories, entities, locationFilter, sort, sortDirection, offset, number, _options).pipe(map((apiResponse: HttpInfo<SearchNewsAPI200Response>) => apiResponse.data));
    }

    /**
     * Get the top news from a country (over 220 are supported) in a language (over 90 are supported) for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
     * Top News API
     * @param sourceCountry The ISO 3166 country code of the country for which top news should be retrieved.
     * @param language The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
     * @param date The date for which the top news should be retrieved. If no date is given, the current day is assumed.
     * @param headlinesOnly Whether to only return basic information such as id, title, and url of the news.
     */
    public topNewsAPIWithHttpInfo(sourceCountry: string, language: string, date?: string, headlinesOnly?: boolean, _options?: Configuration): Observable<HttpInfo<TopNewsAPI200Response>> {
        const requestContextPromise = this.requestFactory.topNewsAPI(sourceCountry, language, date, headlinesOnly, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.topNewsAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Get the top news from a country (over 220 are supported) in a language (over 90 are supported) for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
     * Top News API
     * @param sourceCountry The ISO 3166 country code of the country for which top news should be retrieved.
     * @param language The ISO 6391 language code of the top news. The language must be one spoken in the source-country.
     * @param date The date for which the top news should be retrieved. If no date is given, the current day is assumed.
     * @param headlinesOnly Whether to only return basic information such as id, title, and url of the news.
     */
    public topNewsAPI(sourceCountry: string, language: string, date?: string, headlinesOnly?: boolean, _options?: Configuration): Observable<TopNewsAPI200Response> {
        return this.topNewsAPIWithHttpInfo(sourceCountry, language, date, headlinesOnly, _options).pipe(map((apiResponse: HttpInfo<TopNewsAPI200Response>) => apiResponse.data));
    }

}

import { StorageApiRequestFactory, StorageApiResponseProcessor} from "../apis/StorageApi";
export class ObservableStorageApi {
    private requestFactory: StorageApiRequestFactory;
    private responseProcessor: StorageApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: StorageApiRequestFactory,
        responseProcessor?: StorageApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new StorageApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new StorageApiResponseProcessor();
    }

    /**
     * Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
     * Read Key Value from Store API
     * @param key The key for which the value is stored (max length 255 characters).
     */
    public readKeyValueFromStoreAPIWithHttpInfo(key: string, _options?: Configuration): Observable<HttpInfo<ReadKeyValueFromStoreAPI200Response>> {
        const requestContextPromise = this.requestFactory.readKeyValueFromStoreAPI(key, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.readKeyValueFromStoreAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
     * Read Key Value from Store API
     * @param key The key for which the value is stored (max length 255 characters).
     */
    public readKeyValueFromStoreAPI(key: string, _options?: Configuration): Observable<ReadKeyValueFromStoreAPI200Response> {
        return this.readKeyValueFromStoreAPIWithHttpInfo(key, _options).pipe(map((apiResponse: HttpInfo<ReadKeyValueFromStoreAPI200Response>) => apiResponse.data));
    }

    /**
     * Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
     * Store Key Value (GET) API
     * @param key The key for which the value is stored (max length 255 characters).
     * @param value The value that is supposed to be stored (max length 10,000 characters).
     */
    public storeKeyValueGETAPIWithHttpInfo(key: string, value: string, _options?: Configuration): Observable<HttpInfo<StoreKeyValueGETAPI200Response>> {
        const requestContextPromise = this.requestFactory.storeKeyValueGETAPI(key, value, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.storeKeyValueGETAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
     * Store Key Value (GET) API
     * @param key The key for which the value is stored (max length 255 characters).
     * @param value The value that is supposed to be stored (max length 10,000 characters).
     */
    public storeKeyValueGETAPI(key: string, value: string, _options?: Configuration): Observable<StoreKeyValueGETAPI200Response> {
        return this.storeKeyValueGETAPIWithHttpInfo(key, value, _options).pipe(map((apiResponse: HttpInfo<StoreKeyValueGETAPI200Response>) => apiResponse.data));
    }

}

import { TextApiRequestFactory, TextApiResponseProcessor} from "../apis/TextApi";
export class ObservableTextApi {
    private requestFactory: TextApiRequestFactory;
    private responseProcessor: TextApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: TextApiRequestFactory,
        responseProcessor?: TextApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new TextApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new TextApiResponseProcessor();
    }

    /**
     * The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).
     * Correct Spelling API
     * @param text The text to be corrected.
     * @param language The language of the text, one of en, de, es, fr, or it.
     */
    public correctSpellingAPIWithHttpInfo(text: string, language: string, _options?: Configuration): Observable<HttpInfo<CorrectSpellingAPI200Response>> {
        const requestContextPromise = this.requestFactory.correctSpellingAPI(text, language, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.correctSpellingAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * The API corrects spelling mistakes in a given text. It returns the corrected text or the original text if nothing was corrected. This API supports text in the following languages: English (en), French (fr), German (de), Italian (it), and Spanish (es).
     * Correct Spelling API
     * @param text The text to be corrected.
     * @param language The language of the text, one of en, de, es, fr, or it.
     */
    public correctSpellingAPI(text: string, language: string, _options?: Configuration): Observable<CorrectSpellingAPI200Response> {
        return this.correctSpellingAPIWithHttpInfo(text, language, _options).pipe(map((apiResponse: HttpInfo<CorrectSpellingAPI200Response>) => apiResponse.data));
    }

    /**
     * Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.
     * Detect Gender by Name API
     * @param name The name of the perso for which the sentiment should be detected.
     */
    public detectGenderByNameAPIWithHttpInfo(name: string, _options?: Configuration): Observable<HttpInfo<DetectGenderByNameAPI200Response>> {
        const requestContextPromise = this.requestFactory.detectGenderByNameAPI(name, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.detectGenderByNameAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Detect the likelihood that a name is given to a male or female (aka to \"genderize\" a name). While there are more than two genders, this API is limited to the binary classification as the name is given to the baby when it is born and only the sex is known.
     * Detect Gender by Name API
     * @param name The name of the perso for which the sentiment should be detected.
     */
    public detectGenderByNameAPI(name: string, _options?: Configuration): Observable<DetectGenderByNameAPI200Response> {
        return this.detectGenderByNameAPIWithHttpInfo(name, _options).pipe(map((apiResponse: HttpInfo<DetectGenderByNameAPI200Response>) => apiResponse.data));
    }

    /**
     * Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
     * Detect Language API
     * @param text The text for which the language should be detected.
     */
    public detectLanguageAPIWithHttpInfo(text: string, _options?: Configuration): Observable<HttpInfo<Array<DetectLanguageAPI200ResponseInner>>> {
        const requestContextPromise = this.requestFactory.detectLanguageAPI(text, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.detectLanguageAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
     * Detect Language API
     * @param text The text for which the language should be detected.
     */
    public detectLanguageAPI(text: string, _options?: Configuration): Observable<Array<DetectLanguageAPI200ResponseInner>> {
        return this.detectLanguageAPIWithHttpInfo(text, _options).pipe(map((apiResponse: HttpInfo<Array<DetectLanguageAPI200ResponseInner>>) => apiResponse.data));
    }

    /**
     * Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
     * Detect Sentiment API
     * @param text The text for which the sentiment should be detected.
     */
    public detectSentimentAPIWithHttpInfo(text: string, _options?: Configuration): Observable<HttpInfo<DetectSentimentAPI200Response>> {
        const requestContextPromise = this.requestFactory.detectSentimentAPI(text, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.detectSentimentAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
     * Detect Sentiment API
     * @param text The text for which the sentiment should be detected.
     */
    public detectSentimentAPI(text: string, _options?: Configuration): Observable<DetectSentimentAPI200Response> {
        return this.detectSentimentAPIWithHttpInfo(text, _options).pipe(map((apiResponse: HttpInfo<DetectSentimentAPI200Response>) => apiResponse.data));
    }

    /**
     * Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).
     * Extract Dates API
     * @param text The text from which dates should be extracted.
     */
    public extractDatesAPIWithHttpInfo(text: string, _options?: Configuration): Observable<HttpInfo<ExtractDatesAPI200Response>> {
        const requestContextPromise = this.requestFactory.extractDatesAPI(text, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.extractDatesAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).
     * Extract Dates API
     * @param text The text from which dates should be extracted.
     */
    public extractDatesAPI(text: string, _options?: Configuration): Observable<ExtractDatesAPI200Response> {
        return this.extractDatesAPIWithHttpInfo(text, _options).pipe(map((apiResponse: HttpInfo<ExtractDatesAPI200Response>) => apiResponse.data));
    }

    /**
     * Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
     * Extract Entities API
     * @param text The text from which entities should be extracted.
     */
    public extractEntitiesAPIWithHttpInfo(text: string, _options?: Configuration): Observable<HttpInfo<ExtractEntitiesAPI200Response>> {
        const requestContextPromise = this.requestFactory.extractEntitiesAPI(text, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.extractEntitiesAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
     * Extract Entities API
     * @param text The text from which entities should be extracted.
     */
    public extractEntitiesAPI(text: string, _options?: Configuration): Observable<ExtractEntitiesAPI200Response> {
        return this.extractEntitiesAPIWithHttpInfo(text, _options).pipe(map((apiResponse: HttpInfo<ExtractEntitiesAPI200Response>) => apiResponse.data));
    }

    /**
     * Return synonyms of a word.
     * List Word Synonyms API
     * @param word The (noun) word for which a list of synonyms should be returned.
     */
    public listWordSynonymsAPIWithHttpInfo(word: string, _options?: Configuration): Observable<HttpInfo<ListWordSynonymsAPI200Response>> {
        const requestContextPromise = this.requestFactory.listWordSynonymsAPI(word, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.listWordSynonymsAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Return synonyms of a word.
     * List Word Synonyms API
     * @param word The (noun) word for which a list of synonyms should be returned.
     */
    public listWordSynonymsAPI(word: string, _options?: Configuration): Observable<ListWordSynonymsAPI200Response> {
        return this.listWordSynonymsAPIWithHttpInfo(word, _options).pipe(map((apiResponse: HttpInfo<ListWordSynonymsAPI200Response>) => apiResponse.data));
    }

    /**
     * Find the plural form of a word.
     * Pluralize Word API
     * @param word The (noun) word for which the plural form should be found.
     */
    public pluralizeWordAPIWithHttpInfo(word: string, _options?: Configuration): Observable<HttpInfo<PluralizeWordAPI200Response>> {
        const requestContextPromise = this.requestFactory.pluralizeWordAPI(word, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.pluralizeWordAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Find the plural form of a word.
     * Pluralize Word API
     * @param word The (noun) word for which the plural form should be found.
     */
    public pluralizeWordAPI(word: string, _options?: Configuration): Observable<PluralizeWordAPI200Response> {
        return this.pluralizeWordAPIWithHttpInfo(word, _options).pipe(map((apiResponse: HttpInfo<PluralizeWordAPI200Response>) => apiResponse.data));
    }

    /**
     * Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
     * Score Readability API
     * @param text The text to score for readability.
     */
    public scoreReadabilityAPIWithHttpInfo(text: string, _options?: Configuration): Observable<HttpInfo<ScoreReadabilityAPI200Response>> {
        const requestContextPromise = this.requestFactory.scoreReadabilityAPI(text, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.scoreReadabilityAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
     * Score Readability API
     * @param text The text to score for readability.
     */
    public scoreReadabilityAPI(text: string, _options?: Configuration): Observable<ScoreReadabilityAPI200Response> {
        return this.scoreReadabilityAPIWithHttpInfo(text, _options).pipe(map((apiResponse: HttpInfo<ScoreReadabilityAPI200Response>) => apiResponse.data));
    }

    /**
     * Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
     * Score Text API
     * @param title The title of the text to score.
     * @param text The text to score for multiple metrics.
     */
    public scoreTextAPIWithHttpInfo(title: string, text: string, _options?: Configuration): Observable<HttpInfo<ScoreTextAPI200Response>> {
        const requestContextPromise = this.requestFactory.scoreTextAPI(title, text, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.scoreTextAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
     * Score Text API
     * @param title The title of the text to score.
     * @param text The text to score for multiple metrics.
     */
    public scoreTextAPI(title: string, text: string, _options?: Configuration): Observable<ScoreTextAPI200Response> {
        return this.scoreTextAPIWithHttpInfo(title, text, _options).pipe(map((apiResponse: HttpInfo<ScoreTextAPI200Response>) => apiResponse.data));
    }

    /**
     * Find the singular form of a word.
     * Singularize Word API
     * @param word The (noun) word for which the singular form should be found.
     */
    public singularizeWordAPIWithHttpInfo(word: string, _options?: Configuration): Observable<HttpInfo<SingularizeWordAPI200Response>> {
        const requestContextPromise = this.requestFactory.singularizeWordAPI(word, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.singularizeWordAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Find the singular form of a word.
     * Singularize Word API
     * @param word The (noun) word for which the singular form should be found.
     */
    public singularizeWordAPI(word: string, _options?: Configuration): Observable<SingularizeWordAPI200Response> {
        return this.singularizeWordAPIWithHttpInfo(word, _options).pipe(map((apiResponse: HttpInfo<SingularizeWordAPI200Response>) => apiResponse.data));
    }

    /**
     * The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
     * Stem Text API
     * @param text The text to be stemmed.
     */
    public stemTextAPIWithHttpInfo(text: string, _options?: Configuration): Observable<HttpInfo<StemTextAPI200Response>> {
        const requestContextPromise = this.requestFactory.stemTextAPI(text, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.stemTextAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
     * Stem Text API
     * @param text The text to be stemmed.
     */
    public stemTextAPI(text: string, _options?: Configuration): Observable<StemTextAPI200Response> {
        return this.stemTextAPIWithHttpInfo(text, _options).pipe(map((apiResponse: HttpInfo<StemTextAPI200Response>) => apiResponse.data));
    }

    /**
     * Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
     * Tag Part of Speech API
     * @param text The text to tag the part of speech.
     */
    public tagPartOfSpeechAPIWithHttpInfo(text: string, _options?: Configuration): Observable<HttpInfo<TagPartOfSpeechAPI200Response>> {
        const requestContextPromise = this.requestFactory.tagPartOfSpeechAPI(text, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.tagPartOfSpeechAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
     * Tag Part of Speech API
     * @param text The text to tag the part of speech.
     */
    public tagPartOfSpeechAPI(text: string, _options?: Configuration): Observable<TagPartOfSpeechAPI200Response> {
        return this.tagPartOfSpeechAPIWithHttpInfo(text, _options).pipe(map((apiResponse: HttpInfo<TagPartOfSpeechAPI200Response>) => apiResponse.data));
    }

}

import { WebApiRequestFactory, WebApiResponseProcessor} from "../apis/WebApi";
export class ObservableWebApi {
    private requestFactory: WebApiRequestFactory;
    private responseProcessor: WebApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: WebApiRequestFactory,
        responseProcessor?: WebApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new WebApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new WebApiResponseProcessor();
    }

    /**
     * Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
     * Extract Authors API
     * @param url The url with the article from which authors should be extracted.
     */
    public extractAuthorsAPIWithHttpInfo(url: string, _options?: Configuration): Observable<HttpInfo<ExtractAuthorsAPI200Response>> {
        const requestContextPromise = this.requestFactory.extractAuthorsAPI(url, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.extractAuthorsAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
     * Extract Authors API
     * @param url The url with the article from which authors should be extracted.
     */
    public extractAuthorsAPI(url: string, _options?: Configuration): Observable<ExtractAuthorsAPI200Response> {
        return this.extractAuthorsAPIWithHttpInfo(url, _options).pipe(map((apiResponse: HttpInfo<ExtractAuthorsAPI200Response>) => apiResponse.data));
    }

    /**
     * Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
     * Extract Content from a Web Page API
     * @param url The url for which the content will be extracted.
     */
    public extractContentFromAWebPageAPIWithHttpInfo(url: string, _options?: Configuration): Observable<HttpInfo<ExtractContentFromAWebPageAPI200Response>> {
        const requestContextPromise = this.requestFactory.extractContentFromAWebPageAPI(url, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.extractContentFromAWebPageAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
     * Extract Content from a Web Page API
     * @param url The url for which the content will be extracted.
     */
    public extractContentFromAWebPageAPI(url: string, _options?: Configuration): Observable<ExtractContentFromAWebPageAPI200Response> {
        return this.extractContentFromAWebPageAPIWithHttpInfo(url, _options).pipe(map((apiResponse: HttpInfo<ExtractContentFromAWebPageAPI200Response>) => apiResponse.data));
    }

    /**
     * Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
     * Extract Publish Date API
     * @param url The url for which the publish date should be extracted.
     */
    public extractPublishDateAPIWithHttpInfo(url: string, _options?: Configuration): Observable<HttpInfo<ExtractPublishDateAPI200Response>> {
        const requestContextPromise = this.requestFactory.extractPublishDateAPI(url, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.extractPublishDateAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
     * Extract Publish Date API
     * @param url The url for which the publish date should be extracted.
     */
    public extractPublishDateAPI(url: string, _options?: Configuration): Observable<ExtractPublishDateAPI200Response> {
        return this.extractPublishDateAPIWithHttpInfo(url, _options).pipe(map((apiResponse: HttpInfo<ExtractPublishDateAPI200Response>) => apiResponse.data));
    }

    /**
     * This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
     * Retrieve Page Rank API
     * @param domain The domain for which the page rank should be returned.
     */
    public retrievePageRankAPIWithHttpInfo(domain: string, _options?: Configuration): Observable<HttpInfo<RetrievePageRankAPI200Response>> {
        const requestContextPromise = this.requestFactory.retrievePageRankAPI(domain, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.retrievePageRankAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
     * Retrieve Page Rank API
     * @param domain The domain for which the page rank should be returned.
     */
    public retrievePageRankAPI(domain: string, _options?: Configuration): Observable<RetrievePageRankAPI200Response> {
        return this.retrievePageRankAPIWithHttpInfo(domain, _options).pipe(map((apiResponse: HttpInfo<RetrievePageRankAPI200Response>) => apiResponse.data));
    }

    /**
     * Search the web for a given query. The API returns a list of results with the title, summary, and URL.
     * Search Web API
     * @param query The search query.
     * @param number The number of results to return in range [1,50]
     */
    public searchWebAPIWithHttpInfo(query: string, number?: number, _options?: Configuration): Observable<HttpInfo<SearchWebAPI200Response>> {
        const requestContextPromise = this.requestFactory.searchWebAPI(query, number, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.searchWebAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * Search the web for a given query. The API returns a list of results with the title, summary, and URL.
     * Search Web API
     * @param query The search query.
     * @param number The number of results to return in range [1,50]
     */
    public searchWebAPI(query: string, number?: number, _options?: Configuration): Observable<SearchWebAPI200Response> {
        return this.searchWebAPIWithHttpInfo(query, number, _options).pipe(map((apiResponse: HttpInfo<SearchWebAPI200Response>) => apiResponse.data));
    }

    /**
     * This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.
     * Verify Email Address API
     * @param email The email address to verify.
     */
    public verifyEmailAddressAPIWithHttpInfo(email: string, _options?: Configuration): Observable<HttpInfo<VerifyEmailAddressAPI200Response>> {
        const requestContextPromise = this.requestFactory.verifyEmailAddressAPI(email, _options);

        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (let middleware of this.configuration.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => this.configuration.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (let middleware of this.configuration.middleware) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.verifyEmailAddressAPIWithHttpInfo(rsp)));
            }));
    }

    /**
     * This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.
     * Verify Email Address API
     * @param email The email address to verify.
     */
    public verifyEmailAddressAPI(email: string, _options?: Configuration): Observable<VerifyEmailAddressAPI200Response> {
        return this.verifyEmailAddressAPIWithHttpInfo(email, _options).pipe(map((apiResponse: HttpInfo<VerifyEmailAddressAPI200Response>) => apiResponse.data));
    }

}
