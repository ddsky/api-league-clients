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
 * ScoreTextAPI200ResponseInterestingnessSubscores
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class ScoreTextAPI200ResponseInterestingnessSubscores {
  public static final String SERIALIZED_NAME_TITLE_RATING_SCORE = "title_rating_score";
  @SerializedName(SERIALIZED_NAME_TITLE_RATING_SCORE)
  private List<Integer> titleRatingScore = new ArrayList<>();

  public static final String SERIALIZED_NAME_QUOTE_SCORE = "quote_score";
  @SerializedName(SERIALIZED_NAME_QUOTE_SCORE)
  private List<Integer> quoteScore = new ArrayList<>();

  public static final String SERIALIZED_NAME_LENGTH_SCORE = "length_score";
  @SerializedName(SERIALIZED_NAME_LENGTH_SCORE)
  private List<Integer> lengthScore = new ArrayList<>();

  public static final String SERIALIZED_NAME_LINK_SCORE = "link_score";
  @SerializedName(SERIALIZED_NAME_LINK_SCORE)
  private List<Integer> linkScore = new ArrayList<>();

  public static final String SERIALIZED_NAME_GOOGLE_HITS_SCORE = "google_hits_score";
  @SerializedName(SERIALIZED_NAME_GOOGLE_HITS_SCORE)
  private List<Integer> googleHitsScore = new ArrayList<>();

  public ScoreTextAPI200ResponseInterestingnessSubscores() {
  }

  public ScoreTextAPI200ResponseInterestingnessSubscores titleRatingScore(List<Integer> titleRatingScore) {
    this.titleRatingScore = titleRatingScore;
    return this;
  }

  public ScoreTextAPI200ResponseInterestingnessSubscores addTitleRatingScoreItem(Integer titleRatingScoreItem) {
    if (this.titleRatingScore == null) {
      this.titleRatingScore = new ArrayList<>();
    }
    this.titleRatingScore.add(titleRatingScoreItem);
    return this;
  }

  /**
   * Get titleRatingScore
   * @return titleRatingScore
   */
  @javax.annotation.Nullable
  public List<Integer> getTitleRatingScore() {
    return titleRatingScore;
  }

  public void setTitleRatingScore(List<Integer> titleRatingScore) {
    this.titleRatingScore = titleRatingScore;
  }


  public ScoreTextAPI200ResponseInterestingnessSubscores quoteScore(List<Integer> quoteScore) {
    this.quoteScore = quoteScore;
    return this;
  }

  public ScoreTextAPI200ResponseInterestingnessSubscores addQuoteScoreItem(Integer quoteScoreItem) {
    if (this.quoteScore == null) {
      this.quoteScore = new ArrayList<>();
    }
    this.quoteScore.add(quoteScoreItem);
    return this;
  }

  /**
   * Get quoteScore
   * @return quoteScore
   */
  @javax.annotation.Nullable
  public List<Integer> getQuoteScore() {
    return quoteScore;
  }

  public void setQuoteScore(List<Integer> quoteScore) {
    this.quoteScore = quoteScore;
  }


  public ScoreTextAPI200ResponseInterestingnessSubscores lengthScore(List<Integer> lengthScore) {
    this.lengthScore = lengthScore;
    return this;
  }

  public ScoreTextAPI200ResponseInterestingnessSubscores addLengthScoreItem(Integer lengthScoreItem) {
    if (this.lengthScore == null) {
      this.lengthScore = new ArrayList<>();
    }
    this.lengthScore.add(lengthScoreItem);
    return this;
  }

  /**
   * Get lengthScore
   * @return lengthScore
   */
  @javax.annotation.Nullable
  public List<Integer> getLengthScore() {
    return lengthScore;
  }

  public void setLengthScore(List<Integer> lengthScore) {
    this.lengthScore = lengthScore;
  }


  public ScoreTextAPI200ResponseInterestingnessSubscores linkScore(List<Integer> linkScore) {
    this.linkScore = linkScore;
    return this;
  }

  public ScoreTextAPI200ResponseInterestingnessSubscores addLinkScoreItem(Integer linkScoreItem) {
    if (this.linkScore == null) {
      this.linkScore = new ArrayList<>();
    }
    this.linkScore.add(linkScoreItem);
    return this;
  }

  /**
   * Get linkScore
   * @return linkScore
   */
  @javax.annotation.Nullable
  public List<Integer> getLinkScore() {
    return linkScore;
  }

  public void setLinkScore(List<Integer> linkScore) {
    this.linkScore = linkScore;
  }


  public ScoreTextAPI200ResponseInterestingnessSubscores googleHitsScore(List<Integer> googleHitsScore) {
    this.googleHitsScore = googleHitsScore;
    return this;
  }

  public ScoreTextAPI200ResponseInterestingnessSubscores addGoogleHitsScoreItem(Integer googleHitsScoreItem) {
    if (this.googleHitsScore == null) {
      this.googleHitsScore = new ArrayList<>();
    }
    this.googleHitsScore.add(googleHitsScoreItem);
    return this;
  }

  /**
   * Get googleHitsScore
   * @return googleHitsScore
   */
  @javax.annotation.Nullable
  public List<Integer> getGoogleHitsScore() {
    return googleHitsScore;
  }

  public void setGoogleHitsScore(List<Integer> googleHitsScore) {
    this.googleHitsScore = googleHitsScore;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ScoreTextAPI200ResponseInterestingnessSubscores scoreTextAPI200ResponseInterestingnessSubscores = (ScoreTextAPI200ResponseInterestingnessSubscores) o;
    return Objects.equals(this.titleRatingScore, scoreTextAPI200ResponseInterestingnessSubscores.titleRatingScore) &&
        Objects.equals(this.quoteScore, scoreTextAPI200ResponseInterestingnessSubscores.quoteScore) &&
        Objects.equals(this.lengthScore, scoreTextAPI200ResponseInterestingnessSubscores.lengthScore) &&
        Objects.equals(this.linkScore, scoreTextAPI200ResponseInterestingnessSubscores.linkScore) &&
        Objects.equals(this.googleHitsScore, scoreTextAPI200ResponseInterestingnessSubscores.googleHitsScore);
  }

  @Override
  public int hashCode() {
    return Objects.hash(titleRatingScore, quoteScore, lengthScore, linkScore, googleHitsScore);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScoreTextAPI200ResponseInterestingnessSubscores {\n");
    sb.append("    titleRatingScore: ").append(toIndentedString(titleRatingScore)).append("\n");
    sb.append("    quoteScore: ").append(toIndentedString(quoteScore)).append("\n");
    sb.append("    lengthScore: ").append(toIndentedString(lengthScore)).append("\n");
    sb.append("    linkScore: ").append(toIndentedString(linkScore)).append("\n");
    sb.append("    googleHitsScore: ").append(toIndentedString(googleHitsScore)).append("\n");
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
    openapiFields.add("title_rating_score");
    openapiFields.add("quote_score");
    openapiFields.add("length_score");
    openapiFields.add("link_score");
    openapiFields.add("google_hits_score");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to ScoreTextAPI200ResponseInterestingnessSubscores
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ScoreTextAPI200ResponseInterestingnessSubscores.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ScoreTextAPI200ResponseInterestingnessSubscores is not found in the empty JSON string", ScoreTextAPI200ResponseInterestingnessSubscores.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ScoreTextAPI200ResponseInterestingnessSubscores.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ScoreTextAPI200ResponseInterestingnessSubscores` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // ensure the optional json data is an array if present
      if (jsonObj.get("title_rating_score") != null && !jsonObj.get("title_rating_score").isJsonNull() && !jsonObj.get("title_rating_score").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `title_rating_score` to be an array in the JSON string but got `%s`", jsonObj.get("title_rating_score").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("quote_score") != null && !jsonObj.get("quote_score").isJsonNull() && !jsonObj.get("quote_score").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `quote_score` to be an array in the JSON string but got `%s`", jsonObj.get("quote_score").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("length_score") != null && !jsonObj.get("length_score").isJsonNull() && !jsonObj.get("length_score").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `length_score` to be an array in the JSON string but got `%s`", jsonObj.get("length_score").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("link_score") != null && !jsonObj.get("link_score").isJsonNull() && !jsonObj.get("link_score").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `link_score` to be an array in the JSON string but got `%s`", jsonObj.get("link_score").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("google_hits_score") != null && !jsonObj.get("google_hits_score").isJsonNull() && !jsonObj.get("google_hits_score").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `google_hits_score` to be an array in the JSON string but got `%s`", jsonObj.get("google_hits_score").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ScoreTextAPI200ResponseInterestingnessSubscores.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ScoreTextAPI200ResponseInterestingnessSubscores' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ScoreTextAPI200ResponseInterestingnessSubscores> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ScoreTextAPI200ResponseInterestingnessSubscores.class));

       return (TypeAdapter<T>) new TypeAdapter<ScoreTextAPI200ResponseInterestingnessSubscores>() {
           @Override
           public void write(JsonWriter out, ScoreTextAPI200ResponseInterestingnessSubscores value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ScoreTextAPI200ResponseInterestingnessSubscores read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of ScoreTextAPI200ResponseInterestingnessSubscores given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of ScoreTextAPI200ResponseInterestingnessSubscores
   * @throws IOException if the JSON string is invalid with respect to ScoreTextAPI200ResponseInterestingnessSubscores
   */
  public static ScoreTextAPI200ResponseInterestingnessSubscores fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ScoreTextAPI200ResponseInterestingnessSubscores.class);
  }

  /**
   * Convert an instance of ScoreTextAPI200ResponseInterestingnessSubscores to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

