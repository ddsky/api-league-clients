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
import com.apileague.client.model.ExtractDatesAPI200ResponseDatesInner;
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
 * ExtractDatesAPI200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class ExtractDatesAPI200Response {
  public static final String SERIALIZED_NAME_DATES = "dates";
  @SerializedName(SERIALIZED_NAME_DATES)
  private List<ExtractDatesAPI200ResponseDatesInner> dates = new ArrayList<>();

  public ExtractDatesAPI200Response() {
  }

  public ExtractDatesAPI200Response dates(List<ExtractDatesAPI200ResponseDatesInner> dates) {
    this.dates = dates;
    return this;
  }

  public ExtractDatesAPI200Response addDatesItem(ExtractDatesAPI200ResponseDatesInner datesItem) {
    if (this.dates == null) {
      this.dates = new ArrayList<>();
    }
    this.dates.add(datesItem);
    return this;
  }

  /**
   * Get dates
   * @return dates
   */
  @javax.annotation.Nullable
  public List<ExtractDatesAPI200ResponseDatesInner> getDates() {
    return dates;
  }

  public void setDates(List<ExtractDatesAPI200ResponseDatesInner> dates) {
    this.dates = dates;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExtractDatesAPI200Response extractDatesAPI200Response = (ExtractDatesAPI200Response) o;
    return Objects.equals(this.dates, extractDatesAPI200Response.dates);
  }

  @Override
  public int hashCode() {
    return Objects.hash(dates);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExtractDatesAPI200Response {\n");
    sb.append("    dates: ").append(toIndentedString(dates)).append("\n");
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
    openapiFields.add("dates");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to ExtractDatesAPI200Response
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ExtractDatesAPI200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ExtractDatesAPI200Response is not found in the empty JSON string", ExtractDatesAPI200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ExtractDatesAPI200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ExtractDatesAPI200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (jsonObj.get("dates") != null && !jsonObj.get("dates").isJsonNull()) {
        JsonArray jsonArraydates = jsonObj.getAsJsonArray("dates");
        if (jsonArraydates != null) {
          // ensure the json data is an array
          if (!jsonObj.get("dates").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `dates` to be an array in the JSON string but got `%s`", jsonObj.get("dates").toString()));
          }

          // validate the optional field `dates` (array)
          for (int i = 0; i < jsonArraydates.size(); i++) {
            ExtractDatesAPI200ResponseDatesInner.validateJsonElement(jsonArraydates.get(i));
          };
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ExtractDatesAPI200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ExtractDatesAPI200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ExtractDatesAPI200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ExtractDatesAPI200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<ExtractDatesAPI200Response>() {
           @Override
           public void write(JsonWriter out, ExtractDatesAPI200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ExtractDatesAPI200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of ExtractDatesAPI200Response given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of ExtractDatesAPI200Response
   * @throws IOException if the JSON string is invalid with respect to ExtractDatesAPI200Response
   */
  public static ExtractDatesAPI200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ExtractDatesAPI200Response.class);
  }

  /**
   * Convert an instance of ExtractDatesAPI200Response to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

