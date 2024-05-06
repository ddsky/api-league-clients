/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.apileague;

import com.apileague.client.ApiException;
import com.apileague.client.model.ReadKeyValueFromStore200Response;
import com.apileague.client.model.StoreKeyValueGET200Response;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for StorageApi
 */
@Disabled
public class StorageApiTest {

    private final StorageApi api = new StorageApi();

    /**
     * Read Key Value from Store
     *
     * Read a value from the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void readKeyValueFromStoreTest() throws ApiException {
        String key = null;
        ReadKeyValueFromStore200Response response = api.readKeyValueFromStore(key);
        // TODO: test validations
    }

    /**
     * Store Key Value (GET)
     *
     * Store a value in the key-value store. The key-value store is a simple storage system that allows you to store and retrieve data using a key. The data is stored in the cloud and can be accessed from anywhere. You can use the key-value store to store any type of data, such as text or numbers. The key-value store is a great way to store data that you want to access from multiple devices or locations.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void storeKeyValueGETTest() throws ApiException {
        String key = null;
        String value = null;
        StoreKeyValueGET200Response response = api.storeKeyValueGET(key, value);
        // TODO: test validations
    }

}
