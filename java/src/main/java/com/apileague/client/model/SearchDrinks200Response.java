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


package com.apileague.client.model;

import java.util.Objects;
import com.apileague.client.model.SearchDrinks200ResponseDrinksInner;
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
 * SearchDrinks200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class SearchDrinks200Response {
  public static final String SERIALIZED_NAME_OFFSET = "offset";
  @SerializedName(SERIALIZED_NAME_OFFSET)
  private Integer offset;

  public static final String SERIALIZED_NAME_NUMBER = "number";
  @SerializedName(SERIALIZED_NAME_NUMBER)
  private Integer number;

  public static final String SERIALIZED_NAME_DRINKS = "drinks";
  @SerializedName(SERIALIZED_NAME_DRINKS)
  private List<SearchDrinks200ResponseDrinksInner> drinks = new ArrayList<>();

  public static final String SERIALIZED_NAME_TOTAL_RESULTS = "total_results";
  @SerializedName(SERIALIZED_NAME_TOTAL_RESULTS)
  private Integer totalResults;

  public SearchDrinks200Response() {
  }

  public SearchDrinks200Response offset(Integer offset) {
    this.offset = offset;
    return this;
  }

  /**
   * Get offset
   * @return offset
   */
  @javax.annotation.Nullable
  public Integer getOffset() {
    return offset;
  }

  public void setOffset(Integer offset) {
    this.offset = offset;
  }


  public SearchDrinks200Response number(Integer number) {
    this.number = number;
    return this;
  }

  /**
   * Get number
   * @return number
   */
  @javax.annotation.Nullable
  public Integer getNumber() {
    return number;
  }

  public void setNumber(Integer number) {
    this.number = number;
  }


  public SearchDrinks200Response drinks(List<SearchDrinks200ResponseDrinksInner> drinks) {
    this.drinks = drinks;
    return this;
  }

  public SearchDrinks200Response addDrinksItem(SearchDrinks200ResponseDrinksInner drinksItem) {
    if (this.drinks == null) {
      this.drinks = new ArrayList<>();
    }
    this.drinks.add(drinksItem);
    return this;
  }

  /**
   * Get drinks
   * @return drinks
   */
  @javax.annotation.Nullable
  public List<SearchDrinks200ResponseDrinksInner> getDrinks() {
    return drinks;
  }

  public void setDrinks(List<SearchDrinks200ResponseDrinksInner> drinks) {
    this.drinks = drinks;
  }


  public SearchDrinks200Response totalResults(Integer totalResults) {
    this.totalResults = totalResults;
    return this;
  }

  /**
   * Get totalResults
   * @return totalResults
   */
  @javax.annotation.Nullable
  public Integer getTotalResults() {
    return totalResults;
  }

  public void setTotalResults(Integer totalResults) {
    this.totalResults = totalResults;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchDrinks200Response searchDrinks200Response = (SearchDrinks200Response) o;
    return Objects.equals(this.offset, searchDrinks200Response.offset) &&
        Objects.equals(this.number, searchDrinks200Response.number) &&
        Objects.equals(this.drinks, searchDrinks200Response.drinks) &&
        Objects.equals(this.totalResults, searchDrinks200Response.totalResults);
  }

  @Override
  public int hashCode() {
    return Objects.hash(offset, number, drinks, totalResults);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchDrinks200Response {\n");
    sb.append("    offset: ").append(toIndentedString(offset)).append("\n");
    sb.append("    number: ").append(toIndentedString(number)).append("\n");
    sb.append("    drinks: ").append(toIndentedString(drinks)).append("\n");
    sb.append("    totalResults: ").append(toIndentedString(totalResults)).append("\n");
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
    openapiFields.add("offset");
    openapiFields.add("number");
    openapiFields.add("drinks");
    openapiFields.add("total_results");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to SearchDrinks200Response
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!SearchDrinks200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SearchDrinks200Response is not found in the empty JSON string", SearchDrinks200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!SearchDrinks200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SearchDrinks200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (jsonObj.get("drinks") != null && !jsonObj.get("drinks").isJsonNull()) {
        JsonArray jsonArraydrinks = jsonObj.getAsJsonArray("drinks");
        if (jsonArraydrinks != null) {
          // ensure the json data is an array
          if (!jsonObj.get("drinks").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `drinks` to be an array in the JSON string but got `%s`", jsonObj.get("drinks").toString()));
          }

          // validate the optional field `drinks` (array)
          for (int i = 0; i < jsonArraydrinks.size(); i++) {
            SearchDrinks200ResponseDrinksInner.validateJsonElement(jsonArraydrinks.get(i));
          };
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SearchDrinks200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SearchDrinks200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SearchDrinks200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SearchDrinks200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<SearchDrinks200Response>() {
           @Override
           public void write(JsonWriter out, SearchDrinks200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SearchDrinks200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of SearchDrinks200Response given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of SearchDrinks200Response
   * @throws IOException if the JSON string is invalid with respect to SearchDrinks200Response
   */
  public static SearchDrinks200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SearchDrinks200Response.class);
  }

  /**
   * Convert an instance of SearchDrinks200Response to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

