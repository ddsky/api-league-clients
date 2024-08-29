/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.apileague.client.model;

import java.util.Objects;
import com.apileague.client.model.RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner;
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
 * RetrieveRecipeInformation200ResponseInstructionsInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class RetrieveRecipeInformation200ResponseInstructionsInner {
  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  public static final String SERIALIZED_NAME_STEPS = "steps";
  @SerializedName(SERIALIZED_NAME_STEPS)
  private List<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner> steps = new ArrayList<>();

  public RetrieveRecipeInformation200ResponseInstructionsInner() {
  }

  public RetrieveRecipeInformation200ResponseInstructionsInner name(String name) {
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


  public RetrieveRecipeInformation200ResponseInstructionsInner steps(List<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner> steps) {
    this.steps = steps;
    return this;
  }

  public RetrieveRecipeInformation200ResponseInstructionsInner addStepsItem(RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner stepsItem) {
    if (this.steps == null) {
      this.steps = new ArrayList<>();
    }
    this.steps.add(stepsItem);
    return this;
  }

  /**
   * Get steps
   * @return steps
   */
  @javax.annotation.Nullable
  public List<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner> getSteps() {
    return steps;
  }

  public void setSteps(List<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner> steps) {
    this.steps = steps;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RetrieveRecipeInformation200ResponseInstructionsInner retrieveRecipeInformation200ResponseInstructionsInner = (RetrieveRecipeInformation200ResponseInstructionsInner) o;
    return Objects.equals(this.name, retrieveRecipeInformation200ResponseInstructionsInner.name) &&
        Objects.equals(this.steps, retrieveRecipeInformation200ResponseInstructionsInner.steps);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, steps);
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
    sb.append("class RetrieveRecipeInformation200ResponseInstructionsInner {\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    steps: ").append(toIndentedString(steps)).append("\n");
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
    openapiFields.add("steps");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to RetrieveRecipeInformation200ResponseInstructionsInner
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!RetrieveRecipeInformation200ResponseInstructionsInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in RetrieveRecipeInformation200ResponseInstructionsInner is not found in the empty JSON string", RetrieveRecipeInformation200ResponseInstructionsInner.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!RetrieveRecipeInformation200ResponseInstructionsInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `RetrieveRecipeInformation200ResponseInstructionsInner` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if ((jsonObj.get("name") != null && !jsonObj.get("name").isJsonNull()) && !jsonObj.get("name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("name").toString()));
      }
      if (jsonObj.get("steps") != null && !jsonObj.get("steps").isJsonNull()) {
        JsonArray jsonArraysteps = jsonObj.getAsJsonArray("steps");
        if (jsonArraysteps != null) {
          // ensure the json data is an array
          if (!jsonObj.get("steps").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `steps` to be an array in the JSON string but got `%s`", jsonObj.get("steps").toString()));
          }

          // validate the optional field `steps` (array)
          for (int i = 0; i < jsonArraysteps.size(); i++) {
            RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.validateJsonElement(jsonArraysteps.get(i));
          };
        }
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!RetrieveRecipeInformation200ResponseInstructionsInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'RetrieveRecipeInformation200ResponseInstructionsInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<RetrieveRecipeInformation200ResponseInstructionsInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(RetrieveRecipeInformation200ResponseInstructionsInner.class));

       return (TypeAdapter<T>) new TypeAdapter<RetrieveRecipeInformation200ResponseInstructionsInner>() {
           @Override
           public void write(JsonWriter out, RetrieveRecipeInformation200ResponseInstructionsInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public RetrieveRecipeInformation200ResponseInstructionsInner read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of RetrieveRecipeInformation200ResponseInstructionsInner given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of RetrieveRecipeInformation200ResponseInstructionsInner
   * @throws IOException if the JSON string is invalid with respect to RetrieveRecipeInformation200ResponseInstructionsInner
   */
  public static RetrieveRecipeInformation200ResponseInstructionsInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, RetrieveRecipeInformation200ResponseInstructionsInner.class);
  }

  /**
   * Convert an instance of RetrieveRecipeInformation200ResponseInstructionsInner to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

