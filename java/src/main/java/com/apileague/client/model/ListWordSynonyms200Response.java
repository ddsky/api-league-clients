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
 * ListWordSynonyms200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-03-08T10:10:25.367252+01:00[Europe/Berlin]")
public class ListWordSynonyms200Response {
  public static final String SERIALIZED_NAME_SYNONYMS = "synonyms";
  @SerializedName(SERIALIZED_NAME_SYNONYMS)
  private List<String> synonyms;

  public ListWordSynonyms200Response() {
  }

  public ListWordSynonyms200Response synonyms(List<String> synonyms) {
    this.synonyms = synonyms;
    return this;
  }

  public ListWordSynonyms200Response addSynonymsItem(String synonymsItem) {
    if (this.synonyms == null) {
      this.synonyms = new ArrayList<>();
    }
    this.synonyms.add(synonymsItem);
    return this;
  }

   /**
   * Get synonyms
   * @return synonyms
  **/
  @javax.annotation.Nullable
  public List<String> getSynonyms() {
    return synonyms;
  }

  public void setSynonyms(List<String> synonyms) {
    this.synonyms = synonyms;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ListWordSynonyms200Response listWordSynonyms200Response = (ListWordSynonyms200Response) o;
    return Objects.equals(this.synonyms, listWordSynonyms200Response.synonyms);
  }

  @Override
  public int hashCode() {
    return Objects.hash(synonyms);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ListWordSynonyms200Response {\n");
    sb.append("    synonyms: ").append(toIndentedString(synonyms)).append("\n");
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
    openapiFields.add("synonyms");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to ListWordSynonyms200Response
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ListWordSynonyms200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ListWordSynonyms200Response is not found in the empty JSON string", ListWordSynonyms200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ListWordSynonyms200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ListWordSynonyms200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // ensure the optional json data is an array if present
      if (jsonObj.get("synonyms") != null && !jsonObj.get("synonyms").isJsonNull() && !jsonObj.get("synonyms").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `synonyms` to be an array in the JSON string but got `%s`", jsonObj.get("synonyms").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ListWordSynonyms200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ListWordSynonyms200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ListWordSynonyms200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ListWordSynonyms200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<ListWordSynonyms200Response>() {
           @Override
           public void write(JsonWriter out, ListWordSynonyms200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ListWordSynonyms200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of ListWordSynonyms200Response given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of ListWordSynonyms200Response
  * @throws IOException if the JSON string is invalid with respect to ListWordSynonyms200Response
  */
  public static ListWordSynonyms200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ListWordSynonyms200Response.class);
  }

 /**
  * Convert an instance of ListWordSynonyms200Response to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

