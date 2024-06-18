/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.apileague;

import com.apileague.client.ApiException;
import com.apileague.client.model.ExtractNews200Response;
import com.apileague.client.model.SearchNews200Response;
import com.apileague.client.model.TopNews200Response;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for NewsApi
 */
@Disabled
public class NewsApiTest {

    private final NewsApi api = new NewsApi();

    /**
     * Extract News
     *
     * Extract a news article from a website to a well structure JSON object. The API will return the title, text, URL, image, publish date, author, language, source country, and sentiment of the news article.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void extractNewsTest() throws ApiException {
        String url = null;
        Boolean analyze = null;
        ExtractNews200Response response = api.extractNews(url, analyze);
        // TODO: test validations
    }

    /**
     * Search News
     *
     * Search and filter news by text, date, location, language, and more. The API returns a list of news articles matching the given criteria. You can set as many filtering parameters as you like, but you have to set at least one, e.g. text or language.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void searchNewsTest() throws ApiException {
        String text = null;
        String sourceCountries = null;
        String language = null;
        Double minSentiment = null;
        Double maxSentiment = null;
        String earliestPublishDate = null;
        String latestPublishDate = null;
        String newsSources = null;
        String authors = null;
        String entities = null;
        String locationFilter = null;
        String sort = null;
        String sortDirection = null;
        Integer offset = null;
        Integer number = null;
        SearchNews200Response response = api.searchNews(text, sourceCountries, language, minSentiment, maxSentiment, earliestPublishDate, latestPublishDate, newsSources, authors, entities, locationFilter, sort, sortDirection, offset, number);
        // TODO: test validations
    }

    /**
     * Top News
     *
     * Get the top news from a country in a language for a specific date. The top news are clustered from multiple sources in the given country. The more news in a cluster the higher the cluster is ranked.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void topNewsTest() throws ApiException {
        String sourceCountry = null;
        String language = null;
        String date = null;
        Boolean headlinesOnly = null;
        TopNews200Response response = api.topNews(sourceCountry, language, date, headlinesOnly);
        // TODO: test validations
    }

}
