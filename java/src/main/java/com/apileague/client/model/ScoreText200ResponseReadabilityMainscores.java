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
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
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
 * ScoreText200ResponseReadabilityMainscores
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class ScoreText200ResponseReadabilityMainscores {
  public static final String SERIALIZED_NAME_TOTAL_POSSIBLE = "total_possible";
  @SerializedName(SERIALIZED_NAME_TOTAL_POSSIBLE)
  private Integer totalPossible;

  public static final String SERIALIZED_NAME_TOTAL = "total";
  @SerializedName(SERIALIZED_NAME_TOTAL)
  private Integer total;

  public ScoreText200ResponseReadabilityMainscores() {
  }

  public ScoreText200ResponseReadabilityMainscores totalPossible(Integer totalPossible) {
    this.totalPossible = totalPossible;
    return this;
  }

  /**
   * Get totalPossible
   * @return totalPossible
   */
  @javax.annotation.Nullable
  public Integer getTotalPossible() {
    return totalPossible;
  }

  public void setTotalPossible(Integer totalPossible) {
    this.totalPossible = totalPossible;
  }


  public ScoreText200ResponseReadabilityMainscores total(Integer total) {
    this.total = total;
    return this;
  }

  /**
   * Get total
   * @return total
   */
  @javax.annotation.Nullable
  public Integer getTotal() {
    return total;
  }

  public void setTotal(Integer total) {
    this.total = total;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ScoreText200ResponseReadabilityMainscores scoreText200ResponseReadabilityMainscores = (ScoreText200ResponseReadabilityMainscores) o;
    return Objects.equals(this.totalPossible, scoreText200ResponseReadabilityMainscores.totalPossible) &&
        Objects.equals(this.total, scoreText200ResponseReadabilityMainscores.total);
  }

  @Override
  public int hashCode() {
    return Objects.hash(totalPossible, total);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScoreText200ResponseReadabilityMainscores {\n");
    sb.append("    totalPossible: ").append(toIndentedString(totalPossible)).append("\n");
    sb.append("    total: ").append(toIndentedString(total)).append("\n");
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
    openapiFields.add("total_possible");
    openapiFields.add("total");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to ScoreText200ResponseReadabilityMainscores
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ScoreText200ResponseReadabilityMainscores.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ScoreText200ResponseReadabilityMainscores is not found in the empty JSON string", ScoreText200ResponseReadabilityMainscores.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ScoreText200ResponseReadabilityMainscores.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ScoreText200ResponseReadabilityMainscores` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ScoreText200ResponseReadabilityMainscores.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ScoreText200ResponseReadabilityMainscores' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ScoreText200ResponseReadabilityMainscores> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ScoreText200ResponseReadabilityMainscores.class));

       return (TypeAdapter<T>) new TypeAdapter<ScoreText200ResponseReadabilityMainscores>() {
           @Override
           public void write(JsonWriter out, ScoreText200ResponseReadabilityMainscores value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ScoreText200ResponseReadabilityMainscores read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of ScoreText200ResponseReadabilityMainscores given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of ScoreText200ResponseReadabilityMainscores
   * @throws IOException if the JSON string is invalid with respect to ScoreText200ResponseReadabilityMainscores
   */
  public static ScoreText200ResponseReadabilityMainscores fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ScoreText200ResponseReadabilityMainscores.class);
  }

  /**
   * Convert an instance of ScoreText200ResponseReadabilityMainscores to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

