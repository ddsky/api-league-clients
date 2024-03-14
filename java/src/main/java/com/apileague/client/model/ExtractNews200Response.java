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
 * ExtractNews200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2024-03-14T17:14:09.298081600+01:00[Europe/Berlin]")
public class ExtractNews200Response {
  public static final String SERIALIZED_NAME_TITLE = "title";
  @SerializedName(SERIALIZED_NAME_TITLE)
  private String title;

  public static final String SERIALIZED_NAME_TEXT = "text";
  @SerializedName(SERIALIZED_NAME_TEXT)
  private String text;

  public static final String SERIALIZED_NAME_URL = "url";
  @SerializedName(SERIALIZED_NAME_URL)
  private String url;

  public static final String SERIALIZED_NAME_IMAGE = "image";
  @SerializedName(SERIALIZED_NAME_IMAGE)
  private String image;

  public static final String SERIALIZED_NAME_PUBLISH_DATE = "publish_date";
  @SerializedName(SERIALIZED_NAME_PUBLISH_DATE)
  private String publishDate;

  public static final String SERIALIZED_NAME_AUTHOR = "author";
  @SerializedName(SERIALIZED_NAME_AUTHOR)
  private String author;

  public static final String SERIALIZED_NAME_LANGUAGE = "language";
  @SerializedName(SERIALIZED_NAME_LANGUAGE)
  private String language;

  public static final String SERIALIZED_NAME_SOURCE_COUNTRY = "source_country";
  @SerializedName(SERIALIZED_NAME_SOURCE_COUNTRY)
  private String sourceCountry;

  public static final String SERIALIZED_NAME_SENTIMENT = "sentiment";
  @SerializedName(SERIALIZED_NAME_SENTIMENT)
  private BigDecimal sentiment;

  public ExtractNews200Response() {
  }

  public ExtractNews200Response title(String title) {
    this.title = title;
    return this;
  }

