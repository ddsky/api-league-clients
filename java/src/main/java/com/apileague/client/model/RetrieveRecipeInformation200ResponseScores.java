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
 * RetrieveRecipeInformation200ResponseScores
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class RetrieveRecipeInformation200ResponseScores {
  public static final String SERIALIZED_NAME_META_SCORE = "meta_score";
  @SerializedName(SERIALIZED_NAME_META_SCORE)
  private BigDecimal metaScore;

  public static final String SERIALIZED_NAME_WEIGHT_WATCHER_SMART_POINTS = "weight_watcher_smart_points";
  @SerializedName(SERIALIZED_NAME_WEIGHT_WATCHER_SMART_POINTS)
  private Integer weightWatcherSmartPoints;

  public static final String SERIALIZED_NAME_HEALTH_SCORE = "health_score";
  @SerializedName(SERIALIZED_NAME_HEALTH_SCORE)
  private Integer healthScore;

  public RetrieveRecipeInformation200ResponseScores() {
  }

  public RetrieveRecipeInformation200ResponseScores metaScore(BigDecimal metaScore) {
    this.metaScore = metaScore;
    return this;
  }

  /**
   * Get metaScore
   * @return metaScore
   */
  @javax.annotation.Nullable
  public BigDecimal getMetaScore() {
    return metaScore;
  }

  public void setMetaScore(BigDecimal metaScore) {
    this.metaScore = metaScore;
  }


  public RetrieveRecipeInformation200ResponseScores weightWatcherSmartPoints(Integer weightWatcherSmartPoints) {
    this.weightWatcherSmartPoints = weightWatcherSmartPoints;
    return this;
  }

  /**
   * Get weightWatcherSmartPoints
   * @return weightWatcherSmartPoints
   */
  @javax.annotation.Nullable
  public Integer getWeightWatcherSmartPoints() {
    return weightWatcherSmartPoints;
  }

  public void setWeightWatcherSmartPoints(Integer weightWatcherSmartPoints) {
    this.weightWatcherSmartPoints = weightWatcherSmartPoints;
  }


  public RetrieveRecipeInformation200ResponseScores healthScore(Integer healthScore) {
    this.healthScore = healthScore;
    return this;
  }

  /**
   * Get healthScore
   * @return healthScore
   */
  @javax.annotation.Nullable
  public Integer getHealthScore() {
    return healthScore;
  }

  public void setHealthScore(Integer healthScore) {
    this.healthScore = healthScore;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RetrieveRecipeInformation200ResponseScores retrieveRecipeInformation200ResponseScores = (RetrieveRecipeInformation200ResponseScores) o;
    return Objects.equals(this.metaScore, retrieveRecipeInformation200ResponseScores.metaScore) &&
        Objects.equals(this.weightWatcherSmartPoints, retrieveRecipeInformation200ResponseScores.weightWatcherSmartPoints) &&
        Objects.equals(this.healthScore, retrieveRecipeInformation200ResponseScores.healthScore);
  }

  @Override
  public int hashCode() {
    return Objects.hash(metaScore, weightWatcherSmartPoints, healthScore);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RetrieveRecipeInformation200ResponseScores {\n");
    sb.append("    metaScore: ").append(toIndentedString(metaScore)).append("\n");
    sb.append("    weightWatcherSmartPoints: ").append(toIndentedString(weightWatcherSmartPoints)).append("\n");
    sb.append("    healthScore: ").append(toIndentedString(healthScore)).append("\n");
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
    openapiFields.add("meta_score");
    openapiFields.add("weight_watcher_smart_points");
    openapiFields.add("health_score");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to RetrieveRecipeInformation200ResponseScores
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!RetrieveRecipeInformation200ResponseScores.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in RetrieveRecipeInformation200ResponseScores is not found in the empty JSON string", RetrieveRecipeInformation200ResponseScores.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!RetrieveRecipeInformation200ResponseScores.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `RetrieveRecipeInformation200ResponseScores` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!RetrieveRecipeInformation200ResponseScores.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'RetrieveRecipeInformation200ResponseScores' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<RetrieveRecipeInformation200ResponseScores> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(RetrieveRecipeInformation200ResponseScores.class));

       return (TypeAdapter<T>) new TypeAdapter<RetrieveRecipeInformation200ResponseScores>() {
           @Override
           public void write(JsonWriter out, RetrieveRecipeInformation200ResponseScores value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public RetrieveRecipeInformation200ResponseScores read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of RetrieveRecipeInformation200ResponseScores given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of RetrieveRecipeInformation200ResponseScores
   * @throws IOException if the JSON string is invalid with respect to RetrieveRecipeInformation200ResponseScores
   */
  public static RetrieveRecipeInformation200ResponseScores fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, RetrieveRecipeInformation200ResponseScores.class);
  }

  /**
   * Convert an instance of RetrieveRecipeInformation200ResponseScores to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

