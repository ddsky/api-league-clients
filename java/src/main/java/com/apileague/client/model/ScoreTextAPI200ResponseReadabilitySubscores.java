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
 * ScoreTextAPI200ResponseReadabilitySubscores
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class ScoreTextAPI200ResponseReadabilitySubscores {
  public static final String SERIALIZED_NAME_READING_TIME_SECONDS = "reading_time_seconds";
  @SerializedName(SERIALIZED_NAME_READING_TIME_SECONDS)
  private Integer readingTimeSeconds;

  public static final String SERIALIZED_NAME_FORCAST = "forcast";
  @SerializedName(SERIALIZED_NAME_FORCAST)
  private BigDecimal forcast;

  public static final String SERIALIZED_NAME_FLESCH = "flesch";
  @SerializedName(SERIALIZED_NAME_FLESCH)
  private BigDecimal flesch;

  public static final String SERIALIZED_NAME_SMOG = "smog";
  @SerializedName(SERIALIZED_NAME_SMOG)
  private BigDecimal smog;

  public static final String SERIALIZED_NAME_ARI = "ari";
  @SerializedName(SERIALIZED_NAME_ARI)
  private BigDecimal ari;

  public static final String SERIALIZED_NAME_LIX = "lix";
  @SerializedName(SERIALIZED_NAME_LIX)
  private BigDecimal lix;

  public static final String SERIALIZED_NAME_COLEMAN_LIAU = "coleman_liau";
  @SerializedName(SERIALIZED_NAME_COLEMAN_LIAU)
  private BigDecimal colemanLiau;

  public static final String SERIALIZED_NAME_KINCAID = "kincaid";
  @SerializedName(SERIALIZED_NAME_KINCAID)
  private BigDecimal kincaid;

  public static final String SERIALIZED_NAME_FOG = "fog";
  @SerializedName(SERIALIZED_NAME_FOG)
  private BigDecimal fog;

  public ScoreTextAPI200ResponseReadabilitySubscores() {
  }

  public ScoreTextAPI200ResponseReadabilitySubscores readingTimeSeconds(Integer readingTimeSeconds) {
    this.readingTimeSeconds = readingTimeSeconds;
    return this;
  }

  /**
   * Get readingTimeSeconds
   * @return readingTimeSeconds
   */
  @javax.annotation.Nullable
  public Integer getReadingTimeSeconds() {
    return readingTimeSeconds;
  }

  public void setReadingTimeSeconds(Integer readingTimeSeconds) {
    this.readingTimeSeconds = readingTimeSeconds;
  }


  public ScoreTextAPI200ResponseReadabilitySubscores forcast(BigDecimal forcast) {
    this.forcast = forcast;
    return this;
  }

  /**
   * Get forcast
   * @return forcast
   */
  @javax.annotation.Nullable
  public BigDecimal getForcast() {
    return forcast;
  }

  public void setForcast(BigDecimal forcast) {
    this.forcast = forcast;
  }


  public ScoreTextAPI200ResponseReadabilitySubscores flesch(BigDecimal flesch) {
    this.flesch = flesch;
    return this;
  }

  /**
   * Get flesch
   * @return flesch
   */
  @javax.annotation.Nullable
  public BigDecimal getFlesch() {
    return flesch;
  }

  public void setFlesch(BigDecimal flesch) {
    this.flesch = flesch;
  }


  public ScoreTextAPI200ResponseReadabilitySubscores smog(BigDecimal smog) {
    this.smog = smog;
    return this;
  }

  /**
   * Get smog
   * @return smog
   */
  @javax.annotation.Nullable
  public BigDecimal getSmog() {
    return smog;
  }

  public void setSmog(BigDecimal smog) {
    this.smog = smog;
  }


  public ScoreTextAPI200ResponseReadabilitySubscores ari(BigDecimal ari) {
    this.ari = ari;
    return this;
  }

  /**
   * Get ari
   * @return ari
   */
  @javax.annotation.Nullable
  public BigDecimal getAri() {
    return ari;
  }

  public void setAri(BigDecimal ari) {
    this.ari = ari;
  }


  public ScoreTextAPI200ResponseReadabilitySubscores lix(BigDecimal lix) {
    this.lix = lix;
    return this;
  }

  /**
   * Get lix
   * @return lix
   */
  @javax.annotation.Nullable
  public BigDecimal getLix() {
    return lix;
  }

  public void setLix(BigDecimal lix) {
    this.lix = lix;
  }


  public ScoreTextAPI200ResponseReadabilitySubscores colemanLiau(BigDecimal colemanLiau) {
    this.colemanLiau = colemanLiau;
    return this;
  }

  /**
   * Get colemanLiau
   * @return colemanLiau
   */
  @javax.annotation.Nullable
  public BigDecimal getColemanLiau() {
    return colemanLiau;
  }

  public void setColemanLiau(BigDecimal colemanLiau) {
    this.colemanLiau = colemanLiau;
  }


  public ScoreTextAPI200ResponseReadabilitySubscores kincaid(BigDecimal kincaid) {
    this.kincaid = kincaid;
    return this;
  }

  /**
   * Get kincaid
   * @return kincaid
   */
  @javax.annotation.Nullable
  public BigDecimal getKincaid() {
    return kincaid;
  }

  public void setKincaid(BigDecimal kincaid) {
    this.kincaid = kincaid;
  }


  public ScoreTextAPI200ResponseReadabilitySubscores fog(BigDecimal fog) {
    this.fog = fog;
    return this;
  }

  /**
   * Get fog
   * @return fog
   */
  @javax.annotation.Nullable
  public BigDecimal getFog() {
    return fog;
  }

  public void setFog(BigDecimal fog) {
    this.fog = fog;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ScoreTextAPI200ResponseReadabilitySubscores scoreTextAPI200ResponseReadabilitySubscores = (ScoreTextAPI200ResponseReadabilitySubscores) o;
    return Objects.equals(this.readingTimeSeconds, scoreTextAPI200ResponseReadabilitySubscores.readingTimeSeconds) &&
        Objects.equals(this.forcast, scoreTextAPI200ResponseReadabilitySubscores.forcast) &&
        Objects.equals(this.flesch, scoreTextAPI200ResponseReadabilitySubscores.flesch) &&
        Objects.equals(this.smog, scoreTextAPI200ResponseReadabilitySubscores.smog) &&
        Objects.equals(this.ari, scoreTextAPI200ResponseReadabilitySubscores.ari) &&
        Objects.equals(this.lix, scoreTextAPI200ResponseReadabilitySubscores.lix) &&
        Objects.equals(this.colemanLiau, scoreTextAPI200ResponseReadabilitySubscores.colemanLiau) &&
        Objects.equals(this.kincaid, scoreTextAPI200ResponseReadabilitySubscores.kincaid) &&
        Objects.equals(this.fog, scoreTextAPI200ResponseReadabilitySubscores.fog);
  }

  @Override
  public int hashCode() {
    return Objects.hash(readingTimeSeconds, forcast, flesch, smog, ari, lix, colemanLiau, kincaid, fog);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScoreTextAPI200ResponseReadabilitySubscores {\n");
    sb.append("    readingTimeSeconds: ").append(toIndentedString(readingTimeSeconds)).append("\n");
    sb.append("    forcast: ").append(toIndentedString(forcast)).append("\n");
    sb.append("    flesch: ").append(toIndentedString(flesch)).append("\n");
    sb.append("    smog: ").append(toIndentedString(smog)).append("\n");
    sb.append("    ari: ").append(toIndentedString(ari)).append("\n");
    sb.append("    lix: ").append(toIndentedString(lix)).append("\n");
    sb.append("    colemanLiau: ").append(toIndentedString(colemanLiau)).append("\n");
    sb.append("    kincaid: ").append(toIndentedString(kincaid)).append("\n");
    sb.append("    fog: ").append(toIndentedString(fog)).append("\n");
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
    openapiFields.add("reading_time_seconds");
    openapiFields.add("forcast");
    openapiFields.add("flesch");
    openapiFields.add("smog");
    openapiFields.add("ari");
    openapiFields.add("lix");
    openapiFields.add("coleman_liau");
    openapiFields.add("kincaid");
    openapiFields.add("fog");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to ScoreTextAPI200ResponseReadabilitySubscores
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ScoreTextAPI200ResponseReadabilitySubscores.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ScoreTextAPI200ResponseReadabilitySubscores is not found in the empty JSON string", ScoreTextAPI200ResponseReadabilitySubscores.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ScoreTextAPI200ResponseReadabilitySubscores.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ScoreTextAPI200ResponseReadabilitySubscores` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ScoreTextAPI200ResponseReadabilitySubscores.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ScoreTextAPI200ResponseReadabilitySubscores' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ScoreTextAPI200ResponseReadabilitySubscores> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ScoreTextAPI200ResponseReadabilitySubscores.class));

       return (TypeAdapter<T>) new TypeAdapter<ScoreTextAPI200ResponseReadabilitySubscores>() {
           @Override
           public void write(JsonWriter out, ScoreTextAPI200ResponseReadabilitySubscores value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ScoreTextAPI200ResponseReadabilitySubscores read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of ScoreTextAPI200ResponseReadabilitySubscores given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of ScoreTextAPI200ResponseReadabilitySubscores
   * @throws IOException if the JSON string is invalid with respect to ScoreTextAPI200ResponseReadabilitySubscores
   */
  public static ScoreTextAPI200ResponseReadabilitySubscores fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ScoreTextAPI200ResponseReadabilitySubscores.class);
  }

  /**
   * Convert an instance of ScoreTextAPI200ResponseReadabilitySubscores to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

