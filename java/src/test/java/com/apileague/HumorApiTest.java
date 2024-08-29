/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.apileague;

import com.apileague.client.ApiException;
import com.apileague.client.model.GenerateNonsenseWord200Response;
import com.apileague.client.model.RandomMeme200Response;
import com.apileague.client.model.SearchGifs200Response;
import com.apileague.client.model.SearchJokes200Response;
import com.apileague.client.model.SearchJokes200ResponseJokesInner;
import com.apileague.client.model.SearchMemes200Response;
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
     * Generate Nonsense Word
     *
     * Generate a funny sounding nonsense word. This is useful for generating random words for games, naming things, or just for fun. The response will contain the generated word and a rating of how funny it is.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void generateNonsenseWordTest() throws ApiException {
        GenerateNonsenseWord200Response response = api.generateNonsenseWord();
        // TODO: test validations
    }

    /**
     * Random Joke
     *
     * This is a simple API that returns a random joke. You can filter the jokes by tags and keywords. To make sure they are safe for work, you could use the exclude-tags parameter to exclude jokes with certain tags such as \&quot;nsfw\&quot; or \&quot;religious\&quot;.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void randomJokeTest() throws ApiException {
        String includeTags = null;
        String excludeTags = null;
        Double minRating = null;
        Integer maxLength = null;
        SearchJokes200ResponseJokesInner response = api.randomJoke(includeTags, excludeTags, minRating, maxLength);
        // TODO: test validations
    }

    /**
     * Random Meme
     *
     * Get a random meme out of over 200,000+ memes. To get the latest memes, you can use the max-age-days parameter.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void randomMemeTest() throws ApiException {
        String keywords = null;
        Boolean keywordsInImage = null;
        String mediaType = null;
        Double minRating = null;
        Integer maxAgeDays = null;
        RandomMeme200Response response = api.randomMeme(keywords, keywordsInImage, mediaType, minRating, maxAgeDays);
        // TODO: test validations
    }

    /**
     * Search Gifs
     *
     * Search through hundreds of thousands of gifs to match any reaction you want. The gifs are returned in a list with the URL, width, and height of the gif.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void searchGifsTest() throws ApiException {
        String query = null;
        Integer number = null;
        SearchGifs200Response response = api.searchGifs(query, number);
        // TODO: test validations
    }

    /**
     * Search Jokes
     *
     * With over 50,000 jokes, you should find something for any occasion. There are 27 categories/tags to choose from, but you can also search for very specific words within jokes.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void searchJokesTest() throws ApiException {
        String keywords = null;
        String includeTags = null;
        String excludeTags = null;
        Double minRating = null;
        Double maxLength = null;
        Integer offset = null;
        Integer number = null;
        SearchJokes200Response response = api.searchJokes(keywords, includeTags, excludeTags, minRating, maxLength, offset, number);
        // TODO: test validations
    }

    /**
     * Search Memes
     *
     * With over 200,000 memes, you&#39;ll surely find something funny. You can even search for text within memes and filter by user ratings.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void searchMemesTest() throws ApiException {
        String keywords = null;
        Boolean keywordsInImage = null;
        String mediaType = null;
        Double minRating = null;
        Integer maxAgeDays = null;
        Integer offset = null;
        Integer number = null;
        SearchMemes200Response response = api.searchMemes(keywords, keywordsInImage, mediaType, minRating, maxAgeDays, offset, number);
        // TODO: test validations
    }

}
