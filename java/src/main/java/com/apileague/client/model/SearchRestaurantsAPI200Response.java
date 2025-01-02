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


package com.apileague.client.model;

import java.util.Objects;
import com.apileague.client.model.SearchRestaurantsAPI200ResponseRestaurantsInner;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.apileague.client.JSON;

/**
 * SearchRestaurantsAPI200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class SearchRestaurantsAPI200Response {
  public static final String SERIALIZED_NAME_RESTAURANTS = "restaurants";
  @SerializedName(SERIALIZED_NAME_RESTAURANTS)
  private List<SearchRestaurantsAPI200ResponseRestaurantsInner> restaurants = new ArrayList<>();

  public SearchRestaurantsAPI200Response() {
  }

  public SearchRestaurantsAPI200Response restaurants(List<SearchRestaurantsAPI200ResponseRestaurantsInner> restaurants) {
    this.restaurants = restaurants;
    return this;
  }

  public SearchRestaurantsAPI200Response addRestaurantsItem(SearchRestaurantsAPI200ResponseRestaurantsInner restaurantsItem) {
    if (this.restaurants == null) {
      this.restaurants = new ArrayList<>();
    }
    this.restaurants.add(restaurantsItem);
    return this;
  }

  /**
   * Get restaurants
   * @return restaurants
   */
  @javax.annotation.Nullable
  public List<SearchRestaurantsAPI200ResponseRestaurantsInner> getRestaurants() {
    return restaurants;
  }

  public void setRestaurants(List<SearchRestaurantsAPI200ResponseRestaurantsInner> restaurants) {
    this.restaurants = restaurants;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchRestaurantsAPI200Response searchRestaurantsAPI200Response = (SearchRestaurantsAPI200Response) o;
    return Objects.equals(this.restaurants, searchRestaurantsAPI200Response.restaurants);
  }

  @Override
  public int hashCode() {
    return Objects.hash(restaurants);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchRestaurantsAPI200Response {\n");
    sb.append("    restaurants: ").append(toIndentedString(restaurants)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("restaurants");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to SearchRestaurantsAPI200Response
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!SearchRestaurantsAPI200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SearchRestaurantsAPI200Response is not found in the empty JSON string", SearchRestaurantsAPI200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!SearchRestaurantsAPI200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SearchRestaurantsAPI200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (jsonObj.get("restaurants") != null && !jsonObj.get("restaurants").isJsonNull()) {
        JsonArray jsonArrayrestaurants = jsonObj.getAsJsonArray("restaurants");
        if (jsonArrayrestaurants != null) {
          // ensure the json data is an array
          if (!jsonObj.get("restaurants").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `restaurants` to be an array in the JSON string but got `%s`", jsonObj.get("restaurants").toString()));
          }

          // validate the optional field `restaurants` (array)
          for (int i = 0; i < jsonArrayrestaurants.size(); i++) {
            SearchRestaurantsAPI200ResponseRestaurantsInner.validateJsonElement(jsonArrayrestaurants.get(i));
          };
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SearchRestaurantsAPI200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SearchRestaurantsAPI200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SearchRestaurantsAPI200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SearchRestaurantsAPI200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<SearchRestaurantsAPI200Response>() {
           @Override
           public void write(JsonWriter out, SearchRestaurantsAPI200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SearchRestaurantsAPI200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of SearchRestaurantsAPI200Response given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of SearchRestaurantsAPI200Response
   * @throws IOException if the JSON string is invalid with respect to SearchRestaurantsAPI200Response
   */
  public static SearchRestaurantsAPI200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SearchRestaurantsAPI200Response.class);
  }

  /**
   * Convert an instance of SearchRestaurantsAPI200Response to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
