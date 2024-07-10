/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.apileague.client.model;

import java.util.Objects;
import com.apileague.client.model.ScoreText200ResponseInterestingness;
import com.apileague.client.model.ScoreText200ResponseReadability;
import com.apileague.client.model.ScoreText200ResponseSkimmability;
import com.apileague.client.model.ScoreText200ResponseStyle;
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
 * ScoreText200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.5.0")
public class ScoreText200Response {
  public static final String SERIALIZED_NAME_NUMBER_OF_WORDS = "number_of_words";
  @SerializedName(SERIALIZED_NAME_NUMBER_OF_WORDS)
  private Integer numberOfWords;

  public static final String SERIALIZED_NAME_NUMBER_OF_SENTENCES = "number_of_sentences";
  @SerializedName(SERIALIZED_NAME_NUMBER_OF_SENTENCES)
  private Integer numberOfSentences;

  public static final String SERIALIZED_NAME_READABILITY = "readability";
  @SerializedName(SERIALIZED_NAME_READABILITY)
  private ScoreText200ResponseReadability readability;

  public static final String SERIALIZED_NAME_SKIMMABILITY = "skimmability";
  @SerializedName(SERIALIZED_NAME_SKIMMABILITY)
  private ScoreText200ResponseSkimmability skimmability;

  public static final String SERIALIZED_NAME_INTERESTINGNESS = "interestingness";
  @SerializedName(SERIALIZED_NAME_INTERESTINGNESS)
  private ScoreText200ResponseInterestingness interestingness;

  public static final String SERIALIZED_NAME_STYLE = "style";
  @SerializedName(SERIALIZED_NAME_STYLE)
  private ScoreText200ResponseStyle style;

  public static final String SERIALIZED_NAME_TOTAL_SCORE = "total_score";
  @SerializedName(SERIALIZED_NAME_TOTAL_SCORE)
  private BigDecimal totalScore;

  public ScoreText200Response() {
  }

  public ScoreText200Response numberOfWords(Integer numberOfWords) {
    this.numberOfWords = numberOfWords;
    return this;
  }

   /**
   * Get numberOfWords
   * @return numberOfWords
  **/
  @javax.annotation.Nullable
  public Integer getNumberOfWords() {
    return numberOfWords;
  }

  public void setNumberOfWords(Integer numberOfWords) {
    this.numberOfWords = numberOfWords;
  }


  public ScoreText200Response numberOfSentences(Integer numberOfSentences) {
    this.numberOfSentences = numberOfSentences;
    return this;
  }

   /**
   * Get numberOfSentences
   * @return numberOfSentences
  **/
  @javax.annotation.Nullable
  public Integer getNumberOfSentences() {
    return numberOfSentences;
  }

  public void setNumberOfSentences(Integer numberOfSentences) {
    this.numberOfSentences = numberOfSentences;
  }


  public ScoreText200Response readability(ScoreText200ResponseReadability readability) {
    this.readability = readability;
    return this;
  }

   /**
   * Get readability
   * @return readability
  **/
  @javax.annotation.Nullable
  public ScoreText200ResponseReadability getReadability() {
    return readability;
  }

  public void setReadability(ScoreText200ResponseReadability readability) {
    this.readability = readability;
  }


  public ScoreText200Response skimmability(ScoreText200ResponseSkimmability skimmability) {
    this.skimmability = skimmability;
    return this;
  }

   /**
   * Get skimmability
   * @return skimmability
  **/
  @javax.annotation.Nullable
  public ScoreText200ResponseSkimmability getSkimmability() {
    return skimmability;
  }

  public void setSkimmability(ScoreText200ResponseSkimmability skimmability) {
    this.skimmability = skimmability;
  }


  public ScoreText200Response interestingness(ScoreText200ResponseInterestingness interestingness) {
    this.interestingness = interestingness;
    return this;
  }

   /**
   * Get interestingness
   * @return interestingness
  **/
  @javax.annotation.Nullable
  public ScoreText200ResponseInterestingness getInterestingness() {
    return interestingness;
  }

