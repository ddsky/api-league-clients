/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.apileague;

import com.apileague.client.ApiException;
import com.apileague.client.model.FindSimilarBooks200Response;
import com.apileague.client.model.SearchBooks200Response;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for BooksApi
 */
@Disabled
public class BooksApiTest {

    private final BooksApi api = new BooksApi();

    /**
     * Find Similar Books
     *
     * Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void findSimilarBooksTest() throws ApiException {
        Integer id = null;
        Integer number = null;
        FindSimilarBooks200Response response = api.findSimilarBooks(id, number);
        // TODO: test validations
    }

    /**
     * Search Books
     *
     * Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search for \&quot;books about dogs\&quot; and will automatically also find books about \&quot;border collies\&quot; and other types without specifying them in the query.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void searchBooksTest() throws ApiException {
        String query = null;
        Integer earliestPublishYear = null;
        Integer latestPublishYear = null;
        Double minRating = null;
        Double maxRating = null;
        String genres = null;
        String authors = null;
        String isbn = null;
        String oclc = null;
        String sort = null;
        String sortDirection = null;
        Boolean groupResults = null;
        Integer offset = null;
        Integer number = null;
        SearchBooks200Response response = api.searchBooks(query, earliestPublishYear, latestPublishYear, minRating, maxRating, genres, authors, isbn, oclc, sort, sortDirection, groupResults, offset, number);
        // TODO: test validations
    }

}