   /**
   * Get title
   * @return title
  **/
  @javax.annotation.Nullable
  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }


  public ExtractNews200Response text(String text) {
    this.text = text;
    return this;
  }

   /**
   * Get text
   * @return text
  **/
  @javax.annotation.Nullable
  public String getText() {
    return text;
  }

  public void setText(String text) {
    this.text = text;
  }


  public ExtractNews200Response url(String url) {
    this.url = url;
    return this;
  }

   /**
   * Get url
   * @return url
  **/
  @javax.annotation.Nullable
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }


  public ExtractNews200Response image(String image) {
    this.image = image;
    return this;
  }

   /**
   * Get image
   * @return image
  **/
  @javax.annotation.Nullable
  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }


  public ExtractNews200Response publishDate(String publishDate) {
    this.publishDate = publishDate;
    return this;
  }

   /**
   * Get publishDate
   * @return publishDate
  **/
  @javax.annotation.Nullable
  public String getPublishDate() {
    return publishDate;
  }

  public void setPublishDate(String publishDate) {
    this.publishDate = publishDate;
  }


  public ExtractNews200Response author(String author) {
    this.author = author;
    return this;
  }

   /**
   * Get author
   * @return author
  **/
  @javax.annotation.Nullable
  public String getAuthor() {
    return author;
  }

  public void setAuthor(String author) {
    this.author = author;
  }


  public ExtractNews200Response language(String language) {
    this.language = language;
    return this;
  }

   /**
   * Get language
   * @return language
  **/
  @javax.annotation.Nullable
  public String getLanguage() {
    return language;
  }

  public void setLanguage(String language) {
    this.language = language;
  }


  public ExtractNews200Response sourceCountry(String sourceCountry) {
    this.sourceCountry = sourceCountry;
    return this;
  }

   /**
   * Get sourceCountry
   * @return sourceCountry
  **/
  @javax.annotation.Nullable
  public String getSourceCountry() {
    return sourceCountry;
  }

  public void setSourceCountry(String sourceCountry) {
    this.sourceCountry = sourceCountry;
  }


  public ExtractNews200Response sentiment(BigDecimal sentiment) {
    this.sentiment = sentiment;
    return this;
  }

   /**
   * Get sentiment
   * @return sentiment
  **/
  @javax.annotation.Nullable
  public BigDecimal getSentiment() {
    return sentiment;
  }

  public void setSentiment(BigDecimal sentiment) {
    this.sentiment = sentiment;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExtractNews200Response extractNews200Response = (ExtractNews200Response) o;
    return Objects.equals(this.title, extractNews200Response.title) &&
        Objects.equals(this.text, extractNews200Response.text) &&
        Objects.equals(this.url, extractNews200Response.url) &&
        Objects.equals(this.image, extractNews200Response.image) &&
        Objects.equals(this.publishDate, extractNews200Response.publishDate) &&
        Objects.equals(this.author, extractNews200Response.author) &&
        Objects.equals(this.language, extractNews200Response.language) &&
        Objects.equals(this.sourceCountry, extractNews200Response.sourceCountry) &&
        Objects.equals(this.sentiment, extractNews200Response.sentiment);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(title, text, url, image, publishDate, author, language, sourceCountry, sentiment);
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
    sb.append("class ExtractNews200Response {\n");
    sb.append("    title: ").append(toIndentedString(title)).append("\n");
    sb.append("    text: ").append(toIndentedString(text)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
    sb.append("    image: ").append(toIndentedString(image)).append("\n");
    sb.append("    publishDate: ").append(toIndentedString(publishDate)).append("\n");
    sb.append("    author: ").append(toIndentedString(author)).append("\n");
    sb.append("    language: ").append(toIndentedString(language)).append("\n");
    sb.append("    sourceCountry: ").append(toIndentedString(sourceCountry)).append("\n");
    sb.append("    sentiment: ").append(toIndentedString(sentiment)).append("\n");
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
    openapiFields.add("title");
    openapiFields.add("text");
    openapiFields.add("url");
    openapiFields.add("image");
    openapiFields.add("publish_date");
    openapiFields.add("author");
    openapiFields.add("language");
    openapiFields.add("source_country");
    openapiFields.add("sentiment");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to ExtractNews200Response
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ExtractNews200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ExtractNews200Response is not found in the empty JSON string", ExtractNews200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ExtractNews200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ExtractNews200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("title") != null && !jsonObj.get("title").isJsonNull()) && !jsonObj.get("title").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `title` to be a primitive type in the JSON string but got `%s`", jsonObj.get("title").toString()));
      }
      if ((jsonObj.get("text") != null && !jsonObj.get("text").isJsonNull()) && !jsonObj.get("text").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `text` to be a primitive type in the JSON string but got `%s`", jsonObj.get("text").toString()));
      }
      if ((jsonObj.get("url") != null && !jsonObj.get("url").isJsonNull()) && !jsonObj.get("url").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `url` to be a primitive type in the JSON string but got `%s`", jsonObj.get("url").toString()));
      }
      if ((jsonObj.get("image") != null && !jsonObj.get("image").isJsonNull()) && !jsonObj.get("image").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `image` to be a primitive type in the JSON string but got `%s`", jsonObj.get("image").toString()));
      }
      if ((jsonObj.get("publish_date") != null && !jsonObj.get("publish_date").isJsonNull()) && !jsonObj.get("publish_date").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `publish_date` to be a primitive type in the JSON string but got `%s`", jsonObj.get("publish_date").toString()));
      }
      if ((jsonObj.get("author") != null && !jsonObj.get("author").isJsonNull()) && !jsonObj.get("author").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `author` to be a primitive type in the JSON string but got `%s`", jsonObj.get("author").toString()));
      }
      if ((jsonObj.get("language") != null && !jsonObj.get("language").isJsonNull()) && !jsonObj.get("language").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `language` to be a primitive type in the JSON string but got `%s`", jsonObj.get("language").toString()));
      }
      if ((jsonObj.get("source_country") != null && !jsonObj.get("source_country").isJsonNull()) && !jsonObj.get("source_country").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `source_country` to be a primitive type in the JSON string but got `%s`", jsonObj.get("source_country").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ExtractNews200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ExtractNews200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ExtractNews200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ExtractNews200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<ExtractNews200Response>() {
           @Override
           public void write(JsonWriter out, ExtractNews200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ExtractNews200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of ExtractNews200Response given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of ExtractNews200Response
  * @throws IOException if the JSON string is invalid with respect to ExtractNews200Response
  */
  public static ExtractNews200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ExtractNews200Response.class);
  }

 /**
  * Convert an instance of ExtractNews200Response to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

