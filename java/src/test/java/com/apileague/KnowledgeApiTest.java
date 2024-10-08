/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.apileague;

import com.apileague.client.ApiException;
import com.apileague.client.model.RandomQuote200Response;
import com.apileague.client.model.RandomRiddle200Response;
import com.apileague.client.model.RandomTrivia200Response;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for KnowledgeApi
 */
@Disabled
public class KnowledgeApiTest {

    private final KnowledgeApi api = new KnowledgeApi();

    /**
     * Random Quote
     *
     * This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void randomQuoteTest() throws ApiException {
        Integer minLength = null;
        Integer maxLength = null;
        RandomQuote200Response response = api.randomQuote(minLength, maxLength);
        // TODO: test validations
    }

    /**
     * Random Riddle
     *
     * The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void randomRiddleTest() throws ApiException {
        String difficulty = null;
        RandomRiddle200Response response = api.randomRiddle(difficulty);
        // TODO: test validations
    }

    /**
     * Random Trivia
     *
     * This endpoint returns a random piece of trivia.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void randomTriviaTest() throws ApiException {
        Integer maxLength = null;
        RandomTrivia200Response response = api.randomTrivia(maxLength);
        // TODO: test validations
    }

}
