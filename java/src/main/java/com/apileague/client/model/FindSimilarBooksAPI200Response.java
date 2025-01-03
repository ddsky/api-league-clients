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
import com.apileague.client.model.SearchBooksAPI200ResponseBooksInnerInner;
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
 * FindSimilarBooksAPI200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class FindSimilarBooksAPI200Response {
  public static final String SERIALIZED_NAME_SIMILAR_BOOKS = "similar_books";
  @SerializedName(SERIALIZED_NAME_SIMILAR_BOOKS)
  private List<SearchBooksAPI200ResponseBooksInnerInner> similarBooks = new ArrayList<>();

  public FindSimilarBooksAPI200Response() {
  }

  public FindSimilarBooksAPI200Response similarBooks(List<SearchBooksAPI200ResponseBooksInnerInner> similarBooks) {
    this.similarBooks = similarBooks;
    return this;
  }

  public FindSimilarBooksAPI200Response addSimilarBooksItem(SearchBooksAPI200ResponseBooksInnerInner similarBooksItem) {
    if (this.similarBooks == null) {
      this.similarBooks = new ArrayList<>();
    }
    this.similarBooks.add(similarBooksItem);
    return this;
  }

  /**
   * Get similarBooks
   * @return similarBooks
   */
  @javax.annotation.Nullable
  public List<SearchBooksAPI200ResponseBooksInnerInner> getSimilarBooks() {
    return similarBooks;
  }

  public void setSimilarBooks(List<SearchBooksAPI200ResponseBooksInnerInner> similarBooks) {
    this.similarBooks = similarBooks;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FindSimilarBooksAPI200Response findSimilarBooksAPI200Response = (FindSimilarBooksAPI200Response) o;
    return Objects.equals(this.similarBooks, findSimilarBooksAPI200Response.similarBooks);
  }

  @Override
  public int hashCode() {
    return Objects.hash(similarBooks);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FindSimilarBooksAPI200Response {\n");
    sb.append("    similarBooks: ").append(toIndentedString(similarBooks)).append("\n");
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
    openapiFields.add("similar_books");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to FindSimilarBooksAPI200Response
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!FindSimilarBooksAPI200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in FindSimilarBooksAPI200Response is not found in the empty JSON string", FindSimilarBooksAPI200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!FindSimilarBooksAPI200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `FindSimilarBooksAPI200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (jsonObj.get("similar_books") != null && !jsonObj.get("similar_books").isJsonNull()) {
        JsonArray jsonArraysimilarBooks = jsonObj.getAsJsonArray("similar_books");
        if (jsonArraysimilarBooks != null) {
          // ensure the json data is an array
          if (!jsonObj.get("similar_books").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `similar_books` to be an array in the JSON string but got `%s`", jsonObj.get("similar_books").toString()));
          }

          // validate the optional field `similar_books` (array)
          for (int i = 0; i < jsonArraysimilarBooks.size(); i++) {
            SearchBooksAPI200ResponseBooksInnerInner.validateJsonElement(jsonArraysimilarBooks.get(i));
          };
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!FindSimilarBooksAPI200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'FindSimilarBooksAPI200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<FindSimilarBooksAPI200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(FindSimilarBooksAPI200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<FindSimilarBooksAPI200Response>() {
           @Override
           public void write(JsonWriter out, FindSimilarBooksAPI200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public FindSimilarBooksAPI200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of FindSimilarBooksAPI200Response given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of FindSimilarBooksAPI200Response
   * @throws IOException if the JSON string is invalid with respect to FindSimilarBooksAPI200Response
   */
  public static FindSimilarBooksAPI200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, FindSimilarBooksAPI200Response.class);
  }

  /**
   * Convert an instance of FindSimilarBooksAPI200Response to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

