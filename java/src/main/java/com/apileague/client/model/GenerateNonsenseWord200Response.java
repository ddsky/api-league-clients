/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
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
import org.openapitools.jackson.nullable.JsonNullable;

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
 * GenerateNonsenseWord200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class GenerateNonsenseWord200Response {
  public static final String SERIALIZED_NAME_WORD = "word";
  @SerializedName(SERIALIZED_NAME_WORD)
  private String word;

  public static final String SERIALIZED_NAME_RATING = "rating";
  @SerializedName(SERIALIZED_NAME_RATING)
  private BigDecimal rating;

  public GenerateNonsenseWord200Response() {
  }

  public GenerateNonsenseWord200Response word(String word) {
    this.word = word;
    return this;
  }

  /**
   * Get word
   * @return word
   */
  @javax.annotation.Nullable
  public String getWord() {
    return word;
  }

  public void setWord(String word) {
    this.word = word;
  }


  public GenerateNonsenseWord200Response rating(BigDecimal rating) {
    this.rating = rating;
    return this;
  }

  /**
   * Get rating
   * @return rating
   */
  @javax.annotation.Nullable
  public BigDecimal getRating() {
    return rating;
  }

  public void setRating(BigDecimal rating) {
    this.rating = rating;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GenerateNonsenseWord200Response generateNonsenseWord200Response = (GenerateNonsenseWord200Response) o;
    return Objects.equals(this.word, generateNonsenseWord200Response.word) &&
        Objects.equals(this.rating, generateNonsenseWord200Response.rating);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(word, rating);
  }

  private static <T> int hashCodeNullable(JsonNullable<T> a) {
    if (a == null) {
      return 1;
    }
    return a.isPresent() ? Arrays.deepHashCode(new Object[]{a.get()}) : 31;
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GenerateNonsenseWord200Response {\n");
    sb.append("    word: ").append(toIndentedString(word)).append("\n");
    sb.append("    rating: ").append(toIndentedString(rating)).append("\n");
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
    openapiFields.add("word");
    openapiFields.add("rating");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to GenerateNonsenseWord200Response
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!GenerateNonsenseWord200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in GenerateNonsenseWord200Response is not found in the empty JSON string", GenerateNonsenseWord200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!GenerateNonsenseWord200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `GenerateNonsenseWord200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("word") != null && !jsonObj.get("word").isJsonNull()) && !jsonObj.get("word").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `word` to be a primitive type in the JSON string but got `%s`", jsonObj.get("word").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!GenerateNonsenseWord200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'GenerateNonsenseWord200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<GenerateNonsenseWord200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(GenerateNonsenseWord200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<GenerateNonsenseWord200Response>() {
           @Override
           public void write(JsonWriter out, GenerateNonsenseWord200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public GenerateNonsenseWord200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of GenerateNonsenseWord200Response given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of GenerateNonsenseWord200Response
   * @throws IOException if the JSON string is invalid with respect to GenerateNonsenseWord200Response
   */
  public static GenerateNonsenseWord200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, GenerateNonsenseWord200Response.class);
  }

  /**
   * Convert an instance of GenerateNonsenseWord200Response to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

