/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.4
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.apileague;

import com.apileague.client.ApiException;
import com.apileague.client.model.GenerateNonsenseWordAPI200Response;
import com.apileague.client.model.RandomMemeAPI200Response;
import com.apileague.client.model.SearchGifsAPI200Response;
import com.apileague.client.model.SearchJokesAPI200Response;
import com.apileague.client.model.SearchJokesAPI200ResponseJokesInner;
import com.apileague.client.model.SearchMemesAPI200Response;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for HumorApi
 */
@Disabled
public class HumorApiTest {

    private final HumorApi api = new HumorApi();

    /**
     * Generate Nonsense Word API
     *
     * Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void generateNonsenseWordAPITest() throws ApiException {
        GenerateNonsenseWordAPI200Response response = api.generateNonsenseWordAPI();
        // TODO: test validations
    }

    /**
     * Random Joke API
     *
     * This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \&quot;nsfw\&quot; or \&quot;religious\&quot;.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void randomJokeAPITest() throws ApiException {
        String includeTags = null;
        String excludeTags = null;
        Double minRating = null;
        Integer maxLength = null;
        SearchJokesAPI200ResponseJokesInner response = api.randomJokeAPI(includeTags, excludeTags, minRating, maxLength);
        // TODO: test validations
    }

    /**
     * Random Meme API
     *
     * Get a random meme out of over 300,000+ memes. To get the latest memes, you can use the max-age-days parameter.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void randomMemeAPITest() throws ApiException {
        String keywords = null;
        Boolean keywordsInImage = null;
        String mediaType = null;
        Double minRating = null;
        Integer maxAgeDays = null;
        RandomMemeAPI200Response response = api.randomMemeAPI(keywords, keywordsInImage, mediaType, minRating, maxAgeDays);
        // TODO: test validations
    }

    /**
     * Search Gifs API
     *
     * Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void searchGifsAPITest() throws ApiException {
        String query = null;
        Integer number = null;
        SearchGifsAPI200Response response = api.searchGifsAPI(query, number);
        // TODO: test validations
    }

    /**
     * Search Jokes API
     *
     * With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void searchJokesAPITest() throws ApiException {
        String keywords = null;
        String includeTags = null;
        String excludeTags = null;
        Double minRating = null;
        Double maxLength = null;
        Integer offset = null;
        Integer number = null;
        SearchJokesAPI200Response response = api.searchJokesAPI(keywords, includeTags, excludeTags, minRating, maxLength, offset, number);
        // TODO: test validations
    }

    /**
     * Search Memes API
     *
     * Search over 300,000 memes by keyword, rating, and age. Most memes are stills (images) but using the media-type you can also get videos. You can even search for text within memes. You&#39;ll surely find something funny.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void searchMemesAPITest() throws ApiException {
        String keywords = null;
        Boolean keywordsInImage = null;
        String mediaType = null;
        Double minRating = null;
        Integer maxAgeDays = null;
        Integer offset = null;
        Integer number = null;
        SearchMemesAPI200Response response = api.searchMemesAPI(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number);
        // TODO: test validations
    }

}
