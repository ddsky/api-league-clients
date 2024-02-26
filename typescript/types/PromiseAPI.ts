import { ResponseContext, RequestContext, HttpFile } from '../http/http';
import * as models from '../models/all';
import { Configuration} from '../configuration'

import { InlineResponse200 } from '../models/InlineResponse200';
import { InlineResponse2001 } from '../models/InlineResponse2001';
import { InlineResponse20010 } from '../models/InlineResponse20010';
import { InlineResponse20011 } from '../models/InlineResponse20011';
import { InlineResponse20012 } from '../models/InlineResponse20012';
import { InlineResponse20013 } from '../models/InlineResponse20013';
import { InlineResponse20014 } from '../models/InlineResponse20014';
import { InlineResponse20014Authors } from '../models/InlineResponse20014Authors';
import { InlineResponse20015 } from '../models/InlineResponse20015';
import { InlineResponse20015Results } from '../models/InlineResponse20015Results';
import { InlineResponse20016 } from '../models/InlineResponse20016';
import { InlineResponse20017 } from '../models/InlineResponse20017';
import { InlineResponse20018 } from '../models/InlineResponse20018';
import { InlineResponse20018Document } from '../models/InlineResponse20018Document';
import { InlineResponse20018Sentences } from '../models/InlineResponse20018Sentences';
import { InlineResponse20019 } from '../models/InlineResponse20019';
import { InlineResponse20019Interestingness } from '../models/InlineResponse20019Interestingness';
import { InlineResponse20019InterestingnessSubscores } from '../models/InlineResponse20019InterestingnessSubscores';
import { InlineResponse20019Readability } from '../models/InlineResponse20019Readability';
import { InlineResponse20019ReadabilityMainscores } from '../models/InlineResponse20019ReadabilityMainscores';
import { InlineResponse20019ReadabilitySubscores } from '../models/InlineResponse20019ReadabilitySubscores';
import { InlineResponse20019Skimmability } from '../models/InlineResponse20019Skimmability';
import { InlineResponse20019SkimmabilityMainscores } from '../models/InlineResponse20019SkimmabilityMainscores';
import { InlineResponse20019SkimmabilitySubscores } from '../models/InlineResponse20019SkimmabilitySubscores';
import { InlineResponse20019Style } from '../models/InlineResponse20019Style';
import { InlineResponse20019StyleSubscores } from '../models/InlineResponse20019StyleSubscores';
import { InlineResponse2002 } from '../models/InlineResponse2002';
import { InlineResponse20020 } from '../models/InlineResponse20020';
import { InlineResponse20021 } from '../models/InlineResponse20021';
import { InlineResponse20021Dates } from '../models/InlineResponse20021Dates';
import { InlineResponse20022 } from '../models/InlineResponse20022';
import { InlineResponse20023 } from '../models/InlineResponse20023';
import { InlineResponse20024 } from '../models/InlineResponse20024';
import { InlineResponse20025 } from '../models/InlineResponse20025';
import { InlineResponse20026 } from '../models/InlineResponse20026';
import { InlineResponse20027 } from '../models/InlineResponse20027';
import { InlineResponse20027Entities } from '../models/InlineResponse20027Entities';
import { InlineResponse20028 } from '../models/InlineResponse20028';
import { InlineResponse20028Images } from '../models/InlineResponse20028Images';
import { InlineResponse20028License } from '../models/InlineResponse20028License';
import { InlineResponse20029 } from '../models/InlineResponse20029';
import { InlineResponse2002News } from '../models/InlineResponse2002News';
import { InlineResponse2003 } from '../models/InlineResponse2003';
import { InlineResponse20030 } from '../models/InlineResponse20030';
import { InlineResponse20031 } from '../models/InlineResponse20031';
import { InlineResponse20032 } from '../models/InlineResponse20032';
import { InlineResponse2004 } from '../models/InlineResponse2004';
import { InlineResponse2004Jokes } from '../models/InlineResponse2004Jokes';
import { InlineResponse2005 } from '../models/InlineResponse2005';
import { InlineResponse2005Memes } from '../models/InlineResponse2005Memes';
import { InlineResponse2006 } from '../models/InlineResponse2006';
import { InlineResponse2007 } from '../models/InlineResponse2007';
import { InlineResponse2007Images } from '../models/InlineResponse2007Images';
import { InlineResponse2008 } from '../models/InlineResponse2008';
import { InlineResponse2009 } from '../models/InlineResponse2009';
import { InlineResponse200Books } from '../models/InlineResponse200Books';
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
    public imageToAsciiArtByURL(url: string, width?: number, height?: number, _options?: Configuration): Promise<string> {
        const result = this.api.imageToAsciiArtByURL(url, width, height, _options);
        return result.toPromise();
    }

    /**
     * Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).
     * Random Poem
     * @param minLines The minimum number of lines of the poem.
     * @param maxLines The maximum number of lines of the poem.
     */
    public randomPoem(minLines?: number, maxLines?: number, _options?: Configuration): Promise<InlineResponse20011> {
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
    public findSimilarBooks(id: number, number?: number, _options?: Configuration): Promise<InlineResponse2001> {
        const result = this.api.findSimilarBooks(id, number, _options);
        return result.toPromise();
    }

    /**
     * Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \"books about dogs\" and will automatically also find books about \"border collies\" and other types without specifying them in the query.
     * Search Books
     * @param query The search query.
     * @param earliestPublishYear The books must have been published after this year.
     * @param latestPublishYear The books must have been published before this year.
     * @param minRating The minimum rating the book must have gotten in the interval [0,1].
     * @param maxRating The maximum rating the book must have gotten in the interval [0,1].
     * @param genres A comma-separated list of  genres. Only books from any of the given genres will be returned.
     * @param authors A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can&#39;t disambiguate.
     * @param isbn Only the book matching the ISBN-13 will be returned
     * @param oclc Only the book matching the OCLC will be returned
     * @param sort The sorting criteria (publish-date or rating).
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC).
     * @param groupResults Whether to group similar editions of the same book.
     * @param offset The number of books to skip in range [0,1000]
     * @param number The number of books to return in range [1,100]
     */
    public searchBooks(query?: string, earliestPublishYear?: number, latestPublishYear?: number, minRating?: number, maxRating?: number, genres?: string, authors?: string, isbn?: string, oclc?: string, sort?: string, sortDirection?: string, groupResults?: boolean, offset?: number, number?: number, _options?: Configuration): Promise<InlineResponse200> {
        const result = this.api.searchBooks(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number, _options);
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
    public generateNonsenseWord(_options?: Configuration): Promise<InlineResponse2008> {
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
    public randomJoke(includeTags?: string, excludeTags?: string, minRating?: number, maxLength?: number, _options?: Configuration): Promise<InlineResponse2004Jokes> {
        const result = this.api.randomJoke(includeTags, excludeTags, minRating, maxLength, _options);
        return result.toPromise();
    }

    /**
     * Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
     * Random Meme
     * @param keywords A comma-separated list of words that must occur in the meme.
     * @param keywordsInImage Whether the keywords must occur in the image.
     * @param mediaType The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;).
     * @param minRating The minimum rating in range [0.0-1.0] of the meme.
     * @param maxAgeDays The maximum age of the meme in days.
     */
    public randomMeme(keywords?: string, keywordsInImage?: boolean, mediaType?: string, minRating?: number, maxAgeDays?: number, _options?: Configuration): Promise<InlineResponse2006> {
        const result = this.api.randomMeme(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, _options);
        return result.toPromise();
    }

    /**
     * Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
     * Search Gifs
     * @param query The search query.
     * @param number The number of gifs to return in range [1,10]
     */
    public searchGifs(query: string, number?: number, _options?: Configuration): Promise<InlineResponse2007> {
        const result = this.api.searchGifs(query, number, _options);
        return result.toPromise();
    }

    /**
     * With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
     * Search Jokes
     * @param keywords A comma-separated list of words that must occur in the joke.
     * @param includeTags A comma-separated list of tags the jokes should have.
     * @param excludeTags A comma-separated list of tags the jokes must not have.
     * @param minRating The minimum rating (0-10) of the jokes.
     * @param maxLength The maximum length of the joke in letters.
     * @param offset The number of jokes to skip, between 0 and 1000.
     * @param number The number of jokes, between 1 and 10.
     */
    public searchJokes(keywords?: string, includeTags?: string, excludeTags?: string, minRating?: number, maxLength?: number, offset?: number, number?: number, _options?: Configuration): Promise<InlineResponse2004> {
        const result = this.api.searchJokes(keywords, includeTags, excludeTags, minRating, maxLength, offset, number, _options);
        return result.toPromise();
    }

    /**
     * With over 200,000 memes, you'll surely find something funny. You can even search for text within memes and filter by user ratings.
     * Search Memes
     * @param keywords A comma-separated list of words that must occur in the meme.
     * @param keywordsInImage Whether the keywords must occur in the image.
     * @param mediaType The media type (either &#39;image&#39;, &#39;video&#39; or even specific format such as &#39;jpg&#39;, &#39;png&#39;, or &#39;gif&#39;).
     * @param minRating The minimum rating in range [0.0,1.0] of the meme.
     * @param maxAgeDays The maximum age of the meme in days.
     * @param offset The number of memes to skip, between 0 and 1000.
     * @param number The number of memes, between 0 and 10.
     */
    public searchMemes(keywords?: string, keywordsInImage?: boolean, mediaType?: string, minRating?: number, maxAgeDays?: number, offset?: number, number?: number, _options?: Configuration): Promise<InlineResponse2005> {
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
    public randomQuote(minLength?: number, maxLength?: number, _options?: Configuration): Promise<InlineResponse20010> {
        const result = this.api.randomQuote(minLength, maxLength, _options);
        return result.toPromise();
    }

    /**
     * This endpoint returns a random piece of trivia.
     * Random Trivia
     * @param maxLength The maximum length of the trivia in letters.
     */
    public randomTrivia(maxLength?: number, _options?: Configuration): Promise<InlineResponse2009> {
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
    public convertUnits(sourceAmount: number, sourceUnit: string, targetUnit: string, foodName?: string, _options?: Configuration): Promise<InlineResponse20030> {
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
    public detectMainImageColor(url: string, _options?: Configuration): Promise<Array<InlineResponse20029>> {
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
    public searchRoyaltyFreeImages(query: string, number?: number, _options?: Configuration): Promise<InlineResponse20028> {
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
    public extractNews(url: string, analyze: boolean, _options?: Configuration): Promise<InlineResponse2003> {
        const result = this.api.extractNews(url, analyze, _options);
        return result.toPromise();
    }

    /**
     * Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
     * Search News
     * @param text The text to match in the news content. By default all query terms are expected, you can use an uppercase OR to search for any terms, e.g. tesla OR ford
     * @param sourceCountries A comma-separated list of ISO 3166 country codes from which the news should originate.
     * @param language The ISO 6391 language code of the news.
     * @param minSentiment The minimal sentiment of the news in range [-1,1].
     * @param maxSentiment The maximal sentiment of the news in range [-1,1].
     * @param earliestPublishDate The news must have been published after this date.
     * @param latestPublishDate The news must have been published before this date.
     * @param newsSources A comma-separated list of news sources from which the news should originate.
     * @param authors A comma-separated list of author names. Only news from any of the given authors will be returned.
     * @param entities Filter news by entities (see semantic types).
     * @param locationFilter Filter news by radius around a certain location. Format is \&quot;latitude,longitude,radius in kilometers\&quot;
     * @param sort The sorting criteria (publish-time or sentiment).
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC).
     * @param offset The number of news to skip in range [0,10000]
     * @param number The number of news to return in range [1,100]
     */
    public searchNews(text?: string, sourceCountries?: string, language?: string, minSentiment?: number, maxSentiment?: number, earliestPublishDate?: string, latestPublishDate?: string, newsSources?: string, authors?: string, entities?: string, locationFilter?: string, sort?: string, sortDirection?: string, offset?: number, number?: number, _options?: Configuration): Promise<InlineResponse2002> {
        const result = this.api.searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, sort, sortDirection, offset, number, _options);
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
    public readKeyValueFromStore(key: string, _options?: Configuration): Promise<InlineResponse20031> {
        const result = this.api.readKeyValueFromStore(key, _options);
        return result.toPromise();
    }

    /**
     * Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
     * Store Key Value (GET)
     * @param key The key for which the value is stored (max length 255 characters).
     * @param value The value that is supposed to be stored (max length 10,000 characters).
     */
    public storeKeyValueGET(key: string, value: string, _options?: Configuration): Promise<InlineResponse20032> {
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
    public correctSpelling(text: string, language: string, _options?: Configuration): Promise<InlineResponse20016> {
        const result = this.api.correctSpelling(text, language, _options);
        return result.toPromise();
    }

    /**
     * Detect the language of the given text. The API returns a list of languages and their confidence scores. The confidence score is a value between 0 and 1, where 1 means the language was detected with 100% confidence. The API supports text in 22 languages.
     * Detect Language
     * @param text The text for which the language should be detected.
     */
    public detectLanguage(text: string, _options?: Configuration): Promise<Array<InlineResponse20017>> {
        const result = this.api.detectLanguage(text, _options);
        return result.toPromise();
    }

    /**
     * Detect the sentiment (positive or negative) of a given text. The entire document is scored and also each individual sentence.
     * Detect Sentiment
     * @param text The text for which the sentiment should be detected.
     */
    public detectSentiment(text: string, _options?: Configuration): Promise<InlineResponse20018> {
        const result = this.api.detectSentiment(text, _options);
        return result.toPromise();
    }

    /**
     * Extract dates from a given text. The API will return a list of dates with their positions in the text and the normalized form of the date. A large list of date formats is supported. For example, the text could contain dates in the form of \"April 5th, 2035\", \"04/05/2035\", or \"05.04.2035\". The normalized date is the date in the form of a timestamp (milliseconds since 1970).
     * Extract Dates
     * @param text The text from which dates should be extracted.
     */
    public extractDates(text: string, _options?: Configuration): Promise<InlineResponse20021> {
        const result = this.api.extractDates(text, _options);
        return result.toPromise();
    }

    /**
     * Extract entities from a text. An entity is a word or a group of words that represent a concept. For example, the word \"Canada\" represents the concept of a country. The word \"Jim Carrey\" represents the concept of a person. The word \"Tesla\" represents the concept of a company. The API will return a list of entities found in the text. The entities are classified into different types such as person, location, organization, etc.
     * Extract Entities
     * @param text The text from which entities should be extracted.
     */
    public extractEntities(text: string, _options?: Configuration): Promise<InlineResponse20027> {
        const result = this.api.extractEntities(text, _options);
        return result.toPromise();
    }

    /**
     * Return synonyms of a word.
     * List Word Synonyms
     * @param word The (noun) word for which a list of synonyms should be returned.
     */
    public listWordSynonyms(word: string, _options?: Configuration): Promise<InlineResponse20022> {
        const result = this.api.listWordSynonyms(word, _options);
        return result.toPromise();
    }

    /**
     * Part of speech tagging is the process of marking up a word in a text as corresponding to a particular part of speech, based on both its definition and its context. This is a simple API that takes a text and returns the tagged text.
     * Part of Speech Tagging
     * @param text The text to tag the part of speech.
     */
    public partOfSpeechTagging(text: string, _options?: Configuration): Promise<InlineResponse20023> {
        const result = this.api.partOfSpeechTagging(text, _options);
        return result.toPromise();
    }

    /**
     * Find the plural form of a word.
     * Pluralize Word
     * @param word The (noun) word for which the plural form should be found.
     */
    public pluralizeWord(word: string, _options?: Configuration): Promise<InlineResponse20026> {
        const result = this.api.pluralizeWord(word, _options);
        return result.toPromise();
    }

    /**
     * Score the readability of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is score with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau.
     * Score Readability
     * @param text The text to score for readability.
     */
    public scoreReadability(text: string, _options?: Configuration): Promise<InlineResponse20020> {
        const result = this.api.scoreReadability(text, _options);
        return result.toPromise();
    }

    /**
     * Score the readability, skimmability, interestingness, and style of a text. The readability score is based on the average length of the sentences and the average length of the words in the text. The text is scored with multiple readability scores such as Flesch, Smog, ARI, LIX, Kincaid, Fog, and Coleman Liau. Additionally, information such as the estimated reading time in seconds is returned.
     * Score Text
     * @param title The title of the text to score.
     * @param text The text to score for multiple metrics.
     */
    public scoreText(title: string, text: string, _options?: Configuration): Promise<InlineResponse20019> {
        const result = this.api.scoreText(title, text, _options);
        return result.toPromise();
    }

    /**
     * Find the singular form of a word.
     * Singularize Word
     * @param word The (noun) word for which the singular form should be found.
     */
    public singularizeWord(word: string, _options?: Configuration): Promise<InlineResponse20025> {
        const result = this.api.singularizeWord(word, _options);
        return result.toPromise();
    }

    /**
     * The Text Stemming API is used to get the root form of a word. It is useful for searching and natural language processing.
     * Text Stemming
     * @param text The text to be stemmed.
     */
    public textStemming(text: string, _options?: Configuration): Promise<InlineResponse20024> {
        const result = this.api.textStemming(text, _options);
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
    public extractAuthors(url: string, _options?: Configuration): Promise<InlineResponse20014> {
        const result = this.api.extractAuthors(url, _options);
        return result.toPromise();
    }

    /**
     * Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
     * Extract Content from a Web Page
     * @param url The url for which the content will be extracted.
     */
    public extractContentFromAWebPage(url: string, _options?: Configuration): Promise<InlineResponse20012> {
        const result = this.api.extractContentFromAWebPage(url, _options);
        return result.toPromise();
    }

    /**
     * Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
     * Extract Publish Date
     * @param url The url for which the publish date should be extracted.
     */
    public extractPublishDate(url: string, _options?: Configuration): Promise<InlineResponse20013> {
        const result = this.api.extractPublishDate(url, _options);
        return result.toPromise();
    }

    /**
     * Search the web for a given query. The API returns a list of results with the title, summary, and URL.
     * Search Web
     * @param query The search query.
     * @param number The number of results to return in range [1,50]
     */
    public searchWeb(query: string, number?: number, _options?: Configuration): Promise<InlineResponse20015> {
        const result = this.api.searchWeb(query, number, _options);
        return result.toPromise();
    }


}



