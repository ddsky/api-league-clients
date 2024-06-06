/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.2.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client.model;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class RetrieveRecipeInformation200ResponseCredits {
  
  @SerializedName("license")
  private String license = null;
  @SerializedName("text")
  private String text = null;
  @SerializedName("source_name")
  private String sourceName = null;
  @SerializedName("source_url")
  private String sourceUrl = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getLicense() {
    return license;
  }
  public void setLicense(String license) {
    this.license = license;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getText() {
    return text;
  }
  public void setText(String text) {
    this.text = text;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getSourceName() {
    return sourceName;
  }
  public void setSourceName(String sourceName) {
    this.sourceName = sourceName;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getSourceUrl() {
    return sourceUrl;
  }
  public void setSourceUrl(String sourceUrl) {
    this.sourceUrl = sourceUrl;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RetrieveRecipeInformation200ResponseCredits retrieveRecipeInformation200ResponseCredits = (RetrieveRecipeInformation200ResponseCredits) o;
    return (this.license == null ? retrieveRecipeInformation200ResponseCredits.license == null : this.license.equals(retrieveRecipeInformation200ResponseCredits.license)) &&
        (this.text == null ? retrieveRecipeInformation200ResponseCredits.text == null : this.text.equals(retrieveRecipeInformation200ResponseCredits.text)) &&
        (this.sourceName == null ? retrieveRecipeInformation200ResponseCredits.sourceName == null : this.sourceName.equals(retrieveRecipeInformation200ResponseCredits.sourceName)) &&
        (this.sourceUrl == null ? retrieveRecipeInformation200ResponseCredits.sourceUrl == null : this.sourceUrl.equals(retrieveRecipeInformation200ResponseCredits.sourceUrl));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.license == null ? 0: this.license.hashCode());
    result = 31 * result + (this.text == null ? 0: this.text.hashCode());
    result = 31 * result + (this.sourceName == null ? 0: this.sourceName.hashCode());
    result = 31 * result + (this.sourceUrl == null ? 0: this.sourceUrl.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RetrieveRecipeInformation200ResponseCredits {\n");
    
    sb.append("  license: ").append(license).append("\n");
    sb.append("  text: ").append(text).append("\n");
    sb.append("  sourceName: ").append(sourceName).append("\n");
    sb.append("  sourceUrl: ").append(sourceUrl).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
