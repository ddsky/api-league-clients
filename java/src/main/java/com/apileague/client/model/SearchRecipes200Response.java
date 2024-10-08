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
import com.apileague.client.model.SearchRecipes200ResponseRecipesInner;
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
 * SearchRecipes200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class SearchRecipes200Response {
  public static final String SERIALIZED_NAME_OFFSET = "offset";
  @SerializedName(SERIALIZED_NAME_OFFSET)
  private Integer offset;

  public static final String SERIALIZED_NAME_NUMBER = "number";
  @SerializedName(SERIALIZED_NAME_NUMBER)
  private Integer number;

  public static final String SERIALIZED_NAME_RECIPES = "recipes";
  @SerializedName(SERIALIZED_NAME_RECIPES)
  private List<SearchRecipes200ResponseRecipesInner> recipes = new ArrayList<>();

  public static final String SERIALIZED_NAME_TOTAL_RESULTS = "total_results";
  @SerializedName(SERIALIZED_NAME_TOTAL_RESULTS)
  private Integer totalResults;

  public SearchRecipes200Response() {
  }

  public SearchRecipes200Response offset(Integer offset) {
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


  public SearchRecipes200Response number(Integer number) {
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


  public SearchRecipes200Response recipes(List<SearchRecipes200ResponseRecipesInner> recipes) {
    this.recipes = recipes;
    return this;
  }

  public SearchRecipes200Response addRecipesItem(SearchRecipes200ResponseRecipesInner recipesItem) {
    if (this.recipes == null) {
      this.recipes = new ArrayList<>();
    }
    this.recipes.add(recipesItem);
    return this;
  }

  /**
   * Get recipes
   * @return recipes
   */
  @javax.annotation.Nullable
  public List<SearchRecipes200ResponseRecipesInner> getRecipes() {
    return recipes;
  }

  public void setRecipes(List<SearchRecipes200ResponseRecipesInner> recipes) {
    this.recipes = recipes;
  }


  public SearchRecipes200Response totalResults(Integer totalResults) {
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
    SearchRecipes200Response searchRecipes200Response = (SearchRecipes200Response) o;
    return Objects.equals(this.offset, searchRecipes200Response.offset) &&
        Objects.equals(this.number, searchRecipes200Response.number) &&
        Objects.equals(this.recipes, searchRecipes200Response.recipes) &&
        Objects.equals(this.totalResults, searchRecipes200Response.totalResults);
  }

  @Override
  public int hashCode() {
    return Objects.hash(offset, number, recipes, totalResults);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchRecipes200Response {\n");
    sb.append("    offset: ").append(toIndentedString(offset)).append("\n");
    sb.append("    number: ").append(toIndentedString(number)).append("\n");
    sb.append("    recipes: ").append(toIndentedString(recipes)).append("\n");
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
    openapiFields.add("recipes");
    openapiFields.add("total_results");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to SearchRecipes200Response
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!SearchRecipes200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SearchRecipes200Response is not found in the empty JSON string", SearchRecipes200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!SearchRecipes200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SearchRecipes200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (jsonObj.get("recipes") != null && !jsonObj.get("recipes").isJsonNull()) {
        JsonArray jsonArrayrecipes = jsonObj.getAsJsonArray("recipes");
        if (jsonArrayrecipes != null) {
          // ensure the json data is an array
          if (!jsonObj.get("recipes").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `recipes` to be an array in the JSON string but got `%s`", jsonObj.get("recipes").toString()));
          }

          // validate the optional field `recipes` (array)
          for (int i = 0; i < jsonArrayrecipes.size(); i++) {
            SearchRecipes200ResponseRecipesInner.validateJsonElement(jsonArrayrecipes.get(i));
          };
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SearchRecipes200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SearchRecipes200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SearchRecipes200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SearchRecipes200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<SearchRecipes200Response>() {
           @Override
           public void write(JsonWriter out, SearchRecipes200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SearchRecipes200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of SearchRecipes200Response given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of SearchRecipes200Response
   * @throws IOException if the JSON string is invalid with respect to SearchRecipes200Response
   */
  public static SearchRecipes200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SearchRecipes200Response.class);
  }

  /**
   * Convert an instance of SearchRecipes200Response to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

