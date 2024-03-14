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


package com.apileague.client.model;

import java.util.Objects;
import com.apileague.client.model.SearchJokes200ResponseJokesInner;
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
 * SearchJokes200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-03-14T17:14:09.298081600+01:00[Europe/Berlin]")
public class SearchJokes200Response {
  public static final String SERIALIZED_NAME_JOKES = "jokes";
  @SerializedName(SERIALIZED_NAME_JOKES)
  private List<SearchJokes200ResponseJokesInner> jokes;

  public static final String SERIALIZED_NAME_AVAILABLE = "available";
  @SerializedName(SERIALIZED_NAME_AVAILABLE)
  private Integer available;

  public SearchJokes200Response() {
  }

  public SearchJokes200Response jokes(List<SearchJokes200ResponseJokesInner> jokes) {
    this.jokes = jokes;
    return this;
  }

  public SearchJokes200Response addJokesItem(SearchJokes200ResponseJokesInner jokesItem) {
    if (this.jokes == null) {
      this.jokes = new ArrayList<>();
    }
    this.jokes.add(jokesItem);
    return this;
  }

   /**
   * Get jokes
   * @return jokes
  **/
  @javax.annotation.Nullable
  public List<SearchJokes200ResponseJokesInner> getJokes() {
    return jokes;
  }

  public void setJokes(List<SearchJokes200ResponseJokesInner> jokes) {
    this.jokes = jokes;
  }


  public SearchJokes200Response available(Integer available) {
    this.available = available;
    return this;
  }

   /**
   * Get available
   * @return available
  **/
  @javax.annotation.Nullable
  public Integer getAvailable() {
    return available;
  }

  public void setAvailable(Integer available) {
    this.available = available;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchJokes200Response searchJokes200Response = (SearchJokes200Response) o;
    return Objects.equals(this.jokes, searchJokes200Response.jokes) &&
        Objects.equals(this.available, searchJokes200Response.available);
  }

  @Override
  public int hashCode() {
    return Objects.hash(jokes, available);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchJokes200Response {\n");
    sb.append("    jokes: ").append(toIndentedString(jokes)).append("\n");
    sb.append("    available: ").append(toIndentedString(available)).append("\n");
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
    openapiFields.add("jokes");
    openapiFields.add("available");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to SearchJokes200Response
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!SearchJokes200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SearchJokes200Response is not found in the empty JSON string", SearchJokes200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!SearchJokes200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SearchJokes200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (jsonObj.get("jokes") != null && !jsonObj.get("jokes").isJsonNull()) {
        JsonArray jsonArrayjokes = jsonObj.getAsJsonArray("jokes");
        if (jsonArrayjokes != null) {
          // ensure the json data is an array
          if (!jsonObj.get("jokes").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `jokes` to be an array in the JSON string but got `%s`", jsonObj.get("jokes").toString()));
          }

          // validate the optional field `jokes` (array)
          for (int i = 0; i < jsonArrayjokes.size(); i++) {
            SearchJokes200ResponseJokesInner.validateJsonElement(jsonArrayjokes.get(i));
          };
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SearchJokes200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SearchJokes200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SearchJokes200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SearchJokes200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<SearchJokes200Response>() {
           @Override
           public void write(JsonWriter out, SearchJokes200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SearchJokes200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of SearchJokes200Response given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of SearchJokes200Response
  * @throws IOException if the JSON string is invalid with respect to SearchJokes200Response
  */
  public static SearchJokes200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SearchJokes200Response.class);
  }

 /**
  * Convert an instance of SearchJokes200Response to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

