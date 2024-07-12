/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.apileague.client.model;

import java.util.Objects;
import com.apileague.client.model.SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Arrays;

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
 * SearchRestaurants200ResponseRestaurantsInnerLocalHours
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.5.0")
public class SearchRestaurants200ResponseRestaurantsInnerLocalHours {
  public static final String SERIALIZED_NAME_OPERATIONAL = "operational";
  @SerializedName(SERIALIZED_NAME_OPERATIONAL)
  private SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational operational;

  public static final String SERIALIZED_NAME_DELIVERY = "delivery";
  @SerializedName(SERIALIZED_NAME_DELIVERY)
  private SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational delivery;

  public static final String SERIALIZED_NAME_PICKUP = "pickup";
  @SerializedName(SERIALIZED_NAME_PICKUP)
  private SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational pickup;

  public static final String SERIALIZED_NAME_DINE_IN = "dine_in";
  @SerializedName(SERIALIZED_NAME_DINE_IN)
  private SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational dineIn;

  public SearchRestaurants200ResponseRestaurantsInnerLocalHours() {
  }

  public SearchRestaurants200ResponseRestaurantsInnerLocalHours operational(SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational operational) {
    this.operational = operational;
    return this;
  }

   /**
   * Get operational
   * @return operational
  **/
  @javax.annotation.Nullable
  public SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational getOperational() {
    return operational;
  }

  public void setOperational(SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational operational) {
    this.operational = operational;
  }


  public SearchRestaurants200ResponseRestaurantsInnerLocalHours delivery(SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational delivery) {
    this.delivery = delivery;
    return this;
  }

   /**
   * Get delivery
   * @return delivery
  **/
  @javax.annotation.Nullable
  public SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational getDelivery() {
    return delivery;
  }

  public void setDelivery(SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational delivery) {
    this.delivery = delivery;
  }


  public SearchRestaurants200ResponseRestaurantsInnerLocalHours pickup(SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational pickup) {
    this.pickup = pickup;
    return this;
  }

   /**
   * Get pickup
   * @return pickup
  **/
  @javax.annotation.Nullable
  public SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational getPickup() {
    return pickup;
  }

  public void setPickup(SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational pickup) {
    this.pickup = pickup;
  }


  public SearchRestaurants200ResponseRestaurantsInnerLocalHours dineIn(SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational dineIn) {
    this.dineIn = dineIn;
    return this;
  }

   /**
   * Get dineIn
   * @return dineIn
  **/
  @javax.annotation.Nullable
  public SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational getDineIn() {
    return dineIn;
  }

  public void setDineIn(SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational dineIn) {
    this.dineIn = dineIn;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchRestaurants200ResponseRestaurantsInnerLocalHours searchRestaurants200ResponseRestaurantsInnerLocalHours = (SearchRestaurants200ResponseRestaurantsInnerLocalHours) o;
    return Objects.equals(this.operational, searchRestaurants200ResponseRestaurantsInnerLocalHours.operational) &&
        Objects.equals(this.delivery, searchRestaurants200ResponseRestaurantsInnerLocalHours.delivery) &&
        Objects.equals(this.pickup, searchRestaurants200ResponseRestaurantsInnerLocalHours.pickup) &&
        Objects.equals(this.dineIn, searchRestaurants200ResponseRestaurantsInnerLocalHours.dineIn);
  }

  @Override
  public int hashCode() {
    return Objects.hash(operational, delivery, pickup, dineIn);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchRestaurants200ResponseRestaurantsInnerLocalHours {\n");
    sb.append("    operational: ").append(toIndentedString(operational)).append("\n");
    sb.append("    delivery: ").append(toIndentedString(delivery)).append("\n");
    sb.append("    pickup: ").append(toIndentedString(pickup)).append("\n");
    sb.append("    dineIn: ").append(toIndentedString(dineIn)).append("\n");
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
    openapiFields.add("operational");
    openapiFields.add("delivery");
    openapiFields.add("pickup");
    openapiFields.add("dine_in");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to SearchRestaurants200ResponseRestaurantsInnerLocalHours
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!SearchRestaurants200ResponseRestaurantsInnerLocalHours.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SearchRestaurants200ResponseRestaurantsInnerLocalHours is not found in the empty JSON string", SearchRestaurants200ResponseRestaurantsInnerLocalHours.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!SearchRestaurants200ResponseRestaurantsInnerLocalHours.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SearchRestaurants200ResponseRestaurantsInnerLocalHours` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      // validate the optional field `operational`
      if (jsonObj.get("operational") != null && !jsonObj.get("operational").isJsonNull()) {
        SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.validateJsonElement(jsonObj.get("operational"));
      }
      // validate the optional field `delivery`
      if (jsonObj.get("delivery") != null && !jsonObj.get("delivery").isJsonNull()) {
        SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.validateJsonElement(jsonObj.get("delivery"));
      }
      // validate the optional field `pickup`
      if (jsonObj.get("pickup") != null && !jsonObj.get("pickup").isJsonNull()) {
        SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.validateJsonElement(jsonObj.get("pickup"));
      }
      // validate the optional field `dine_in`
      if (jsonObj.get("dine_in") != null && !jsonObj.get("dine_in").isJsonNull()) {
        SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.validateJsonElement(jsonObj.get("dine_in"));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SearchRestaurants200ResponseRestaurantsInnerLocalHours.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SearchRestaurants200ResponseRestaurantsInnerLocalHours' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SearchRestaurants200ResponseRestaurantsInnerLocalHours> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SearchRestaurants200ResponseRestaurantsInnerLocalHours.class));

       return (TypeAdapter<T>) new TypeAdapter<SearchRestaurants200ResponseRestaurantsInnerLocalHours>() {
           @Override
           public void write(JsonWriter out, SearchRestaurants200ResponseRestaurantsInnerLocalHours value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SearchRestaurants200ResponseRestaurantsInnerLocalHours read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of SearchRestaurants200ResponseRestaurantsInnerLocalHours given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of SearchRestaurants200ResponseRestaurantsInnerLocalHours
  * @throws IOException if the JSON string is invalid with respect to SearchRestaurants200ResponseRestaurantsInnerLocalHours
  */
  public static SearchRestaurants200ResponseRestaurantsInnerLocalHours fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SearchRestaurants200ResponseRestaurantsInnerLocalHours.class);
  }

 /**
  * Convert an instance of SearchRestaurants200ResponseRestaurantsInnerLocalHours to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

