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
 * RetrieveRecipeInformation200ResponseDietaryProperties
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.5.0")
public class RetrieveRecipeInformation200ResponseDietaryProperties {
  public static final String SERIALIZED_NAME_LOW_FODMAP = "low_fodmap";
  @SerializedName(SERIALIZED_NAME_LOW_FODMAP)
  private Boolean lowFodmap;

  public static final String SERIALIZED_NAME_VEGETARIAN = "vegetarian";
  @SerializedName(SERIALIZED_NAME_VEGETARIAN)
  private Boolean vegetarian;

  public static final String SERIALIZED_NAME_VEGAN = "vegan";
  @SerializedName(SERIALIZED_NAME_VEGAN)
  private Boolean vegan;

  public static final String SERIALIZED_NAME_GLUTEN_FREE = "gluten_free";
  @SerializedName(SERIALIZED_NAME_GLUTEN_FREE)
  private Boolean glutenFree;

  public static final String SERIALIZED_NAME_DAIRY_FREE = "dairy_free";
  @SerializedName(SERIALIZED_NAME_DAIRY_FREE)
  private Boolean dairyFree;

  public static final String SERIALIZED_NAME_GAPS = "gaps";
  @SerializedName(SERIALIZED_NAME_GAPS)
  private String gaps;

  public static final String SERIALIZED_NAME_DIETS = "diets";
  @SerializedName(SERIALIZED_NAME_DIETS)
  private List<String> diets = new ArrayList<>();

  public RetrieveRecipeInformation200ResponseDietaryProperties() {
  }

  public RetrieveRecipeInformation200ResponseDietaryProperties lowFodmap(Boolean lowFodmap) {
    this.lowFodmap = lowFodmap;
    return this;
  }

   /**
   * Get lowFodmap
   * @return lowFodmap
  **/
  @javax.annotation.Nullable
  public Boolean getLowFodmap() {
    return lowFodmap;
  }

  public void setLowFodmap(Boolean lowFodmap) {
    this.lowFodmap = lowFodmap;
  }


  public RetrieveRecipeInformation200ResponseDietaryProperties vegetarian(Boolean vegetarian) {
    this.vegetarian = vegetarian;
    return this;
  }

   /**
   * Get vegetarian
   * @return vegetarian
  **/
  @javax.annotation.Nullable
  public Boolean getVegetarian() {
    return vegetarian;
  }

  public void setVegetarian(Boolean vegetarian) {
    this.vegetarian = vegetarian;
  }


  public RetrieveRecipeInformation200ResponseDietaryProperties vegan(Boolean vegan) {
    this.vegan = vegan;
    return this;
  }

   /**
   * Get vegan
   * @return vegan
  **/
  @javax.annotation.Nullable
  public Boolean getVegan() {
    return vegan;
  }

  public void setVegan(Boolean vegan) {
    this.vegan = vegan;
  }


  public RetrieveRecipeInformation200ResponseDietaryProperties glutenFree(Boolean glutenFree) {
    this.glutenFree = glutenFree;
    return this;
  }

   /**
   * Get glutenFree
   * @return glutenFree
  **/
  @javax.annotation.Nullable
  public Boolean getGlutenFree() {
    return glutenFree;
  }

  public void setGlutenFree(Boolean glutenFree) {
    this.glutenFree = glutenFree;
  }


  public RetrieveRecipeInformation200ResponseDietaryProperties dairyFree(Boolean dairyFree) {
    this.dairyFree = dairyFree;
    return this;
  }

   /**
   * Get dairyFree
   * @return dairyFree
  **/
  @javax.annotation.Nullable
  public Boolean getDairyFree() {
    return dairyFree;
  }

  public void setDairyFree(Boolean dairyFree) {
    this.dairyFree = dairyFree;
  }


  public RetrieveRecipeInformation200ResponseDietaryProperties gaps(String gaps) {
    this.gaps = gaps;
    return this;
  }

   /**
   * Get gaps
   * @return gaps
  **/
  @javax.annotation.Nullable
  public String getGaps() {
    return gaps;
  }

  public void setGaps(String gaps) {
    this.gaps = gaps;
  }


  public RetrieveRecipeInformation200ResponseDietaryProperties diets(List<String> diets) {
    this.diets = diets;
    return this;
  }

  public RetrieveRecipeInformation200ResponseDietaryProperties addDietsItem(String dietsItem) {
    if (this.diets == null) {
      this.diets = new ArrayList<>();
    }
    this.diets.add(dietsItem);
    return this;
  }

