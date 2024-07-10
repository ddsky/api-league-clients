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
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
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
 * DetectSentiment200ResponseDocument
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.5.0")
public class DetectSentiment200ResponseDocument {
  public static final String SERIALIZED_NAME_SENTIMENT = "sentiment";
  @SerializedName(SERIALIZED_NAME_SENTIMENT)
  private String sentiment;

  public static final String SERIALIZED_NAME_CONFIDENCE = "confidence";
  @SerializedName(SERIALIZED_NAME_CONFIDENCE)
  private Integer confidence;

  public static final String SERIALIZED_NAME_AVERAGE_CONFIDENCE = "average_confidence";
  @SerializedName(SERIALIZED_NAME_AVERAGE_CONFIDENCE)
  private Integer averageConfidence;

  public DetectSentiment200ResponseDocument() {
  }

  public DetectSentiment200ResponseDocument sentiment(String sentiment) {
    this.sentiment = sentiment;
    return this;
  }

   /**
   * Get sentiment
   * @return sentiment
  **/
  @javax.annotation.Nullable
  public String getSentiment() {
    return sentiment;
  }

  public void setSentiment(String sentiment) {
    this.sentiment = sentiment;
  }


  public DetectSentiment200ResponseDocument confidence(Integer confidence) {
    this.confidence = confidence;
    return this;
  }

   /**
   * Get confidence
   * @return confidence
  **/
  @javax.annotation.Nullable
  public Integer getConfidence() {
    return confidence;
  }

  public void setConfidence(Integer confidence) {
    this.confidence = confidence;
  }


  public DetectSentiment200ResponseDocument averageConfidence(Integer averageConfidence) {
    this.averageConfidence = averageConfidence;
    return this;
  }

   /**
   * Get averageConfidence
   * @return averageConfidence
  **/
  @javax.annotation.Nullable
  public Integer getAverageConfidence() {
    return averageConfidence;
  }

  public void setAverageConfidence(Integer averageConfidence) {
    this.averageConfidence = averageConfidence;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DetectSentiment200ResponseDocument detectSentiment200ResponseDocument = (DetectSentiment200ResponseDocument) o;
    return Objects.equals(this.sentiment, detectSentiment200ResponseDocument.sentiment) &&
        Objects.equals(this.confidence, detectSentiment200ResponseDocument.confidence) &&
        Objects.equals(this.averageConfidence, detectSentiment200ResponseDocument.averageConfidence);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(sentiment, confidence, averageConfidence);
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
    sb.append("class DetectSentiment200ResponseDocument {\n");
    sb.append("    sentiment: ").append(toIndentedString(sentiment)).append("\n");
    sb.append("    confidence: ").append(toIndentedString(confidence)).append("\n");
    sb.append("    averageConfidence: ").append(toIndentedString(averageConfidence)).append("\n");
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
    openapiFields.add("sentiment");
    openapiFields.add("confidence");
    openapiFields.add("average_confidence");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to DetectSentiment200ResponseDocument
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!DetectSentiment200ResponseDocument.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in DetectSentiment200ResponseDocument is not found in the empty JSON string", DetectSentiment200ResponseDocument.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!DetectSentiment200ResponseDocument.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `DetectSentiment200ResponseDocument` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("sentiment") != null && !jsonObj.get("sentiment").isJsonNull()) && !jsonObj.get("sentiment").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `sentiment` to be a primitive type in the JSON string but got `%s`", jsonObj.get("sentiment").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!DetectSentiment200ResponseDocument.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'DetectSentiment200ResponseDocument' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<DetectSentiment200ResponseDocument> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(DetectSentiment200ResponseDocument.class));

       return (TypeAdapter<T>) new TypeAdapter<DetectSentiment200ResponseDocument>() {
           @Override
           public void write(JsonWriter out, DetectSentiment200ResponseDocument value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public DetectSentiment200ResponseDocument read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of DetectSentiment200ResponseDocument given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of DetectSentiment200ResponseDocument
  * @throws IOException if the JSON string is invalid with respect to DetectSentiment200ResponseDocument
  */
  public static DetectSentiment200ResponseDocument fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, DetectSentiment200ResponseDocument.class);
  }

 /**
  * Convert an instance of DetectSentiment200ResponseDocument to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

