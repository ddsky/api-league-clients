/**
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

import com.apileague.client.model.RetrieveRecipeInformation200ResponseIngredientsInnerMeasures;
import java.math.BigDecimal;
import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class RetrieveRecipeInformation200ResponseIngredientsInner {
  
  @SerializedName("image")
  private String image = null;
  @SerializedName("name_clean")
  private String nameClean = null;
  @SerializedName("amount")
  private BigDecimal amount = null;
  @SerializedName("unit")
  private String unit = null;
  @SerializedName("measures")
  private RetrieveRecipeInformation200ResponseIngredientsInnerMeasures measures = null;
  @SerializedName("original")
  private String original = null;
  @SerializedName("meta")
  private List<String> meta = null;
  @SerializedName("original_name")
  private String originalName = null;
  @SerializedName("name")
  private String name = null;
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("aisle")
  private String aisle = null;
  @SerializedName("consistency")
  private String consistency = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getImage() {
    return image;
  }
  public void setImage(String image) {
    this.image = image;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getNameClean() {
    return nameClean;
  }
  public void setNameClean(String nameClean) {
    this.nameClean = nameClean;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public BigDecimal getAmount() {
    return amount;
  }
  public void setAmount(BigDecimal amount) {
    this.amount = amount;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getUnit() {
    return unit;
  }
  public void setUnit(String unit) {
    this.unit = unit;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public RetrieveRecipeInformation200ResponseIngredientsInnerMeasures getMeasures() {
    return measures;
  }
  public void setMeasures(RetrieveRecipeInformation200ResponseIngredientsInnerMeasures measures) {
    this.measures = measures;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getOriginal() {
    return original;
  }
  public void setOriginal(String original) {
    this.original = original;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getMeta() {
    return meta;
  }
  public void setMeta(List<String> meta) {
    this.meta = meta;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getOriginalName() {
    return originalName;
  }
  public void setOriginalName(String originalName) {
    this.originalName = originalName;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getAisle() {
    return aisle;
  }
  public void setAisle(String aisle) {
    this.aisle = aisle;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getConsistency() {
    return consistency;
  }
  public void setConsistency(String consistency) {
    this.consistency = consistency;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RetrieveRecipeInformation200ResponseIngredientsInner retrieveRecipeInformation200ResponseIngredientsInner = (RetrieveRecipeInformation200ResponseIngredientsInner) o;
    return (this.image == null ? retrieveRecipeInformation200ResponseIngredientsInner.image == null : this.image.equals(retrieveRecipeInformation200ResponseIngredientsInner.image)) &&
        (this.nameClean == null ? retrieveRecipeInformation200ResponseIngredientsInner.nameClean == null : this.nameClean.equals(retrieveRecipeInformation200ResponseIngredientsInner.nameClean)) &&
        (this.amount == null ? retrieveRecipeInformation200ResponseIngredientsInner.amount == null : this.amount.equals(retrieveRecipeInformation200ResponseIngredientsInner.amount)) &&
        (this.unit == null ? retrieveRecipeInformation200ResponseIngredientsInner.unit == null : this.unit.equals(retrieveRecipeInformation200ResponseIngredientsInner.unit)) &&
        (this.measures == null ? retrieveRecipeInformation200ResponseIngredientsInner.measures == null : this.measures.equals(retrieveRecipeInformation200ResponseIngredientsInner.measures)) &&
        (this.original == null ? retrieveRecipeInformation200ResponseIngredientsInner.original == null : this.original.equals(retrieveRecipeInformation200ResponseIngredientsInner.original)) &&
        (this.meta == null ? retrieveRecipeInformation200ResponseIngredientsInner.meta == null : this.meta.equals(retrieveRecipeInformation200ResponseIngredientsInner.meta)) &&
        (this.originalName == null ? retrieveRecipeInformation200ResponseIngredientsInner.originalName == null : this.originalName.equals(retrieveRecipeInformation200ResponseIngredientsInner.originalName)) &&
        (this.name == null ? retrieveRecipeInformation200ResponseIngredientsInner.name == null : this.name.equals(retrieveRecipeInformation200ResponseIngredientsInner.name)) &&
        (this.id == null ? retrieveRecipeInformation200ResponseIngredientsInner.id == null : this.id.equals(retrieveRecipeInformation200ResponseIngredientsInner.id)) &&
        (this.aisle == null ? retrieveRecipeInformation200ResponseIngredientsInner.aisle == null : this.aisle.equals(retrieveRecipeInformation200ResponseIngredientsInner.aisle)) &&
        (this.consistency == null ? retrieveRecipeInformation200ResponseIngredientsInner.consistency == null : this.consistency.equals(retrieveRecipeInformation200ResponseIngredientsInner.consistency));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    result = 31 * result + (this.nameClean == null ? 0: this.nameClean.hashCode());
    result = 31 * result + (this.amount == null ? 0: this.amount.hashCode());
    result = 31 * result + (this.unit == null ? 0: this.unit.hashCode());
    result = 31 * result + (this.measures == null ? 0: this.measures.hashCode());
    result = 31 * result + (this.original == null ? 0: this.original.hashCode());
    result = 31 * result + (this.meta == null ? 0: this.meta.hashCode());
    result = 31 * result + (this.originalName == null ? 0: this.originalName.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.aisle == null ? 0: this.aisle.hashCode());
    result = 31 * result + (this.consistency == null ? 0: this.consistency.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RetrieveRecipeInformation200ResponseIngredientsInner {\n");
    
    sb.append("  image: ").append(image).append("\n");
    sb.append("  nameClean: ").append(nameClean).append("\n");
    sb.append("  amount: ").append(amount).append("\n");
    sb.append("  unit: ").append(unit).append("\n");
    sb.append("  measures: ").append(measures).append("\n");
    sb.append("  original: ").append(original).append("\n");
    sb.append("  meta: ").append(meta).append("\n");
    sb.append("  originalName: ").append(originalName).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  aisle: ").append(aisle).append("\n");
    sb.append("  consistency: ").append(consistency).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
