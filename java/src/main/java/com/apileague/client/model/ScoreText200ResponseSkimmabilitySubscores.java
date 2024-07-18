/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
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
 * ScoreText200ResponseSkimmabilitySubscores
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class ScoreText200ResponseSkimmabilitySubscores {
  public static final String SERIALIZED_NAME_BULLET_POINT_RATIO_SCORE = "bullet_point_ratio_score";
  @SerializedName(SERIALIZED_NAME_BULLET_POINT_RATIO_SCORE)
  private List<Integer> bulletPointRatioScore = new ArrayList<>();

  public static final String SERIALIZED_NAME_IMAGE_SCORE = "image_score";
  @SerializedName(SERIALIZED_NAME_IMAGE_SCORE)
  private List<Integer> imageScore = new ArrayList<>();

  public static final String SERIALIZED_NAME_HIGHLIGHTED_WORD_RATIO_SCORE = "highlighted_word_ratio_score";
  @SerializedName(SERIALIZED_NAME_HIGHLIGHTED_WORD_RATIO_SCORE)
  private List<Integer> highlightedWordRatioScore = new ArrayList<>();

  public static final String SERIALIZED_NAME_VIDEO_SCORE = "video_score";
  @SerializedName(SERIALIZED_NAME_VIDEO_SCORE)
  private List<Integer> videoScore = new ArrayList<>();

  public static final String SERIALIZED_NAME_PARAGRAPH_SCORE = "paragraph_score";
  @SerializedName(SERIALIZED_NAME_PARAGRAPH_SCORE)
  private List<Integer> paragraphScore = new ArrayList<>();

  public static final String SERIALIZED_NAME_PARAGRAPH_HEADLINE_RATIO_SCORE = "paragraph_headline_ratio_score";
  @SerializedName(SERIALIZED_NAME_PARAGRAPH_HEADLINE_RATIO_SCORE)
  private List<Integer> paragraphHeadlineRatioScore = new ArrayList<>();

  public ScoreText200ResponseSkimmabilitySubscores() {
  }

  public ScoreText200ResponseSkimmabilitySubscores bulletPointRatioScore(List<Integer> bulletPointRatioScore) {
    this.bulletPointRatioScore = bulletPointRatioScore;
    return this;
  }

  public ScoreText200ResponseSkimmabilitySubscores addBulletPointRatioScoreItem(Integer bulletPointRatioScoreItem) {
    if (this.bulletPointRatioScore == null) {
      this.bulletPointRatioScore = new ArrayList<>();
    }
    this.bulletPointRatioScore.add(bulletPointRatioScoreItem);
    return this;
  }

  /**
   * Get bulletPointRatioScore
   * @return bulletPointRatioScore
   */
  @javax.annotation.Nullable
  public List<Integer> getBulletPointRatioScore() {
    return bulletPointRatioScore;
  }

  public void setBulletPointRatioScore(List<Integer> bulletPointRatioScore) {
    this.bulletPointRatioScore = bulletPointRatioScore;
  }


  public ScoreText200ResponseSkimmabilitySubscores imageScore(List<Integer> imageScore) {
    this.imageScore = imageScore;
    return this;
  }

  public ScoreText200ResponseSkimmabilitySubscores addImageScoreItem(Integer imageScoreItem) {
    if (this.imageScore == null) {
      this.imageScore = new ArrayList<>();
    }
    this.imageScore.add(imageScoreItem);
    return this;
  }

  /**
   * Get imageScore
   * @return imageScore
   */
  @javax.annotation.Nullable
  public List<Integer> getImageScore() {
    return imageScore;
  }

  public void setImageScore(List<Integer> imageScore) {
    this.imageScore = imageScore;
  }


  public ScoreText200ResponseSkimmabilitySubscores highlightedWordRatioScore(List<Integer> highlightedWordRatioScore) {
    this.highlightedWordRatioScore = highlightedWordRatioScore;
    return this;
  }

  public ScoreText200ResponseSkimmabilitySubscores addHighlightedWordRatioScoreItem(Integer highlightedWordRatioScoreItem) {
    if (this.highlightedWordRatioScore == null) {
      this.highlightedWordRatioScore = new ArrayList<>();
    }
    this.highlightedWordRatioScore.add(highlightedWordRatioScoreItem);
    return this;
  }

  /**
   * Get highlightedWordRatioScore
   * @return highlightedWordRatioScore
   */
  @javax.annotation.Nullable
  public List<Integer> getHighlightedWordRatioScore() {
    return highlightedWordRatioScore;
  }

  public void setHighlightedWordRatioScore(List<Integer> highlightedWordRatioScore) {
    this.highlightedWordRatioScore = highlightedWordRatioScore;
  }


  public ScoreText200ResponseSkimmabilitySubscores videoScore(List<Integer> videoScore) {
    this.videoScore = videoScore;
    return this;
  }

  public ScoreText200ResponseSkimmabilitySubscores addVideoScoreItem(Integer videoScoreItem) {
    if (this.videoScore == null) {
      this.videoScore = new ArrayList<>();
    }
    this.videoScore.add(videoScoreItem);
    return this;
  }

  /**
   * Get videoScore
   * @return videoScore
   */
  @javax.annotation.Nullable
  public List<Integer> getVideoScore() {
    return videoScore;
  }

  public void setVideoScore(List<Integer> videoScore) {
    this.videoScore = videoScore;
  }


  public ScoreText200ResponseSkimmabilitySubscores paragraphScore(List<Integer> paragraphScore) {
    this.paragraphScore = paragraphScore;
    return this;
  }

  public ScoreText200ResponseSkimmabilitySubscores addParagraphScoreItem(Integer paragraphScoreItem) {
    if (this.paragraphScore == null) {
      this.paragraphScore = new ArrayList<>();
    }
    this.paragraphScore.add(paragraphScoreItem);
    return this;
  }

  /**
   * Get paragraphScore
   * @return paragraphScore
   */
  @javax.annotation.Nullable
  public List<Integer> getParagraphScore() {
    return paragraphScore;
  }

  public void setParagraphScore(List<Integer> paragraphScore) {
    this.paragraphScore = paragraphScore;
  }


  public ScoreText200ResponseSkimmabilitySubscores paragraphHeadlineRatioScore(List<Integer> paragraphHeadlineRatioScore) {
    this.paragraphHeadlineRatioScore = paragraphHeadlineRatioScore;
    return this;
  }

  public ScoreText200ResponseSkimmabilitySubscores addParagraphHeadlineRatioScoreItem(Integer paragraphHeadlineRatioScoreItem) {
    if (this.paragraphHeadlineRatioScore == null) {
      this.paragraphHeadlineRatioScore = new ArrayList<>();
    }
    this.paragraphHeadlineRatioScore.add(paragraphHeadlineRatioScoreItem);
    return this;
  }

  /**
   * Get paragraphHeadlineRatioScore
   * @return paragraphHeadlineRatioScore
   */
  @javax.annotation.Nullable
  public List<Integer> getParagraphHeadlineRatioScore() {
    return paragraphHeadlineRatioScore;
  }

  public void setParagraphHeadlineRatioScore(List<Integer> paragraphHeadlineRatioScore) {
    this.paragraphHeadlineRatioScore = paragraphHeadlineRatioScore;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ScoreText200ResponseSkimmabilitySubscores scoreText200ResponseSkimmabilitySubscores = (ScoreText200ResponseSkimmabilitySubscores) o;
    return Objects.equals(this.bulletPointRatioScore, scoreText200ResponseSkimmabilitySubscores.bulletPointRatioScore) &&
        Objects.equals(this.imageScore, scoreText200ResponseSkimmabilitySubscores.imageScore) &&
        Objects.equals(this.highlightedWordRatioScore, scoreText200ResponseSkimmabilitySubscores.highlightedWordRatioScore) &&
        Objects.equals(this.videoScore, scoreText200ResponseSkimmabilitySubscores.videoScore) &&
        Objects.equals(this.paragraphScore, scoreText200ResponseSkimmabilitySubscores.paragraphScore) &&
        Objects.equals(this.paragraphHeadlineRatioScore, scoreText200ResponseSkimmabilitySubscores.paragraphHeadlineRatioScore);
  }

  @Override
  public int hashCode() {
    return Objects.hash(bulletPointRatioScore, imageScore, highlightedWordRatioScore, videoScore, paragraphScore, paragraphHeadlineRatioScore);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScoreText200ResponseSkimmabilitySubscores {\n");
    sb.append("    bulletPointRatioScore: ").append(toIndentedString(bulletPointRatioScore)).append("\n");
    sb.append("    imageScore: ").append(toIndentedString(imageScore)).append("\n");
    sb.append("    highlightedWordRatioScore: ").append(toIndentedString(highlightedWordRatioScore)).append("\n");
    sb.append("    videoScore: ").append(toIndentedString(videoScore)).append("\n");
    sb.append("    paragraphScore: ").append(toIndentedString(paragraphScore)).append("\n");
    sb.append("    paragraphHeadlineRatioScore: ").append(toIndentedString(paragraphHeadlineRatioScore)).append("\n");
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
    openapiFields.add("bullet_point_ratio_score");
    openapiFields.add("image_score");
    openapiFields.add("highlighted_word_ratio_score");
    openapiFields.add("video_score");
    openapiFields.add("paragraph_score");
    openapiFields.add("paragraph_headline_ratio_score");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to ScoreText200ResponseSkimmabilitySubscores
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ScoreText200ResponseSkimmabilitySubscores.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ScoreText200ResponseSkimmabilitySubscores is not found in the empty JSON string", ScoreText200ResponseSkimmabilitySubscores.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ScoreText200ResponseSkimmabilitySubscores.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ScoreText200ResponseSkimmabilitySubscores` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // ensure the optional json data is an array if present
      if (jsonObj.get("bullet_point_ratio_score") != null && !jsonObj.get("bullet_point_ratio_score").isJsonNull() && !jsonObj.get("bullet_point_ratio_score").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `bullet_point_ratio_score` to be an array in the JSON string but got `%s`", jsonObj.get("bullet_point_ratio_score").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("image_score") != null && !jsonObj.get("image_score").isJsonNull() && !jsonObj.get("image_score").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `image_score` to be an array in the JSON string but got `%s`", jsonObj.get("image_score").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("highlighted_word_ratio_score") != null && !jsonObj.get("highlighted_word_ratio_score").isJsonNull() && !jsonObj.get("highlighted_word_ratio_score").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `highlighted_word_ratio_score` to be an array in the JSON string but got `%s`", jsonObj.get("highlighted_word_ratio_score").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("video_score") != null && !jsonObj.get("video_score").isJsonNull() && !jsonObj.get("video_score").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `video_score` to be an array in the JSON string but got `%s`", jsonObj.get("video_score").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("paragraph_score") != null && !jsonObj.get("paragraph_score").isJsonNull() && !jsonObj.get("paragraph_score").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `paragraph_score` to be an array in the JSON string but got `%s`", jsonObj.get("paragraph_score").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("paragraph_headline_ratio_score") != null && !jsonObj.get("paragraph_headline_ratio_score").isJsonNull() && !jsonObj.get("paragraph_headline_ratio_score").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `paragraph_headline_ratio_score` to be an array in the JSON string but got `%s`", jsonObj.get("paragraph_headline_ratio_score").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ScoreText200ResponseSkimmabilitySubscores.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ScoreText200ResponseSkimmabilitySubscores' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ScoreText200ResponseSkimmabilitySubscores> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ScoreText200ResponseSkimmabilitySubscores.class));

       return (TypeAdapter<T>) new TypeAdapter<ScoreText200ResponseSkimmabilitySubscores>() {
           @Override
           public void write(JsonWriter out, ScoreText200ResponseSkimmabilitySubscores value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ScoreText200ResponseSkimmabilitySubscores read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of ScoreText200ResponseSkimmabilitySubscores given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of ScoreText200ResponseSkimmabilitySubscores
   * @throws IOException if the JSON string is invalid with respect to ScoreText200ResponseSkimmabilitySubscores
   */
  public static ScoreText200ResponseSkimmabilitySubscores fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ScoreText200ResponseSkimmabilitySubscores.class);
  }

  /**
   * Convert an instance of ScoreText200ResponseSkimmabilitySubscores to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

