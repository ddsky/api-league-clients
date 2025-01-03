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
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Arrays;

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
 * SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown {
  public static final String SERIALIZED_NAME_PERCENT_FAT = "percent_fat";
  @SerializedName(SERIALIZED_NAME_PERCENT_FAT)
  private BigDecimal percentFat;

  public static final String SERIALIZED_NAME_PERCENT_CARBS = "percent_carbs";
  @SerializedName(SERIALIZED_NAME_PERCENT_CARBS)
  private BigDecimal percentCarbs;

  public static final String SERIALIZED_NAME_PERCENT_PROTEIN = "percent_protein";
  @SerializedName(SERIALIZED_NAME_PERCENT_PROTEIN)
  private BigDecimal percentProtein;

  public SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown() {
  }

  public SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown percentFat(BigDecimal percentFat) {
    this.percentFat = percentFat;
    return this;
  }

  /**
   * Get percentFat
   * @return percentFat
   */
  @javax.annotation.Nullable
  public BigDecimal getPercentFat() {
    return percentFat;
  }

  public void setPercentFat(BigDecimal percentFat) {
    this.percentFat = percentFat;
  }


  public SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown percentCarbs(BigDecimal percentCarbs) {
    this.percentCarbs = percentCarbs;
    return this;
  }

  /**
   * Get percentCarbs
   * @return percentCarbs
   */
  @javax.annotation.Nullable
  public BigDecimal getPercentCarbs() {
    return percentCarbs;
  }

  public void setPercentCarbs(BigDecimal percentCarbs) {
    this.percentCarbs = percentCarbs;
  }


  public SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown percentProtein(BigDecimal percentProtein) {
    this.percentProtein = percentProtein;
    return this;
  }

  /**
   * Get percentProtein
   * @return percentProtein
   */
  @javax.annotation.Nullable
  public BigDecimal getPercentProtein() {
    return percentProtein;
  }

  public void setPercentProtein(BigDecimal percentProtein) {
    this.percentProtein = percentProtein;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown searchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown = (SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown) o;
    return Objects.equals(this.percentFat, searchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.percentFat) &&
        Objects.equals(this.percentCarbs, searchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.percentCarbs) &&
        Objects.equals(this.percentProtein, searchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.percentProtein);
  }

  @Override
  public int hashCode() {
    return Objects.hash(percentFat, percentCarbs, percentProtein);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown {\n");
    sb.append("    percentFat: ").append(toIndentedString(percentFat)).append("\n");
    sb.append("    percentCarbs: ").append(toIndentedString(percentCarbs)).append("\n");
    sb.append("    percentProtein: ").append(toIndentedString(percentProtein)).append("\n");
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
    openapiFields.add("percent_fat");
    openapiFields.add("percent_carbs");
    openapiFields.add("percent_protein");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown is not found in the empty JSON string", SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.class));

       return (TypeAdapter<T>) new TypeAdapter<SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown>() {
           @Override
           public void write(JsonWriter out, SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown
   * @throws IOException if the JSON string is invalid with respect to SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown
   */
  public static SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.class);
  }

  /**
   * Convert an instance of SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

