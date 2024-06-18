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
import com.apileague.client.model.DetectMainImageColor200ResponseInner;
import com.apileague.client.model.SearchRoyaltyFreeImages200Response;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for MediaApi
 */
@Disabled
public class MediaApiTest {

    private final MediaApi api = new MediaApi();

    /**
     * Detect Main Image Color
     *
     * Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void detectMainImageColorTest() throws ApiException {
        String url = null;
        List<DetectMainImageColor200ResponseInner> response = api.detectMainImageColor(url);
        // TODO: test validations
    }

    /**
     * Rescale Image
     *
     * Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void rescaleImageTest() throws ApiException {
        String url = null;
        Integer width = null;
        Integer height = null;
        Boolean crop = null;
        Object response = api.rescaleImage(url, width, height, crop);
        // TODO: test validations
    }

    /**
     * Search Royalty Free Images
     *
     * Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void searchRoyaltyFreeImagesTest() throws ApiException {
        String query = null;
        Integer number = null;
        SearchRoyaltyFreeImages200Response response = api.searchRoyaltyFreeImages(query, number);
        // TODO: test validations
    }

}
