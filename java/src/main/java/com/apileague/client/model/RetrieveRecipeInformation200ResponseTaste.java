/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0.0
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
 * RetrieveRecipeInformation200ResponseTaste
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.5.0")
public class RetrieveRecipeInformation200ResponseTaste {
  public static final String SERIALIZED_NAME_FATTINESS = "fattiness";
  @SerializedName(SERIALIZED_NAME_FATTINESS)
  private BigDecimal fattiness;

  public static final String SERIALIZED_NAME_SPICINESS = "spiciness";
  @SerializedName(SERIALIZED_NAME_SPICINESS)
  private Integer spiciness;

  public static final String SERIALIZED_NAME_SALTINESS = "saltiness";
  @SerializedName(SERIALIZED_NAME_SALTINESS)
  private Integer saltiness;

  public static final String SERIALIZED_NAME_BITTERNESS = "bitterness";
  @SerializedName(SERIALIZED_NAME_BITTERNESS)
  private BigDecimal bitterness;

  public static final String SERIALIZED_NAME_SAVORINESS = "savoriness";
  @SerializedName(SERIALIZED_NAME_SAVORINESS)
  private BigDecimal savoriness;

  public static final String SERIALIZED_NAME_SWEETNESS = "sweetness";
  @SerializedName(SERIALIZED_NAME_SWEETNESS)
  private BigDecimal sweetness;

  public static final String SERIALIZED_NAME_SOURNESS = "sourness";
  @SerializedName(SERIALIZED_NAME_SOURNESS)
  private BigDecimal sourness;

  public RetrieveRecipeInformation200ResponseTaste() {
  }

  public RetrieveRecipeInformation200ResponseTaste fattiness(BigDecimal fattiness) {
    this.fattiness = fattiness;
    return this;
  }

   /**
   * Get fattiness
   * @return fattiness
  **/
  @javax.annotation.Nullable
  public BigDecimal getFattiness() {
    return fattiness;
  }

  public void setFattiness(BigDecimal fattiness) {
    this.fattiness = fattiness;
  }


  public RetrieveRecipeInformation200ResponseTaste spiciness(Integer spiciness) {
    this.spiciness = spiciness;
    return this;
  }

   /**
   * Get spiciness
   * @return spiciness
  **/
  @javax.annotation.Nullable
  public Integer getSpiciness() {
    return spiciness;
  }

  public void setSpiciness(Integer spiciness) {
    this.spiciness = spiciness;
  }


  public RetrieveRecipeInformation200ResponseTaste saltiness(Integer saltiness) {
    this.saltiness = saltiness;
    return this;
  }

   /**
   * Get saltiness
   * @return saltiness
  **/
  @javax.annotation.Nullable
  public Integer getSaltiness() {
    return saltiness;
  }

  public void setSaltiness(Integer saltiness) {
    this.saltiness = saltiness;
  }


  public RetrieveRecipeInformation200ResponseTaste bitterness(BigDecimal bitterness) {
    this.bitterness = bitterness;
    return this;
  }

   /**
   * Get bitterness
   * @return bitterness
  **/
  @javax.annotation.Nullable
  public BigDecimal getBitterness() {
    return bitterness;
  }

  public void setBitterness(BigDecimal bitterness) {
    this.bitterness = bitterness;
  }


  public RetrieveRecipeInformation200ResponseTaste savoriness(BigDecimal savoriness) {
    this.savoriness = savoriness;
    return this;
  }

   /**
   * Get savoriness
   * @return savoriness
  **/
  @javax.annotation.Nullable
  public BigDecimal getSavoriness() {
    return savoriness;
  }

  public void setSavoriness(BigDecimal savoriness) {
    this.savoriness = savoriness;
  }


  public RetrieveRecipeInformation200ResponseTaste sweetness(BigDecimal sweetness) {
    this.sweetness = sweetness;
    return this;
  }

