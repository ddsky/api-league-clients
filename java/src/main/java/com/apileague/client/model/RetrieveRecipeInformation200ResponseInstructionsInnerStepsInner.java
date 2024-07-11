/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.4.1
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.apileague.client.model;

import java.util.Objects;
import com.apileague.client.model.RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner;
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
 * RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.5.0")
public class RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner {
  public static final String SERIALIZED_NAME_NUMBER = "number";
  @SerializedName(SERIALIZED_NAME_NUMBER)
  private Integer number;

  public static final String SERIALIZED_NAME_INGREDIENTS = "ingredients";
  @SerializedName(SERIALIZED_NAME_INGREDIENTS)
  private List<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner> ingredients = new ArrayList<>();

  public static final String SERIALIZED_NAME_EQUIPMENT = "equipment";
  @SerializedName(SERIALIZED_NAME_EQUIPMENT)
  private List<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner> equipment = new ArrayList<>();

  public static final String SERIALIZED_NAME_STEP = "step";
  @SerializedName(SERIALIZED_NAME_STEP)
  private String step;

  public RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner() {
  }

  public RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner number(Integer number) {
    this.number = number;
    return this;
  }

   /**
   * Get number
   * @return number
  **/
  @javax.annotation.Nullable
  public Integer getNumber() {
    return number;
  }

  public void setNumber(Integer number) {
    this.number = number;
  }


  public RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner ingredients(List<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner> ingredients) {
    this.ingredients = ingredients;
    return this;
  }

  public RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner addIngredientsItem(RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner ingredientsItem) {
    if (this.ingredients == null) {
      this.ingredients = new ArrayList<>();
    }
    this.ingredients.add(ingredientsItem);
    return this;
  }

   /**
   * Get ingredients
   * @return ingredients
  **/
  @javax.annotation.Nullable
  public List<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner> getIngredients() {
    return ingredients;
  }

  public void setIngredients(List<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner> ingredients) {
    this.ingredients = ingredients;
  }


  public RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner equipment(List<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner> equipment) {
    this.equipment = equipment;
    return this;
  }

  public RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner addEquipmentItem(RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner equipmentItem) {
    if (this.equipment == null) {
      this.equipment = new ArrayList<>();
    }
    this.equipment.add(equipmentItem);
    return this;
  }

   /**
   * Get equipment
   * @return equipment
  **/
  @javax.annotation.Nullable
  public List<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner> getEquipment() {
    return equipment;
  }

  public void setEquipment(List<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner> equipment) {
    this.equipment = equipment;
  }


  public RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner step(String step) {
    this.step = step;
    return this;
  }

   /**
   * Get step
   * @return step
  **/
  @javax.annotation.Nullable
  public String getStep() {
    return step;
  }

  public void setStep(String step) {
    this.step = step;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner retrieveRecipeInformation200ResponseInstructionsInnerStepsInner = (RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner) o;
    return Objects.equals(this.number, retrieveRecipeInformation200ResponseInstructionsInnerStepsInner.number) &&
        Objects.equals(this.ingredients, retrieveRecipeInformation200ResponseInstructionsInnerStepsInner.ingredients) &&
        Objects.equals(this.equipment, retrieveRecipeInformation200ResponseInstructionsInnerStepsInner.equipment) &&
        Objects.equals(this.step, retrieveRecipeInformation200ResponseInstructionsInnerStepsInner.step);
  }

  private static <T> boolean equalsNullable(JsonNullable<T> a, JsonNullable<T> b) {
    return a == b || (a != null && b != null && a.isPresent() && b.isPresent() && Objects.deepEquals(a.get(), b.get()));
  }

  @Override
  public int hashCode() {
    return Objects.hash(number, ingredients, equipment, step);
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
    sb.append("class RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner {\n");
    sb.append("    number: ").append(toIndentedString(number)).append("\n");
    sb.append("    ingredients: ").append(toIndentedString(ingredients)).append("\n");
    sb.append("    equipment: ").append(toIndentedString(equipment)).append("\n");
    sb.append("    step: ").append(toIndentedString(step)).append("\n");
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
    openapiFields.add("number");
    openapiFields.add("ingredients");
    openapiFields.add("equipment");
    openapiFields.add("step");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Element and throws an exception if issues found
  *
  * @param jsonElement JSON Element
  * @throws IOException if the JSON Element is invalid with respect to RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner
  */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner is not found in the empty JSON string", RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (jsonObj.get("ingredients") != null && !jsonObj.get("ingredients").isJsonNull()) {
        JsonArray jsonArrayingredients = jsonObj.getAsJsonArray("ingredients");
        if (jsonArrayingredients != null) {
          // ensure the json data is an array
          if (!jsonObj.get("ingredients").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `ingredients` to be an array in the JSON string but got `%s`", jsonObj.get("ingredients").toString()));
          }

          // validate the optional field `ingredients` (array)
          for (int i = 0; i < jsonArrayingredients.size(); i++) {
            RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner.validateJsonElement(jsonArrayingredients.get(i));
          };
        }
      }
      if (jsonObj.get("equipment") != null && !jsonObj.get("equipment").isJsonNull()) {
        JsonArray jsonArrayequipment = jsonObj.getAsJsonArray("equipment");
        if (jsonArrayequipment != null) {
          // ensure the json data is an array
          if (!jsonObj.get("equipment").isJsonArray()) {
            throw new IllegalArgumentException(String.format("Expected the field `equipment` to be an array in the JSON string but got `%s`", jsonObj.get("equipment").toString()));
          }

          // validate the optional field `equipment` (array)
          for (int i = 0; i < jsonArrayequipment.size(); i++) {
            RetrieveRecipeInformation200ResponseInstructionsInnerStepsInnerIngredientsInner.validateJsonElement(jsonArrayequipment.get(i));
          };
        }
      }
      if ((jsonObj.get("step") != null && !jsonObj.get("step").isJsonNull()) && !jsonObj.get("step").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `step` to be a primitive type in the JSON string but got `%s`", jsonObj.get("step").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.class));

       return (TypeAdapter<T>) new TypeAdapter<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner>() {
           @Override
           public void write(JsonWriter out, RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner
  * @throws IOException if the JSON string is invalid with respect to RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner
  */
  public static RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.class);
  }

 /**
  * Convert an instance of RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

