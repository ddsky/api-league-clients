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
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
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
 * TopNewsAPI200ResponseTopNewsInnerNewsInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class TopNewsAPI200ResponseTopNewsInnerNewsInner {
  public static final String SERIALIZED_NAME_SUMMARY = "summary";
  @SerializedName(SERIALIZED_NAME_SUMMARY)
  private String summary;

  public static final String SERIALIZED_NAME_IMAGE = "image";
  @SerializedName(SERIALIZED_NAME_IMAGE)
  private String image;

  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private Integer id;

  public static final String SERIALIZED_NAME_TEXT = "text";
  @SerializedName(SERIALIZED_NAME_TEXT)
  private String text;

  public static final String SERIALIZED_NAME_TITLE = "title";
  @SerializedName(SERIALIZED_NAME_TITLE)
  private String title;

  public static final String SERIALIZED_NAME_PUBLISH_DATE = "publish_date";
  @SerializedName(SERIALIZED_NAME_PUBLISH_DATE)
  private String publishDate;

  public static final String SERIALIZED_NAME_URL = "url";
  @SerializedName(SERIALIZED_NAME_URL)
  private String url;

  public static final String SERIALIZED_NAME_AUTHORS = "authors";
  @SerializedName(SERIALIZED_NAME_AUTHORS)
  private List<String> authors = new ArrayList<>();

  public TopNewsAPI200ResponseTopNewsInnerNewsInner() {
  }

  public TopNewsAPI200ResponseTopNewsInnerNewsInner summary(String summary) {
    this.summary = summary;
    return this;
  }

  /**
   * Get summary
   * @return summary
   */
  @javax.annotation.Nullable
  public String getSummary() {
    return summary;
  }

  public void setSummary(String summary) {
    this.summary = summary;
  }


  public TopNewsAPI200ResponseTopNewsInnerNewsInner image(String image) {
    this.image = image;
    return this;
  }

  /**
   * Get image
   * @return image
   */
  @javax.annotation.Nullable
  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }


  public TopNewsAPI200ResponseTopNewsInnerNewsInner id(Integer id) {
    this.id = id;
    return this;
  }

  /**
   * Get id
   * @return id
   */
  @javax.annotation.Nullable
  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public TopNewsAPI200ResponseTopNewsInnerNewsInner text(String text) {
    this.text = text;
    return this;
  }

  /**
   * Get text
   * @return text
   */
  @javax.annotation.Nullable
  public String getText() {
    return text;
  }

  public void setText(String text) {
    this.text = text;
  }


  public TopNewsAPI200ResponseTopNewsInnerNewsInner title(String title) {
    this.title = title;
    return this;
  }

  /**
   * Get title
   * @return title
   */
  @javax.annotation.Nullable
  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }


  public TopNewsAPI200ResponseTopNewsInnerNewsInner publishDate(String publishDate) {
    this.publishDate = publishDate;
    return this;
  }

  /**
   * Get publishDate
   * @return publishDate
   */
  @javax.annotation.Nullable
  public String getPublishDate() {
    return publishDate;
  }

  public void setPublishDate(String publishDate) {
    this.publishDate = publishDate;
  }


  public TopNewsAPI200ResponseTopNewsInnerNewsInner url(String url) {
    this.url = url;
    return this;
  }

  /**
   * Get url
   * @return url
   */
  @javax.annotation.Nullable
  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }


  public TopNewsAPI200ResponseTopNewsInnerNewsInner authors(List<String> authors) {
    this.authors = authors;
    return this;
  }

  public TopNewsAPI200ResponseTopNewsInnerNewsInner addAuthorsItem(String authorsItem) {
    if (this.authors == null) {
      this.authors = new ArrayList<>();
    }
    this.authors.add(authorsItem);
    return this;
  }

  /**
   * Get authors
   * @return authors
   */
  @javax.annotation.Nullable
  public List<String> getAuthors() {
    return authors;
  }

  public void setAuthors(List<String> authors) {
    this.authors = authors;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    TopNewsAPI200ResponseTopNewsInnerNewsInner topNewsAPI200ResponseTopNewsInnerNewsInner = (TopNewsAPI200ResponseTopNewsInnerNewsInner) o;
    return Objects.equals(this.summary, topNewsAPI200ResponseTopNewsInnerNewsInner.summary) &&
        Objects.equals(this.image, topNewsAPI200ResponseTopNewsInnerNewsInner.image) &&
        Objects.equals(this.id, topNewsAPI200ResponseTopNewsInnerNewsInner.id) &&
        Objects.equals(this.text, topNewsAPI200ResponseTopNewsInnerNewsInner.text) &&
        Objects.equals(this.title, topNewsAPI200ResponseTopNewsInnerNewsInner.title) &&
        Objects.equals(this.publishDate, topNewsAPI200ResponseTopNewsInnerNewsInner.publishDate) &&
        Objects.equals(this.url, topNewsAPI200ResponseTopNewsInnerNewsInner.url) &&
        Objects.equals(this.authors, topNewsAPI200ResponseTopNewsInnerNewsInner.authors);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(summary, image, id, text, title, publishDate, url, authors);
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
    sb.append("class TopNewsAPI200ResponseTopNewsInnerNewsInner {\n");
    sb.append("    summary: ").append(toIndentedString(summary)).append("\n");
    sb.append("    image: ").append(toIndentedString(image)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    text: ").append(toIndentedString(text)).append("\n");
    sb.append("    title: ").append(toIndentedString(title)).append("\n");
    sb.append("    publishDate: ").append(toIndentedString(publishDate)).append("\n");
    sb.append("    url: ").append(toIndentedString(url)).append("\n");
    sb.append("    authors: ").append(toIndentedString(authors)).append("\n");
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
    openapiFields.add("summary");
    openapiFields.add("image");
    openapiFields.add("id");
    openapiFields.add("text");
    openapiFields.add("title");
    openapiFields.add("publish_date");
    openapiFields.add("url");
    openapiFields.add("authors");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to TopNewsAPI200ResponseTopNewsInnerNewsInner
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!TopNewsAPI200ResponseTopNewsInnerNewsInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in TopNewsAPI200ResponseTopNewsInnerNewsInner is not found in the empty JSON string", TopNewsAPI200ResponseTopNewsInnerNewsInner.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!TopNewsAPI200ResponseTopNewsInnerNewsInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `TopNewsAPI200ResponseTopNewsInnerNewsInner` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("summary") != null && !jsonObj.get("summary").isJsonNull()) && !jsonObj.get("summary").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `summary` to be a primitive type in the JSON string but got `%s`", jsonObj.get("summary").toString()));
      }
      if ((jsonObj.get("image") != null && !jsonObj.get("image").isJsonNull()) && !jsonObj.get("image").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `image` to be a primitive type in the JSON string but got `%s`", jsonObj.get("image").toString()));
      }
      if ((jsonObj.get("text") != null && !jsonObj.get("text").isJsonNull()) && !jsonObj.get("text").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `text` to be a primitive type in the JSON string but got `%s`", jsonObj.get("text").toString()));
      }
      if ((jsonObj.get("title") != null && !jsonObj.get("title").isJsonNull()) && !jsonObj.get("title").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `title` to be a primitive type in the JSON string but got `%s`", jsonObj.get("title").toString()));
      }
      if ((jsonObj.get("publish_date") != null && !jsonObj.get("publish_date").isJsonNull()) && !jsonObj.get("publish_date").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `publish_date` to be a primitive type in the JSON string but got `%s`", jsonObj.get("publish_date").toString()));
      }
      if ((jsonObj.get("url") != null && !jsonObj.get("url").isJsonNull()) && !jsonObj.get("url").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `url` to be a primitive type in the JSON string but got `%s`", jsonObj.get("url").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("authors") != null && !jsonObj.get("authors").isJsonNull() && !jsonObj.get("authors").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `authors` to be an array in the JSON string but got `%s`", jsonObj.get("authors").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!TopNewsAPI200ResponseTopNewsInnerNewsInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'TopNewsAPI200ResponseTopNewsInnerNewsInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<TopNewsAPI200ResponseTopNewsInnerNewsInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(TopNewsAPI200ResponseTopNewsInnerNewsInner.class));

       return (TypeAdapter<T>) new TypeAdapter<TopNewsAPI200ResponseTopNewsInnerNewsInner>() {
           @Override
           public void write(JsonWriter out, TopNewsAPI200ResponseTopNewsInnerNewsInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public TopNewsAPI200ResponseTopNewsInnerNewsInner read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of TopNewsAPI200ResponseTopNewsInnerNewsInner given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of TopNewsAPI200ResponseTopNewsInnerNewsInner
   * @throws IOException if the JSON string is invalid with respect to TopNewsAPI200ResponseTopNewsInnerNewsInner
   */
  public static TopNewsAPI200ResponseTopNewsInnerNewsInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, TopNewsAPI200ResponseTopNewsInnerNewsInner.class);
  }

  /**
   * Convert an instance of TopNewsAPI200ResponseTopNewsInnerNewsInner to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

