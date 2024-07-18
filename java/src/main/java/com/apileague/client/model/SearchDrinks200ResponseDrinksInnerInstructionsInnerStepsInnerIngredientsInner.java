/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.5.0
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
 * SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner {
  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_IMAGE = "image";
  @SerializedName(SERIALIZED_NAME_IMAGE)
  private String image;

  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private Integer id;

  public SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner() {
  }

  public SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Get name
   * @return name
   */
  @javax.annotation.Nullable
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner image(String image) {
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


  public SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner id(Integer id) {
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



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner searchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner = (SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner) o;
    return Objects.equals(this.name, searchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.name) &&
        Objects.equals(this.image, searchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.image) &&
        Objects.equals(this.id, searchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.id);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, image, id);
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
    sb.append("class SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner {\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    image: ").append(toIndentedString(image)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
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
    openapiFields.add("name");
    openapiFields.add("image");
    openapiFields.add("id");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner is not found in the empty JSON string", SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("name") != null && !jsonObj.get("name").isJsonNull()) && !jsonObj.get("name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("name").toString()));
      }
      if ((jsonObj.get("image") != null && !jsonObj.get("image").isJsonNull()) && !jsonObj.get("image").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `image` to be a primitive type in the JSON string but got `%s`", jsonObj.get("image").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.class));

       return (TypeAdapter<T>) new TypeAdapter<SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner>() {
           @Override
           public void write(JsonWriter out, SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner
   * @throws IOException if the JSON string is invalid with respect to SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner
   */
  public static SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.class);
  }

  /**
   * Convert an instance of SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}