  public void setInterestingness(ScoreText200ResponseInterestingness interestingness) {
    this.interestingness = interestingness;
  }


  public ScoreText200Response style(ScoreText200ResponseStyle style) {
    this.style = style;
    return this;
  }

   /**
   * Get style
   * @return style
  **/
  @javax.annotation.Nullable
  public ScoreText200ResponseStyle getStyle() {
    return style;
  }

  public void setStyle(ScoreText200ResponseStyle style) {
    this.style = style;
  }


  public ScoreText200Response totalScore(BigDecimal totalScore) {
    this.totalScore = totalScore;
    return this;
  }

   /**
   * Get totalScore
   * @return totalScore
  **/
  @javax.annotation.Nullable
  public BigDecimal getTotalScore() {
    return totalScore;
  }

  public void setTotalScore(BigDecimal totalScore) {
    this.totalScore = totalScore;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ScoreText200Response scoreText200Response = (ScoreText200Response) o;
    return Objects.equals(this.numberOfWords, scoreText200Response.numberOfWords) &&
        Objects.equals(this.numberOfSentences, scoreText200Response.numberOfSentences) &&
        Objects.equals(this.readability, scoreText200Response.readability) &&
        Objects.equals(this.skimmability, scoreText200Response.skimmability) &&
        Objects.equals(this.interestingness, scoreText200Response.interestingness) &&
        Objects.equals(this.style, scoreText200Response.style) &&
        Objects.equals(this.totalScore, scoreText200Response.totalScore);
  }

  @Override
  public int hashCode() {
    return Objects.hash(numberOfWords, numberOfSentences, readability, skimmability, interestingness, style, totalScore);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScoreText200Response {\n");
    sb.append("    numberOfWords: ").append(toIndentedString(numberOfWords)).append("\n");
    sb.append("    numberOfSentences: ").append(toIndentedString(numberOfSentences)).append("\n");
    sb.append("    readability: ").append(toIndentedString(readability)).append("\n");
    sb.append("    skimmability: ").append(toIndentedString(skimmability)).append("\n");
    sb.append("    interestingness: ").append(toIndentedString(interestingness)).append("\n");
    sb.append("    style: ").append(toIndentedString(style)).append("\n");
    sb.append("    totalScore: ").append(toIndentedString(totalScore)).append("\n");
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
    openapiFields.add("number_of_words");
    openapiFields.add("number_of_sentences");
    openapiFields.add("readability");
    openapiFields.add("skimmability");
    openapiFields.add("interestingness");
    openapiFields.add("style");
    openapiFields.add("total_score");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to ScoreText200Response
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ScoreText200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ScoreText200Response is not found in the empty JSON string", ScoreText200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ScoreText200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ScoreText200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // validate the optional field `readability`
      if (jsonObj.get("readability") != null && !jsonObj.get("readability").isJsonNull()) {
        ScoreText200ResponseReadability.validateJsonElement(jsonObj.get("readability"));
      }
      // validate the optional field `skimmability`
      if (jsonObj.get("skimmability") != null && !jsonObj.get("skimmability").isJsonNull()) {
        ScoreText200ResponseSkimmability.validateJsonElement(jsonObj.get("skimmability"));
      }
      // validate the optional field `interestingness`
      if (jsonObj.get("interestingness") != null && !jsonObj.get("interestingness").isJsonNull()) {
        ScoreText200ResponseInterestingness.validateJsonElement(jsonObj.get("interestingness"));
      }
      // validate the optional field `style`
      if (jsonObj.get("style") != null && !jsonObj.get("style").isJsonNull()) {
        ScoreText200ResponseStyle.validateJsonElement(jsonObj.get("style"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ScoreText200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ScoreText200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ScoreText200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ScoreText200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<ScoreText200Response>() {
           @Override
           public void write(JsonWriter out, ScoreText200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ScoreText200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of ScoreText200Response given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of ScoreText200Response
  * @throws IOException if the JSON string is invalid with respect to ScoreText200Response
  */
  public static ScoreText200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ScoreText200Response.class);
  }

 /**
  * Convert an instance of ScoreText200Response to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

