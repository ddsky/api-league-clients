import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration} from '../configuration'

import { ConvertUnits200Response } from '../models/ConvertUnits200Response';
import { CorrectSpelling200Response } from '../models/CorrectSpelling200Response';
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
import { ExtractPublishDate200Response } from '../models/ExtractPublishDate200Response';
import { FindSimilarBooks200Response } from '../models/FindSimilarBooks200Response';
import { GenerateNonsenseWord200Response } from '../models/GenerateNonsenseWord200Response';
import { ListWordSynonyms200Response } from '../models/ListWordSynonyms200Response';
import { PartOfSpeechTagging200Response } from '../models/PartOfSpeechTagging200Response';
import { PluralizeWord200Response } from '../models/PluralizeWord200Response';
import { RandomMeme200Response } from '../models/RandomMeme200Response';
import { RandomPoem200Response } from '../models/RandomPoem200Response';
import { RandomQuote200Response } from '../models/RandomQuote200Response';
import { RandomTrivia200Response } from '../models/RandomTrivia200Response';
import { ReadKeyValueFromStore200Response } from '../models/ReadKeyValueFromStore200Response';
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
import { SearchBooks200ResponseBooksInner } from '../models/SearchBooks200ResponseBooksInner';
import { SearchGifs200Response } from '../models/SearchGifs200Response';
import { SearchGifs200ResponseImagesInner } from '../models/SearchGifs200ResponseImagesInner';
import { SearchJokes200Response } from '../models/SearchJokes200Response';
import { SearchJokes200ResponseJokesInner } from '../models/SearchJokes200ResponseJokesInner';
import { SearchMemes200Response } from '../models/SearchMemes200Response';
import { SearchMemes200ResponseMemesInner } from '../models/SearchMemes200ResponseMemesInner';
import { SearchNews200Response } from '../models/SearchNews200Response';
import { SearchNews200ResponseNewsInner } from '../models/SearchNews200ResponseNewsInner';
import { SearchRoyaltyFreeImages200Response } from '../models/SearchRoyaltyFreeImages200Response';
import { SearchRoyaltyFreeImages200ResponseImagesInner } from '../models/SearchRoyaltyFreeImages200ResponseImagesInner';
import { SearchRoyaltyFreeImages200ResponseImagesInnerLicense } from '../models/SearchRoyaltyFreeImages200ResponseImagesInnerLicense';
import { SearchWeb200Response } from '../models/SearchWeb200Response';
import { SearchWeb200ResponseResultsInner } from '../models/SearchWeb200ResponseResultsInner';
import { SingularizeWord200Response } from '../models/SingularizeWord200Response';
import { StoreKeyValueGET200Response } from '../models/StoreKeyValueGET200Response';
import { TextStemming200Response } from '../models/TextStemming200Response';

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
     * A comma-separated list of  genres. Only books from any of the given genres will be returned.
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
     * Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query.
     * Search Books
     * @param param the request object
     */
    public searchBooksWithHttpInfo(param: BooksApiSearchBooksRequest = {}, options?: Configuration): Promise<HttpInfo<SearchBooks200Response>> {
        return this.api.searchBooksWithHttpInfo(param.query, param.earliestPublishYear, param.latestPublishYear, param.minRating, param.maxRating, param.genres, param.authors, param.isbn, param.oclc, param.sort, param.sortDirection, param.groupResults, param.offset, param.number,  options).toPromise();
    }

    /**
     * Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query.
     * Search Books
     * @param param the request object
     */
    public searchBooks(param: BooksApiSearchBooksRequest = {}, options?: Configuration): Promise<SearchBooks200Response> {
        return this.api.searchBooks(param.query, param.earliestPublishYear, param.latestPublishYear, param.minRating, param.maxRating, param.genres, param.authors, param.isbn, param.oclc, param.sort, param.sortDirection, param.groupResults, param.offset, param.number,  options).toPromise();
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
     * The minimum rating in range [0.0-1.0] of the meme.
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
     * The minimum rating (0-10) of the jokes.
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
     * The number of memes, between 0 and 10.
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
     * The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
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
     * Filter news by entities (see semantic types).
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
     * The sorting criteria (publish-time or sentiment).
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
     * Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
     * Search News
     * @param param the request object
     */
    public searchNewsWithHttpInfo(param: NewsApiSearchNewsRequest = {}, options?: Configuration): Promise<HttpInfo<SearchNews200Response>> {
        return this.api.searchNewsWithHttpInfo(param.text, param.sourceCountries, param.language, param.minSentiment, param.maxSentiment, param.earliestPublishDate, param.latestPublishDate, param.newsSources, param.authors, param.entities, param.locationFilter, param.sort, param.sortDirection, param.offset, param.number,  options).toPromise();
    }

    /**
     * Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
     * Search News
     * @param param the request object
     */
    public searchNews(param: NewsApiSearchNewsRequest = {}, options?: Configuration): Promise<SearchNews200Response> {
        return this.api.searchNews(param.text, param.sourceCountries, param.language, param.minSentiment, param.maxSentiment, param.earliestPublishDate, param.latestPublishDate, param.newsSources, param.authors, param.entities, param.locationFilter, param.sort, param.sortDirection, param.offset, param.number,  options).toPromise();
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

export interface TextApiPartOfSpeechTaggingRequest {
    /**
     * The text to tag the part of speech.
     * @type string
     * @memberof TextApipartOfSpeechTagging
     */
    text: string
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

export interface TextApiTextStemmingRequest {
    /**
     * The text to be stemmed.
     * @type string
     * @memberof TextApitextStemming
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
     * Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
     * Part of Speech Tagging
     * @param param the request object
     */
    public partOfSpeechTaggingWithHttpInfo(param: TextApiPartOfSpeechTaggingRequest, options?: Configuration): Promise<HttpInfo<PartOfSpeechTagging200Response>> {
        return this.api.partOfSpeechTaggingWithHttpInfo(param.text,  options).toPromise();
    }

    /**
     * Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
     * Part of Speech Tagging
     * @param param the request object
     */
    public partOfSpeechTagging(param: TextApiPartOfSpeechTaggingRequest, options?: Configuration): Promise<PartOfSpeechTagging200Response> {
        return this.api.partOfSpeechTagging(param.text,  options).toPromise();
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
     * Text Stemming
     * @param param the request object
     */
    public textStemmingWithHttpInfo(param: TextApiTextStemmingRequest, options?: Configuration): Promise<HttpInfo<TextStemming200Response>> {
        return this.api.textStemmingWithHttpInfo(param.text,  options).toPromise();
    }

    /**
     * The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
     * Text Stemming
     * @param param the request object
     */
    public textStemming(param: TextApiTextStemmingRequest, options?: Configuration): Promise<TextStemming200Response> {
        return this.api.textStemming(param.text,  options).toPromise();
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

}
