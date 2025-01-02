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
import com.apileague.client.model.TopNewsAPI200ResponseTopNewsInnerNewsInner;
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
 * TopNewsAPI200ResponseTopNewsInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class TopNewsAPI200ResponseTopNewsInner {
  public static final String SERIALIZED_NAME_NEWS = "news";
  @SerializedName(SERIALIZED_NAME_NEWS)
  private List<TopNewsAPI200ResponseTopNewsInnerNewsInner> news = new ArrayList<>();

  public TopNewsAPI200ResponseTopNewsInner() {
  }

  public TopNewsAPI200ResponseTopNewsInner news(List<TopNewsAPI200ResponseTopNewsInnerNewsInner> news) {
    this.news = news;
    return this;
  }

  public TopNewsAPI200ResponseTopNewsInner addNewsItem(TopNewsAPI200ResponseTopNewsInnerNewsInner newsItem) {
    if (this.news == null) {
      this.news = new ArrayList<>();
    }
    this.news.add(newsItem);
    return this;
  }

  /**
   * Get news
   * @return news
   */
  @javax.annotation.Nullable
  public List<TopNewsAPI200ResponseTopNewsInnerNewsInner> getNews() {
    return news;
  }

  public void setNews(List<TopNewsAPI200ResponseTopNewsInnerNewsInner> news) {
    this.news = news;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    TopNewsAPI200ResponseTopNewsInner topNewsAPI200ResponseTopNewsInner = (TopNewsAPI200ResponseTopNewsInner) o;
    return Objects.equals(this.news, topNewsAPI200ResponseTopNewsInner.news);
  }

  @Override
  public int hashCode() {
    return Objects.hash(news);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class TopNewsAPI200ResponseTopNewsInner {\n");
    sb.append("    news: ").append(toIndentedString(news)).append("\n");
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
    openapiFields.add("news");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to TopNewsAPI200ResponseTopNewsInner
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!TopNewsAPI200ResponseTopNewsInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in TopNewsAPI200ResponseTopNewsInner is not found in the empty JSON string", TopNewsAPI200ResponseTopNewsInner.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!TopNewsAPI200ResponseTopNewsInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `TopNewsAPI200ResponseTopNewsInner` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (jsonObj.get("news") != null && !jsonObj.get("news").isJsonNull()) {
        JsonArray jsonArraynews = jsonObj.getAsJsonArray("news");
        if (jsonArraynews != null) {
          // ensure the json data is an array
          if (!jsonObj.get("news").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `news` to be an array in the JSON string but got `%s`", jsonObj.get("news").toString()));
          }

          // validate the optional field `news` (array)
          for (int i = 0; i < jsonArraynews.size(); i++) {
            TopNewsAPI200ResponseTopNewsInnerNewsInner.validateJsonElement(jsonArraynews.get(i));
          };
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!TopNewsAPI200ResponseTopNewsInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'TopNewsAPI200ResponseTopNewsInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<TopNewsAPI200ResponseTopNewsInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(TopNewsAPI200ResponseTopNewsInner.class));

       return (TypeAdapter<T>) new TypeAdapter<TopNewsAPI200ResponseTopNewsInner>() {
           @Override
           public void write(JsonWriter out, TopNewsAPI200ResponseTopNewsInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public TopNewsAPI200ResponseTopNewsInner read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of TopNewsAPI200ResponseTopNewsInner given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of TopNewsAPI200ResponseTopNewsInner
   * @throws IOException if the JSON string is invalid with respect to TopNewsAPI200ResponseTopNewsInner
   */
  public static TopNewsAPI200ResponseTopNewsInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, TopNewsAPI200ResponseTopNewsInner.class);
  }

  /**
   * Convert an instance of TopNewsAPI200ResponseTopNewsInner to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