   /**
   * Get sweetness
   * @return sweetness
  **/
  @javax.annotation.Nullable
  public BigDecimal getSweetness() {
    return sweetness;
  }

  public void setSweetness(BigDecimal sweetness) {
    this.sweetness = sweetness;
  }


  public RetrieveRecipeInformation200ResponseTaste sourness(BigDecimal sourness) {
    this.sourness = sourness;
    return this;
  }

   /**
   * Get sourness
   * @return sourness
  **/
  @javax.annotation.Nullable
  public BigDecimal getSourness() {
    return sourness;
  }

  public void setSourness(BigDecimal sourness) {
    this.sourness = sourness;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RetrieveRecipeInformation200ResponseTaste retrieveRecipeInformation200ResponseTaste = (RetrieveRecipeInformation200ResponseTaste) o;
    return Objects.equals(this.fattiness, retrieveRecipeInformation200ResponseTaste.fattiness) &&
        Objects.equals(this.spiciness, retrieveRecipeInformation200ResponseTaste.spiciness) &&
        Objects.equals(this.saltiness, retrieveRecipeInformation200ResponseTaste.saltiness) &&
        Objects.equals(this.bitterness, retrieveRecipeInformation200ResponseTaste.bitterness) &&
        Objects.equals(this.savoriness, retrieveRecipeInformation200ResponseTaste.savoriness) &&
        Objects.equals(this.sweetness, retrieveRecipeInformation200ResponseTaste.sweetness) &&
        Objects.equals(this.sourness, retrieveRecipeInformation200ResponseTaste.sourness);
  }

  @Override
  public int hashCode() {
    return Objects.hash(fattiness, spiciness, saltiness, bitterness, savoriness, sweetness, sourness);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RetrieveRecipeInformation200ResponseTaste {\n");
    sb.append("    fattiness: ").append(toIndentedString(fattiness)).append("\n");
    sb.append("    spiciness: ").append(toIndentedString(spiciness)).append("\n");
    sb.append("    saltiness: ").append(toIndentedString(saltiness)).append("\n");
    sb.append("    bitterness: ").append(toIndentedString(bitterness)).append("\n");
    sb.append("    savoriness: ").append(toIndentedString(savoriness)).append("\n");
    sb.append("    sweetness: ").append(toIndentedString(sweetness)).append("\n");
    sb.append("    sourness: ").append(toIndentedString(sourness)).append("\n");
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
    openapiFields.add("fattiness");
    openapiFields.add("spiciness");
    openapiFields.add("saltiness");
    openapiFields.add("bitterness");
    openapiFields.add("savoriness");
    openapiFields.add("sweetness");
    openapiFields.add("sourness");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to RetrieveRecipeInformation200ResponseTaste
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!RetrieveRecipeInformation200ResponseTaste.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in RetrieveRecipeInformation200ResponseTaste is not found in the empty JSON string", RetrieveRecipeInformation200ResponseTaste.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!RetrieveRecipeInformation200ResponseTaste.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `RetrieveRecipeInformation200ResponseTaste` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!RetrieveRecipeInformation200ResponseTaste.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'RetrieveRecipeInformation200ResponseTaste' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<RetrieveRecipeInformation200ResponseTaste> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(RetrieveRecipeInformation200ResponseTaste.class));

       return (TypeAdapter<T>) new TypeAdapter<RetrieveRecipeInformation200ResponseTaste>() {
           @Override
           public void write(JsonWriter out, RetrieveRecipeInformation200ResponseTaste value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public RetrieveRecipeInformation200ResponseTaste read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of RetrieveRecipeInformation200ResponseTaste given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of RetrieveRecipeInformation200ResponseTaste
  * @throws IOException if the JSON string is invalid with respect to RetrieveRecipeInformation200ResponseTaste
  */
  public static RetrieveRecipeInformation200ResponseTaste fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, RetrieveRecipeInformation200ResponseTaste.class);
  }

 /**
  * Convert an instance of RetrieveRecipeInformation200ResponseTaste to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

