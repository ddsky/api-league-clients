/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
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
 * ExtractDates200ResponseDatesInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-03-14T17:14:09.298081600+01:00[Europe/Berlin]")
public class ExtractDates200ResponseDatesInner {
  public static final String SERIALIZED_NAME_START_POSITION = "start_position";
  @SerializedName(SERIALIZED_NAME_START_POSITION)
  private Integer startPosition;

  public static final String SERIALIZED_NAME_DATE = "date";
  @SerializedName(SERIALIZED_NAME_DATE)
  private String date;

  public static final String SERIALIZED_NAME_NORMALIZED_DATE = "normalized_date";
  @SerializedName(SERIALIZED_NAME_NORMALIZED_DATE)
  private BigDecimal normalizedDate;

  public static final String SERIALIZED_NAME_TAG = "tag";
  @SerializedName(SERIALIZED_NAME_TAG)
  private String tag;

  public static final String SERIALIZED_NAME_END_POSITION = "end_position";
  @SerializedName(SERIALIZED_NAME_END_POSITION)
  private Integer endPosition;

  public ExtractDates200ResponseDatesInner() {
  }

  public ExtractDates200ResponseDatesInner startPosition(Integer startPosition) {
    this.startPosition = startPosition;
    return this;
  }

   /**
   * Get startPosition
   * @return startPosition
  **/
  @javax.annotation.Nullable
  public Integer getStartPosition() {
    return startPosition;
  }

  public void setStartPosition(Integer startPosition) {
    this.startPosition = startPosition;
  }


  public ExtractDates200ResponseDatesInner date(String date) {
    this.date = date;
    return this;
  }

   /**
   * Get date
   * @return date
  **/
  @javax.annotation.Nullable
  public String getDate() {
    return date;
  }

  public void setDate(String date) {
    this.date = date;
  }


  public ExtractDates200ResponseDatesInner normalizedDate(BigDecimal normalizedDate) {
    this.normalizedDate = normalizedDate;
    return this;
  }

   /**
   * Get normalizedDate
   * @return normalizedDate
  **/
  @javax.annotation.Nullable
  public BigDecimal getNormalizedDate() {
    return normalizedDate;
  }

  public void setNormalizedDate(BigDecimal normalizedDate) {
    this.normalizedDate = normalizedDate;
  }


  public ExtractDates200ResponseDatesInner tag(String tag) {
    this.tag = tag;
    return this;
  }

   /**
   * Get tag
   * @return tag
  **/
  @javax.annotation.Nullable
  public String getTag() {
    return tag;
  }

  public void setTag(String tag) {
    this.tag = tag;
  }


  public ExtractDates200ResponseDatesInner endPosition(Integer endPosition) {
    this.endPosition = endPosition;
    return this;
  }

   /**
   * Get endPosition
   * @return endPosition
  **/
  @javax.annotation.Nullable
  public Integer getEndPosition() {
    return endPosition;
  }

  public void setEndPosition(Integer endPosition) {
    this.endPosition = endPosition;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExtractDates200ResponseDatesInner extractDates200ResponseDatesInner = (ExtractDates200ResponseDatesInner) o;
    return Objects.equals(this.startPosition, extractDates200ResponseDatesInner.startPosition) &&
        Objects.equals(this.date, extractDates200ResponseDatesInner.date) &&
        Objects.equals(this.normalizedDate, extractDates200ResponseDatesInner.normalizedDate) &&
        Objects.equals(this.tag, extractDates200ResponseDatesInner.tag) &&
        Objects.equals(this.endPosition, extractDates200ResponseDatesInner.endPosition);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(startPosition, date, normalizedDate, tag, endPosition);
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
    sb.append("class ExtractDates200ResponseDatesInner {\n");
    sb.append("    startPosition: ").append(toIndentedString(startPosition)).append("\n");
    sb.append("    date: ").append(toIndentedString(date)).append("\n");
    sb.append("    normalizedDate: ").append(toIndentedString(normalizedDate)).append("\n");
    sb.append("    tag: ").append(toIndentedString(tag)).append("\n");
    sb.append("    endPosition: ").append(toIndentedString(endPosition)).append("\n");
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
    openapiFields.add("start_position");
    openapiFields.add("date");
    openapiFields.add("normalized_date");
    openapiFields.add("tag");
    openapiFields.add("end_position");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to ExtractDates200ResponseDatesInner
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ExtractDates200ResponseDatesInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ExtractDates200ResponseDatesInner is not found in the empty JSON string", ExtractDates200ResponseDatesInner.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ExtractDates200ResponseDatesInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ExtractDates200ResponseDatesInner` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("date") != null && !jsonObj.get("date").isJsonNull()) && !jsonObj.get("date").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `date` to be a primitive type in the JSON string but got `%s`", jsonObj.get("date").toString()));
      }
      if ((jsonObj.get("tag") != null && !jsonObj.get("tag").isJsonNull()) && !jsonObj.get("tag").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `tag` to be a primitive type in the JSON string but got `%s`", jsonObj.get("tag").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ExtractDates200ResponseDatesInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ExtractDates200ResponseDatesInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ExtractDates200ResponseDatesInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ExtractDates200ResponseDatesInner.class));

       return (TypeAdapter<T>) new TypeAdapter<ExtractDates200ResponseDatesInner>() {
           @Override
           public void write(JsonWriter out, ExtractDates200ResponseDatesInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ExtractDates200ResponseDatesInner read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of ExtractDates200ResponseDatesInner given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of ExtractDates200ResponseDatesInner
  * @throws IOException if the JSON string is invalid with respect to ExtractDates200ResponseDatesInner
  */
  public static ExtractDates200ResponseDatesInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ExtractDates200ResponseDatesInner.class);
  }

 /**
  * Convert an instance of ExtractDates200ResponseDatesInner to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

