/**
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

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class RetrieveRecipeInformationAPI200ResponseCredits {
  
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
    RetrieveRecipeInformationAPI200ResponseCredits retrieveRecipeInformationAPI200ResponseCredits = (RetrieveRecipeInformationAPI200ResponseCredits) o;
    return (this.license == null ? retrieveRecipeInformationAPI200ResponseCredits.license == null : this.license.equals(retrieveRecipeInformationAPI200ResponseCredits.license)) &&
        (this.text == null ? retrieveRecipeInformationAPI200ResponseCredits.text == null : this.text.equals(retrieveRecipeInformationAPI200ResponseCredits.text)) &&
        (this.sourceName == null ? retrieveRecipeInformationAPI200ResponseCredits.sourceName == null : this.sourceName.equals(retrieveRecipeInformationAPI200ResponseCredits.sourceName)) &&
        (this.sourceUrl == null ? retrieveRecipeInformationAPI200ResponseCredits.sourceUrl == null : this.sourceUrl.equals(retrieveRecipeInformationAPI200ResponseCredits.sourceUrl));
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
    sb.append("class RetrieveRecipeInformationAPI200ResponseCredits {\n");
    
    sb.append("  license: ").append(license).append("\n");
    sb.append("  text: ").append(text).append("\n");
    sb.append("  sourceName: ").append(sourceName).append("\n");
    sb.append("  sourceUrl: ").append(sourceUrl).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