   /**
   * Get diets
   * @return diets
  **/
  @javax.annotation.Nullable
  public List<String> getDiets() {
    return diets;
  }

  public void setDiets(List<String> diets) {
    this.diets = diets;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RetrieveRecipeInformation200ResponseDietaryProperties retrieveRecipeInformation200ResponseDietaryProperties = (RetrieveRecipeInformation200ResponseDietaryProperties) o;
    return Objects.equals(this.lowFodmap, retrieveRecipeInformation200ResponseDietaryProperties.lowFodmap) &&
        Objects.equals(this.vegetarian, retrieveRecipeInformation200ResponseDietaryProperties.vegetarian) &&
        Objects.equals(this.vegan, retrieveRecipeInformation200ResponseDietaryProperties.vegan) &&
        Objects.equals(this.glutenFree, retrieveRecipeInformation200ResponseDietaryProperties.glutenFree) &&
        Objects.equals(this.dairyFree, retrieveRecipeInformation200ResponseDietaryProperties.dairyFree) &&
        Objects.equals(this.gaps, retrieveRecipeInformation200ResponseDietaryProperties.gaps) &&
        Objects.equals(this.diets, retrieveRecipeInformation200ResponseDietaryProperties.diets);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(lowFodmap, vegetarian, vegan, glutenFree, dairyFree, gaps, diets);
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
    sb.append("class RetrieveRecipeInformation200ResponseDietaryProperties {\n");
    sb.append("    lowFodmap: ").append(toIndentedString(lowFodmap)).append("\n");
    sb.append("    vegetarian: ").append(toIndentedString(vegetarian)).append("\n");
    sb.append("    vegan: ").append(toIndentedString(vegan)).append("\n");
    sb.append("    glutenFree: ").append(toIndentedString(glutenFree)).append("\n");
    sb.append("    dairyFree: ").append(toIndentedString(dairyFree)).append("\n");
    sb.append("    gaps: ").append(toIndentedString(gaps)).append("\n");
    sb.append("    diets: ").append(toIndentedString(diets)).append("\n");
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
    openapiFields.add("low_fodmap");
    openapiFields.add("vegetarian");
    openapiFields.add("vegan");
    openapiFields.add("gluten_free");
    openapiFields.add("dairy_free");
    openapiFields.add("gaps");
    openapiFields.add("diets");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to RetrieveRecipeInformation200ResponseDietaryProperties
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!RetrieveRecipeInformation200ResponseDietaryProperties.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in RetrieveRecipeInformation200ResponseDietaryProperties is not found in the empty JSON string", RetrieveRecipeInformation200ResponseDietaryProperties.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!RetrieveRecipeInformation200ResponseDietaryProperties.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `RetrieveRecipeInformation200ResponseDietaryProperties` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("gaps") != null && !jsonObj.get("gaps").isJsonNull()) && !jsonObj.get("gaps").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `gaps` to be a primitive type in the JSON string but got `%s`", jsonObj.get("gaps").toString()));
      }
      // ensure the optional json data is an array if present
      if (jsonObj.get("diets") != null && !jsonObj.get("diets").isJsonNull() && !jsonObj.get("diets").isJsonArray()) {
        throw new IllegalArgumentException(String.format("Expected the field `diets` to be an array in the JSON string but got `%s`", jsonObj.get("diets").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!RetrieveRecipeInformation200ResponseDietaryProperties.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'RetrieveRecipeInformation200ResponseDietaryProperties' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<RetrieveRecipeInformation200ResponseDietaryProperties> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(RetrieveRecipeInformation200ResponseDietaryProperties.class));

       return (TypeAdapter<T>) new TypeAdapter<RetrieveRecipeInformation200ResponseDietaryProperties>() {
           @Override
           public void write(JsonWriter out, RetrieveRecipeInformation200ResponseDietaryProperties value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public RetrieveRecipeInformation200ResponseDietaryProperties read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of RetrieveRecipeInformation200ResponseDietaryProperties given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of RetrieveRecipeInformation200ResponseDietaryProperties
  * @throws IOException if the JSON string is invalid with respect to RetrieveRecipeInformation200ResponseDietaryProperties
  */
  public static RetrieveRecipeInformation200ResponseDietaryProperties fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, RetrieveRecipeInformation200ResponseDietaryProperties.class);
  }

 /**
  * Convert an instance of RetrieveRecipeInformation200ResponseDietaryProperties to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

