/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.3.0
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
 * SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.5.0")
public class SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
  public static final String SERIALIZED_NAME_SUNDAY = "sunday";
  @SerializedName(SERIALIZED_NAME_SUNDAY)
  private String sunday;

  public static final String SERIALIZED_NAME_SATURDAY = "saturday";
  @SerializedName(SERIALIZED_NAME_SATURDAY)
  private String saturday;

  public static final String SERIALIZED_NAME_TUESDAY = "tuesday";
  @SerializedName(SERIALIZED_NAME_TUESDAY)
  private String tuesday;

  public static final String SERIALIZED_NAME_THURSDAY = "thursday";
  @SerializedName(SERIALIZED_NAME_THURSDAY)
  private String thursday;

  public static final String SERIALIZED_NAME_FRIDAY = "friday";
  @SerializedName(SERIALIZED_NAME_FRIDAY)
  private String friday;

  public static final String SERIALIZED_NAME_WEDNESDAY = "wednesday";
  @SerializedName(SERIALIZED_NAME_WEDNESDAY)
  private String wednesday;

  public static final String SERIALIZED_NAME_MONDAY = "monday";
  @SerializedName(SERIALIZED_NAME_MONDAY)
  private String monday;

  public SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational() {
  }

  public SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational sunday(String sunday) {
    this.sunday = sunday;
    return this;
  }

   /**
   * Get sunday
   * @return sunday
  **/
  @javax.annotation.Nullable
  public String getSunday() {
    return sunday;
  }

  public void setSunday(String sunday) {
    this.sunday = sunday;
  }


  public SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational saturday(String saturday) {
    this.saturday = saturday;
    return this;
  }

   /**
   * Get saturday
   * @return saturday
  **/
  @javax.annotation.Nullable
  public String getSaturday() {
    return saturday;
  }

  public void setSaturday(String saturday) {
    this.saturday = saturday;
  }


  public SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational tuesday(String tuesday) {
    this.tuesday = tuesday;
    return this;
  }

   /**
   * Get tuesday
   * @return tuesday
  **/
  @javax.annotation.Nullable
  public String getTuesday() {
    return tuesday;
  }

  public void setTuesday(String tuesday) {
    this.tuesday = tuesday;
  }


  public SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational thursday(String thursday) {
    this.thursday = thursday;
    return this;
  }

   /**
   * Get thursday
   * @return thursday
  **/
  @javax.annotation.Nullable
  public String getThursday() {
    return thursday;
  }

  public void setThursday(String thursday) {
    this.thursday = thursday;
  }


  public SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational friday(String friday) {
    this.friday = friday;
    return this;
  }

   /**
   * Get friday
   * @return friday
  **/
  @javax.annotation.Nullable
  public String getFriday() {
    return friday;
  }

  public void setFriday(String friday) {
    this.friday = friday;
  }


  public SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational wednesday(String wednesday) {
    this.wednesday = wednesday;
    return this;
  }

   /**
   * Get wednesday
   * @return wednesday
  **/
  @javax.annotation.Nullable
  public String getWednesday() {
    return wednesday;
  }

  public void setWednesday(String wednesday) {
    this.wednesday = wednesday;
  }


  public SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational monday(String monday) {
    this.monday = monday;
    return this;
  }

   /**
   * Get monday
   * @return monday
  **/
  @javax.annotation.Nullable
  public String getMonday() {
    return monday;
  }

  public void setMonday(String monday) {
    this.monday = monday;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational = (SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) o;
    return Objects.equals(this.sunday, searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.sunday) &&
        Objects.equals(this.saturday, searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.saturday) &&
        Objects.equals(this.tuesday, searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.tuesday) &&
        Objects.equals(this.thursday, searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.thursday) &&
        Objects.equals(this.friday, searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.friday) &&
        Objects.equals(this.wednesday, searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.wednesday) &&
        Objects.equals(this.monday, searchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.monday);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(sunday, saturday, tuesday, thursday, friday, wednesday, monday);
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
    sb.append("class SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {\n");
    sb.append("    sunday: ").append(toIndentedString(sunday)).append("\n");
    sb.append("    saturday: ").append(toIndentedString(saturday)).append("\n");
    sb.append("    tuesday: ").append(toIndentedString(tuesday)).append("\n");
    sb.append("    thursday: ").append(toIndentedString(thursday)).append("\n");
    sb.append("    friday: ").append(toIndentedString(friday)).append("\n");
    sb.append("    wednesday: ").append(toIndentedString(wednesday)).append("\n");
    sb.append("    monday: ").append(toIndentedString(monday)).append("\n");
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
    openapiFields.add("sunday");
    openapiFields.add("saturday");
    openapiFields.add("tuesday");
    openapiFields.add("thursday");
    openapiFields.add("friday");
    openapiFields.add("wednesday");
    openapiFields.add("monday");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational is not found in the empty JSON string", SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("sunday") != null && !jsonObj.get("sunday").isJsonNull()) && !jsonObj.get("sunday").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `sunday` to be a primitive type in the JSON string but got `%s`", jsonObj.get("sunday").toString()));
      }
      if ((jsonObj.get("saturday") != null && !jsonObj.get("saturday").isJsonNull()) && !jsonObj.get("saturday").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `saturday` to be a primitive type in the JSON string but got `%s`", jsonObj.get("saturday").toString()));
      }
      if ((jsonObj.get("tuesday") != null && !jsonObj.get("tuesday").isJsonNull()) && !jsonObj.get("tuesday").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `tuesday` to be a primitive type in the JSON string but got `%s`", jsonObj.get("tuesday").toString()));
      }
      if ((jsonObj.get("thursday") != null && !jsonObj.get("thursday").isJsonNull()) && !jsonObj.get("thursday").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `thursday` to be a primitive type in the JSON string but got `%s`", jsonObj.get("thursday").toString()));
      }
      if ((jsonObj.get("friday") != null && !jsonObj.get("friday").isJsonNull()) && !jsonObj.get("friday").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `friday` to be a primitive type in the JSON string but got `%s`", jsonObj.get("friday").toString()));
      }
      if ((jsonObj.get("wednesday") != null && !jsonObj.get("wednesday").isJsonNull()) && !jsonObj.get("wednesday").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `wednesday` to be a primitive type in the JSON string but got `%s`", jsonObj.get("wednesday").toString()));
      }
      if ((jsonObj.get("monday") != null && !jsonObj.get("monday").isJsonNull()) && !jsonObj.get("monday").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `monday` to be a primitive type in the JSON string but got `%s`", jsonObj.get("monday").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.class));

       return (TypeAdapter<T>) new TypeAdapter<SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational>() {
           @Override
           public void write(JsonWriter out, SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
  * @throws IOException if the JSON string is invalid with respect to SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
  */
  public static SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.class);
  }

 /**
  * Convert an instance of SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

