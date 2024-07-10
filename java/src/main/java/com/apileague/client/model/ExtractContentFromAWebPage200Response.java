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
 * ExtractContentFromAWebPage200Response
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.5.0")
public class ExtractContentFromAWebPage200Response {
  public static final String SERIALIZED_NAME_TITLE = "title";
  @SerializedName(SERIALIZED_NAME_TITLE)
  private String title;

  public static final String SERIALIZED_NAME_MAIN_TEXT = "main_text";
  @SerializedName(SERIALIZED_NAME_MAIN_TEXT)
  private String mainText;

  public static final String SERIALIZED_NAME_MAIN_HTML = "main_html";
  @SerializedName(SERIALIZED_NAME_MAIN_HTML)
  private String mainHtml;

  public static final String SERIALIZED_NAME_IMAGES = "images";
  @SerializedName(SERIALIZED_NAME_IMAGES)
  private List<String> images = new ArrayList<>();

  public ExtractContentFromAWebPage200Response() {
  }

  public ExtractContentFromAWebPage200Response title(String title) {
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


  public ExtractContentFromAWebPage200Response mainText(String mainText) {
    this.mainText = mainText;
    return this;
  }

   /**
   * Get mainText
   * @return mainText
  **/
  @javax.annotation.Nullable
  public String getMainText() {
    return mainText;
  }

  public void setMainText(String mainText) {
    this.mainText = mainText;
  }


  public ExtractContentFromAWebPage200Response mainHtml(String mainHtml) {
    this.mainHtml = mainHtml;
    return this;
  }

   /**
   * Get mainHtml
   * @return mainHtml
  **/
  @javax.annotation.Nullable
  public String getMainHtml() {
    return mainHtml;
  }

  public void setMainHtml(String mainHtml) {
    this.mainHtml = mainHtml;
  }


  public ExtractContentFromAWebPage200Response images(List<String> images) {
    this.images = images;
    return this;
  }

  public ExtractContentFromAWebPage200Response addImagesItem(String imagesItem) {
    if (this.images == null) {
      this.images = new ArrayList<>();
    }
    this.images.add(imagesItem);
    return this;
  }

   /**
   * Get images
   * @return images
  **/
  @javax.annotation.Nullable
  public List<String> getImages() {
    return images;
  }

  public void setImages(List<String> images) {
    this.images = images;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExtractContentFromAWebPage200Response extractContentFromAWebPage200Response = (ExtractContentFromAWebPage200Response) o;
    return Objects.equals(this.title, extractContentFromAWebPage200Response.title) &&
        Objects.equals(this.mainText, extractContentFromAWebPage200Response.mainText) &&
        Objects.equals(this.mainHtml, extractContentFromAWebPage200Response.mainHtml) &&
        Objects.equals(this.images, extractContentFromAWebPage200Response.images);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(title, mainText, mainHtml, images);
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
    sb.append("class ExtractContentFromAWebPage200Response {\n");
    sb.append("    title: ").append(toIndentedString(title)).append("\n");
    sb.append("    mainText: ").append(toIndentedString(mainText)).append("\n");
    sb.append("    mainHtml: ").append(toIndentedString(mainHtml)).append("\n");
    sb.append("    images: ").append(toIndentedString(images)).append("\n");
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
    openapiFields.add("main_text");
    openapiFields.add("main_html");
    openapiFields.add("images");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to ExtractContentFromAWebPage200Response
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ExtractContentFromAWebPage200Response.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ExtractContentFromAWebPage200Response is not found in the empty JSON string", ExtractContentFromAWebPage200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ExtractContentFromAWebPage200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ExtractContentFromAWebPage200Response` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("title") != null && !jsonObj.get("title").isJsonNull()) && !jsonObj.get("title").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `title` to be a primitive type in the JSON string but got `%s`", jsonObj.get("title").toString()));
      }
      if ((jsonObj.get("main_text") != null && !jsonObj.get("main_text").isJsonNull()) && !jsonObj.get("main_text").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `main_text` to be a primitive type in the JSON string but got `%s`", jsonObj.get("main_text").toString()));
      }
      if ((jsonObj.get("main_html") != null && !jsonObj.get("main_html").isJsonNull()) && !jsonObj.get("main_html").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `main_html` to be a primitive type in the JSON string but got `%s`", jsonObj.get("main_html").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("images") != null && !jsonObj.get("images").isJsonNull() && !jsonObj.get("images").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `images` to be an array in the JSON string but got `%s`", jsonObj.get("images").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ExtractContentFromAWebPage200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ExtractContentFromAWebPage200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ExtractContentFromAWebPage200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ExtractContentFromAWebPage200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<ExtractContentFromAWebPage200Response>() {
           @Override
           public void write(JsonWriter out, ExtractContentFromAWebPage200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ExtractContentFromAWebPage200Response read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of ExtractContentFromAWebPage200Response given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of ExtractContentFromAWebPage200Response
  * @throws IOException if the JSON string is invalid with respect to ExtractContentFromAWebPage200Response
  */
  public static ExtractContentFromAWebPage200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ExtractContentFromAWebPage200Response.class);
  }

 /**
  * Convert an instance of ExtractContentFromAWebPage200Response to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

